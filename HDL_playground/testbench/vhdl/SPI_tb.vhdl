
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SPI_tb is
end entity;

architecture sim of SPI_tb is

    constant DATA_WIDTH : integer := 32;
    constant ADDR_WIDTH : integer := 7;

    constant SYS_PERIOD : time := 10 ns;   -- 100 MHz
    constant SPI_PERIOD : time := 100 ns;  -- 10 MHz
    constant CS_DELAY   : time := 300 ns;

    -- Clock and SPI
    signal clk      : std_logic := '0';
    signal spi_clk  : std_logic := '0';
    signal spi_mosi : std_logic := '0';
    signal spi_ncs  : std_logic := '1';
    signal spi_miso : std_logic;

    -- SPI decoded signals
    signal rw       : std_logic;
    signal addr     : std_logic_vector(ADDR_WIDTH-1 downto 0);
    signal data_out : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal update   : std_logic;

    -- Register bank
    signal reg_data : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal reg_0    : std_logic_vector(DATA_WIDTH-1 downto 0);

    -- Test monitoring
    signal update_count : integer := 0;

begin

    --------------------------------------------------
    -- 100 MHz system clock
    --------------------------------------------------
    clk <= not clk after SYS_PERIOD / 2;

    --------------------------------------------------
    -- SPI slave
    --------------------------------------------------
    SPI_DUT : entity work.Zector_SPI_IP
        generic map (
            DATA_WIDTH => DATA_WIDTH,
            ADDR_WIDTH => ADDR_WIDTH
        )
        port map (
            i_clk     => clk,
            i_spi_clk => spi_clk,
            i_MOSI    => spi_mosi,
            i_ncs     => spi_ncs,
            o_MISO    => spi_miso,

            o_RnW     => rw,
            o_addr    => addr,
            o_data    => data_out,
            i_data    => reg_data,
            o_update  => update
        );

    --------------------------------------------------
    -- Configuration register bank
    --------------------------------------------------
    CFG_DUT : entity work.cfg_registers
        generic map (
            DATA_WIDTH => DATA_WIDTH,
            ADDR_WIDTH => ADDR_WIDTH
        )
        port map (
            i_we     => not rw,
            i_clk    => clk,
            i_update => update,
            i_di     => data_out,
            i_addr   => addr,

            o_do     => reg_data,
            o_reg_0  => reg_0
        );

    --------------------------------------------------
    -- Count update pulses
    --------------------------------------------------
    update_monitor : process(clk)
    begin
        if rising_edge(clk) then
            if update = '1' then
                update_count <= update_count + 1;
            end if;
        end if;
    end process;

    --------------------------------------------------
    -- SPI master stimulus
    --------------------------------------------------
    stimulus : process

        variable read_back : std_logic_vector(DATA_WIDTH-1 downto 0);

        -- Transmit one SPI bit, Mode 0
        procedure spi_send_bit(
            constant bit_value : in std_logic
        ) is
        begin
            spi_mosi <= bit_value;

            wait for SPI_PERIOD / 2;
            spi_clk <= '1';

            wait for SPI_PERIOD / 2;
            spi_clk <= '0';
        end procedure;

        -- Transmit vector MSB first
        procedure spi_send_vector(
            constant value : in std_logic_vector
        ) is
        begin
            for i in value'range loop
                spi_send_bit(value(i));
            end loop;
        end procedure;

        --------------------------------------------------
        -- SPI write transaction
        --------------------------------------------------
        procedure spi_write(
            constant address    : in natural;
            constant data_value : in std_logic_vector(31 downto 0)
        ) is
        begin
            spi_clk <= '0';
            spi_ncs <= '0';

            wait for SPI_PERIOD;

            -- R/W = 0 means write
            spi_send_bit('0');

            -- 7-bit address
            spi_send_vector(
                std_logic_vector(to_unsigned(address, ADDR_WIDTH))
            );

            -- 32-bit data
            spi_send_vector(data_value);

            wait for SPI_PERIOD / 2;

            assert update = '0'
                report "UPDATE occurred before CS release"
                severity error;

            -- End transaction
            spi_ncs <= '1';

            -- Allow CDC and register write
            wait for CS_DELAY;

        end procedure;

        --------------------------------------------------
        -- SPI read transaction
        --------------------------------------------------
        procedure spi_read(
            constant address    : in natural;
            variable read_value : out std_logic_vector(31 downto 0)
        ) is
        begin
            spi_clk <= '0';
            spi_ncs <= '0';

            wait for SPI_PERIOD;

            -- R/W = 1 means read
            spi_send_bit('1');

            -- 7-bit address
            spi_send_vector(
                std_logic_vector(to_unsigned(address, ADDR_WIDTH))
            );

            -- Address has now been transmitted.
            -- The FPGA requests the register contents.

            -- Receive 32 bits MSB first.
            for i in DATA_WIDTH-1 downto 0 loop

                spi_mosi <= '0';

                -- SPI Mode 0: sample on rising edge
                wait for SPI_PERIOD / 2;
                spi_clk <= '1';

                -- Small delay for simulation settling
                wait for 1 ns;
                read_value(i) := spi_miso;

                -- Complete SPI period
                wait for SPI_PERIOD / 2 - 1 ns;
                spi_clk <= '0';

            end loop;

            -- End transaction
            spi_ncs <= '1';

            wait for CS_DELAY;

        end procedure;

    begin

        --------------------------------------------------
        -- Initial conditions
        --------------------------------------------------
        wait for 200 ns;

        assert unsigned(reg_0) = 4294967
            report "Initial register value incorrect"
            severity error;

        --------------------------------------------------
        -- TEST 1: Write register 0
        --------------------------------------------------
        report "TEST 1: Writing 0x12345678 to register 0";

        spi_write(0, x"12345678");

        assert reg_0 = x"12345678"
            report "TEST 1 FAILED: Register 0 incorrect"
            severity error;

        assert update_count = 1
            report "TEST 1 FAILED: Incorrect update count"
            severity error;

        report "TEST 1 PASSED";

        --------------------------------------------------
        -- TEST 2: Overwrite register 0
        --------------------------------------------------
        report "TEST 2: Writing 0xDEADBEEF to register 0";

        spi_write(0, x"DEADBEEF");

        assert reg_0 = x"DEADBEEF"
            report "TEST 2 FAILED: Register 0 incorrect"
            severity error;

        assert update_count = 2
            report "TEST 2 FAILED: Incorrect update count"
            severity error;

        report "TEST 2 PASSED";

        --------------------------------------------------
        -- TEST 3: Write to register 5
        --------------------------------------------------
        report "TEST 3: Writing 0xABCDEF12 to register 5";

        spi_write(5, x"ABCDEF12");

        assert reg_0 = x"DEADBEEF"
            report "TEST 3 FAILED: Register 0 changed"
            severity error;

        assert addr = std_logic_vector(to_unsigned(5, 7))
            report "TEST 3 FAILED: Incorrect SPI address"
            severity error;

        assert data_out = x"ABCDEF12"
            report "TEST 3 FAILED: Incorrect SPI data"
            severity error;

        assert update_count = 3
            report "TEST 3 FAILED: Incorrect update count"
            severity error;

        report "TEST 3 PASSED";

        --------------------------------------------------
        -- TEST 4: Read register 0
        --------------------------------------------------
        report "TEST 4: Reading register 0";

        spi_read(0, read_back);

        assert read_back = x"DEADBEEF"
            report "TEST 4 FAILED: Incorrect readback from register 0"
            severity error;

        assert rw = '1'
            report "TEST 4 FAILED: R/W bit incorrect"
            severity error;

        assert update_count = 4
            report "TEST 4 FAILED: Read update pulse missing"
            severity error;

        report "TEST 4 PASSED";

        --------------------------------------------------
        -- TEST 5: Read register 5
        --------------------------------------------------
        report "TEST 5: Reading register 5";

        spi_read(5, read_back);

        assert read_back = x"ABCDEF12"
            report "TEST 5 FAILED: Incorrect readback from register 5"
            severity error;

        assert update_count = 5
            report "TEST 5 FAILED: Read update pulse missing"
            severity error;

        report "TEST 5 PASSED";

        --------------------------------------------------
        -- TEST 6: Write then read same register
        --------------------------------------------------
        report "TEST 6: Write/read verification";

        spi_write(0, x"87654321");

        assert reg_0 = x"87654321"
            report "TEST 6 FAILED: Write incorrect"
            severity error;

        spi_read(0, read_back);

        assert read_back = x"87654321"
            report "TEST 6 FAILED: Readback incorrect"
            severity error;

        assert update_count = 7
            report "TEST 6 FAILED: Incorrect update count"
            severity error;

        report "TEST 6 PASSED";

        --------------------------------------------------
        -- TEST 7: Incomplete write transaction
        --------------------------------------------------
        report "TEST 7: Incomplete SPI transaction";

        spi_clk <= '0';
        spi_ncs <= '0';

        wait for SPI_PERIOD;

        -- Only 16 bits, rather than a complete
        -- 40-bit transaction.
        spi_send_vector(x"0012");

        spi_ncs <= '1';

        wait for CS_DELAY;

        assert update_count = 7
            report "TEST 7 FAILED: Incomplete transfer caused update"
            severity error;

        assert reg_0 = x"87654321"
            report "TEST 7 FAILED: Register 0 changed"
            severity error;

        report "TEST 7 PASSED";

        --------------------------------------------------
        -- TEST 8: No repeated updates
        --------------------------------------------------
        report "TEST 8: Check for repeated updates";

        wait for 2 us;

        assert update_count = 7
            report "TEST 8 FAILED: Additional update detected"
            severity error;

        report "TEST 8 PASSED";

        --------------------------------------------------
        -- Simulation completed
        --------------------------------------------------
        report "ALL SPI READ/WRITE TESTS PASSED"
            severity note;

        wait;

    end process;

end architecture;
