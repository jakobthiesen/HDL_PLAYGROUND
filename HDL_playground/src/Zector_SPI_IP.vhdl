library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Zector_SPI_IP is
    generic (
        DATA_WIDTH  : integer := 32;
        ADDR_WIDTH  : integer := 7
    );
    port (
        i_clk           : in    std_logic;
        i_spi_clk       : in    std_logic;
        i_MOSI          : in    std_logic;
        i_ncs           : in    std_logic;
        o_MISO          : out   std_logic;

        o_RnW           : out   std_logic;
        o_addr          : out   std_logic_vector(ADDR_WIDTH-1 downto 0);
        o_data          : out   std_logic_vector(DATA_WIDTH-1 downto 0);
        i_data          : in    std_logic_vector(DATA_WIDTH-1 downto 0);
        o_update        : out   std_logic
    );
    end entity;

architecture rtl of Zector_SPI_IP is
    signal rx_shift     : std_logic_vector(DATA_WIDTH+ADDR_WIDTH downto 0);
    signal tx_shift     : std_logic_vector(DATA_WIDTH-1 downto 0);
    constant BIT_COUNTER_SIZE : integer := 8;
    signal bit_counter  : unsigned(BIT_COUNTER_SIZE-1 downto 0); -- Supports up to 255 long data sequences.
    signal tx_counter   : unsigned(BIT_COUNTER_SIZE-1 downto 0);

    constant READ_STATE : std_logic := '1';
    constant WRITE_STATE: std_logic := '0';
    constant TX_START   : std_logic := '1';

    signal rw_reg       : std_logic := '0';
    signal addr_reg     : std_logic_vector(ADDR_WIDTH-1 downto 0) := (others => '0');
    signal data_reg     : std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');
    signal valid_toggle : std_logic := '0';
    signal tx_begin     : std_logic := '0';

    signal valid_meta   : std_logic := '0'; --extra "catch" delay to avoid meta-stability due to crossing of clock domains.
    signal valid_sync   : std_logic := '0'; --Synchronized valid to master clk.
    signal valid_prev   : std_logic := '0'; --Previous valid synched to master clk.

    signal spi_clk_meta : std_logic := '0';
    signal spi_clk_sync : std_logic := '0';
    signal spi_clk_prev : std_logic := '0';

    signal spi_ncs_meta : std_logic := '0';
    signal spi_ncs_sync : std_logic := '0';

    signal spi_pos_edge : std_logic := '0';
    signal spi_neg_edge : std_logic := '0';

begin 
    o_RnW <= rw_reg;
    o_addr <= addr_reg;
    o_data <= data_reg;

    o_update <= valid_sync xor valid_prev;              --Obe clock wise pulse on a valid toggle event. 
    spi_pos_edge <= spi_clk_sync and not spi_clk_prev;  --One clock wide pulse on a rising spi edge.
    spi_neg_edge <= not spi_clk_sync and spi_clk_prev;  --One clock wide pulse on a falling spi edge.


    PULSE_GEN : process(i_clk) 
    begin
        if rising_edge(i_clk) then
            if((i_ncs = '1') and rw_reg = WRITE_STATE) or (rw_reg = READ_STATE) then
                valid_meta <= valid_toggle;
                valid_sync <= valid_meta;
                valid_prev <= valid_sync;
            end if;
        end if;
    end process;


    CLK_SYNC : process(i_clk)   --Samples and synchronizes the spi clock to the system clock.
    begin
        if rising_edge(i_clk) then
            spi_clk_meta <= i_spi_clk;
            spi_clk_sync <= spi_clk_meta;
            spi_clk_prev <= spi_clk_sync;
        end if;
    end process;

    CS_SYNC : process(i_clk)
    begin
        if rising_edge(i_clk) then
            spi_ncs_meta <= i_ncs;
            spi_ncs_sync <= spi_ncs_meta;
        end if;
    end process;


    ADDR_AND_RX : process(i_clk, spi_ncs_sync)
    begin
        if spi_ncs_sync = '1' then
            --Always reset state once CS goes high.
            bit_counter <= to_unsigned(0, BIT_COUNTER_SIZE);
            rx_shift <= (others => '0');
            tx_begin <= '0';

        elsif rising_edge(i_clk) then
            if spi_pos_edge = '1' then
                --Shift incoming serial data
                if bit_counter < to_unsigned(DATA_WIDTH+ADDR_WIDTH+1, BIT_COUNTER_SIZE) then
                    rx_shift <= rx_shift(DATA_WIDTH+ADDR_WIDTH-1 downto 0) & i_MOSI; --This is in fact a bit shift operation in hardware. 
                    if bit_counter = to_unsigned(0, BIT_COUNTER_SIZE) then
                        rw_reg <= i_MOSI;
                    elsif bit_counter = to_unsigned(ADDR_WIDTH, BIT_COUNTER_SIZE) then
                        addr_reg <= rx_shift(ADDR_WIDTH-2 downto 0) & i_MOSI;
                        if(rw_reg = READ_STATE) then
                            valid_toggle <= not valid_toggle;
                            tx_begin <= TX_START;
                        end if;
                    elsif (bit_counter = to_unsigned(DATA_WIDTH+ADDR_WIDTH, BIT_COUNTER_SIZE)) and (rw_reg = WRITE_STATE) then
                        -- rw_reg <= rx_shift(DATA_WIDTH+ADDR_WIDTH-1);
                        -- addr_reg <= rx_shift(DATA_WIDTH+ADDR_WIDTH-2 downto DATA_WIDTH-1);
                        data_reg <= rx_shift(DATA_WIDTH-2 downto 0) & i_MOSI;
                        valid_toggle <= not valid_toggle;
                    end if;
                    bit_counter <= bit_counter+1;
                end if;
            end if;
        end if;
    end process;

    TX : process(i_clk, spi_ncs_sync)
    begin
        if spi_ncs_sync = '1' then
            tx_counter <= to_unsigned(0, BIT_COUNTER_SIZE);
            tx_shift <= (others => '0');
        elsif rising_edge(i_clk) then
            if spi_neg_edge = '1' then
                if tx_begin = TX_START then
                    if tx_counter = to_unsigned(0, BIT_COUNTER_SIZE) then
                        o_MISO <= i_data(DATA_WIDTH-1);
                        tx_shift <= i_data(DATA_WIDTH-2 downto 0) & '0';
                        tx_counter <= tx_counter +1;
                    elsif tx_counter < to_unsigned(DATA_WIDTH, BIT_COUNTER_SIZE) then
                        o_MISO <= tx_shift(DATA_WIDTH-1);
                        tx_shift <= tx_shift(DATA_WIDTH-2 downto 0) & '0';
                        tx_counter <= tx_counter +1;
                    end if;
                end if;
            end if;
        end if;
    end process;
end architecture;







