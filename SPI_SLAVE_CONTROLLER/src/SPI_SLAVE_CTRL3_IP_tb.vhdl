-- Self-checking RTL testbench for SPI_SLAVE_CTRL3_IP
-- VHDL-2008. SPI mode 0, MSB-first, 8-bit header (R/W + 7-bit address)
-- followed immediately by a 32-bit data phase. System clock: 100 MHz;
-- SPI clock: 10 MHz. A synchronous-read BRAM model is used.
--
-- The 10 phase trials deliberately align the final address SPI rising edge
-- at 0, 1, ... 9 ns after a rising edge of the 100 MHz system clock.
-- BRAM read-to-first-MISO-capture interval is measured on each transaction.
-- An optional propagation delay models BRAM clock-to-Q plus data routing.
--
-- NOTE: RTL simulation does NOT verify metastability, clock skew, or actual
-- FPGA setup/hold constraints. See routed nextpnr worst-case timing results.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.env.all;

entity SPI_SLAVE_CTRL3_IP_tb is
end entity;

architecture sim of SPI_SLAVE_CTRL3_IP_tb is
    constant SYS_PERIOD : time := 10 ns;      -- 100 MHz
    constant SPI_PERIOD : time := 100 ns;     -- 10 MHz
    constant SPI_HALF   : time := SPI_PERIOD / 2;
    constant ADDR_WIDTH : positive := 7;
    constant DATA_WIDTH : positive := 32;

    -- Change to 2 to test an extra BRAM output pipeline register.
    constant BRAM_READ_LATENCY : positive := 1;

    -- Optional functional timing stress model (non-synthesizable).
    -- 7 ns represents an illustrative worst-case BRAM clock-to-Q + routing
    -- budget. Set from the *current implementation's* nextpnr report.
    -- Set to 0 ns for ideal, zero-delay RTL behavior.
    constant BRAM_TO_MISO_PROP_DELAY : time := 7 ns;
    constant TX_SETUP_BUDGET         : time := 1 ns;

    signal sys_clk : std_logic := '0';
    signal spi_clk : std_logic := '0';
    signal mosi    : std_logic := '0';
    signal ncs     : std_logic := '1';
    signal miso    : std_logic;

    signal we      : std_logic;
    signal en      : std_logic;
    signal addr    : std_logic_vector(ADDR_WIDTH-1 downto 0);
    signal wr_data : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal rd_data : std_logic_vector(DATA_WIDTH-1 downto 0);

    type ram_t is array (0 to 2**ADDR_WIDTH-1) of
        std_logic_vector(DATA_WIDTH-1 downto 0);
    signal ram : ram_t := (others => (others => '0'));

    type read_pipe_t is array (natural range <>) of
        std_logic_vector(DATA_WIDTH-1 downto 0);
    signal read_pipe : read_pipe_t(0 to BRAM_READ_LATENCY-1) :=
        (others => (others => '0'));

    signal writes_seen : natural := 0;
    signal reads_seen  : natural := 0;
    -- Timestamp of the system-clock edge that accepted the last BRAM read.
    signal last_bram_read_edge : time := 0 ns;

begin
    sys_clk <= not sys_clk after SYS_PERIOD/2;

    DUT : entity work.SPI_SLAVE_CTRL3_IP
        generic map (
            DATA_WIDTH   => DATA_WIDTH,
            ADDR_WIDTH   => ADDR_WIDTH,
            HEADER_WIDTH => 1
        )
        port map (
            i_clk     => sys_clk,
            i_spi_clk => spi_clk,
            i_mosi    => mosi,
            i_ncs     => ncs,
            o_miso    => miso,
            o_we      => we,
            o_en      => en,
            o_addr    => addr,
            o_data    => wr_data,
            i_data    => rd_data
        );

    -- Model of BRAM port A, clocked at 100 MHz:
    -- * One accepted request per high en at rising_edge(sys_clk).
    -- * we='1': synchronous write.
    -- * we='0': synchronous read (registered output).
    -- * data holds when en='0' with BRAM_READ_LATENCY=1.
    BRAM_MODEL : process(sys_clk)
        variable index : natural;
    begin
        if rising_edge(sys_clk) then
            for k in BRAM_READ_LATENCY-1 downto 1 loop
                read_pipe(k) <= read_pipe(k-1);
            end loop;

            if en = '1' then
                assert not is_x(addr)
                    report "BRAM was enabled with an unknown address"
                    severity failure;
                index := to_integer(unsigned(addr));

                if we = '1' then
                    assert not is_x(wr_data)
                        report "BRAM write has unknown data"
                        severity failure;
                    ram(index) <= wr_data;
                    writes_seen <= writes_seen + 1;
                elsif we = '0' then
                    read_pipe(0) <= ram(index);
                    reads_seen <= reads_seen + 1;
                    last_bram_read_edge <= now;
                else
                    assert false report "BRAM WE is not 0 or 1"
                        severity failure;
                end if;
            end if;
        end if;
    end process;

    -- Model propagation from registered BRAM output to the TX input.
    -- Delayed transport assignment makes the first-bit check sensitive
    -- to insufficient time between the BRAM read and SPI falling edge.
    rd_data <= transport read_pipe(BRAM_READ_LATENCY-1)
               after BRAM_TO_MISO_PROP_DELAY;

    STIMULUS : process
        variable captured   : std_logic;
        variable expected_w : natural := 0;
        variable expected_r : natural := 0;
        variable wr_value   : std_logic_vector(DATA_WIDTH-1 downto 0);
        variable test_addr  : natural;
        variable min_window : time := SPI_PERIOD;
        variable max_window : time := 0 ns;

        -- Drives MOSI before the rising edge and samples MISO 1 ns after it.
        -- The DUT updates MISO on falling SPI edges (mode 0).
        procedure clock_spi_bit(
            constant mosi_bit : in std_logic;
            variable miso_bit : out std_logic
        ) is
        begin
            assert spi_clk = '0'
                report "SPI clock must be idle low at start of bit"
                severity failure;
            mosi <= mosi_bit;
            wait for SPI_HALF;
            spi_clk <= '1';
            wait for 1 ns;
            miso_bit := miso;
            wait for SPI_HALF - 1 ns;
            spi_clk <= '0';
            wait for 0 ns;  -- Allow falling edge to update before next bit.
        end procedure;

        procedure select_slave is
        begin
            assert spi_clk = '0' severity failure;
            ncs <= '0';
            -- With 50 ns until SPI rising edge, 10+50 = 60 ns;
            -- all SPI rising/falling edges therefore preserve the exact
            -- phase offset relative to the 10 ns system clock.
            wait for 10 ns;
        end procedure;

        procedure deselect_slave is
        begin
            assert spi_clk = '0' severity failure;
            wait for 10 ns;
            ncs <= '1';
            mosi <= '0';
            wait for 100 ns; -- Allow any pending toggle CDC / BRAM request to settle
        end procedure;

        procedure send_header(
            constant is_read : in boolean;
            constant a       : in natural
        ) is
            variable header : std_logic_vector(7 downto 0);
            variable unused : std_logic;
        begin
            assert a < 2**ADDR_WIDTH severity failure;
            header := '0' & std_logic_vector(to_unsigned(a, ADDR_WIDTH));
            if is_read then
                header(7) := '1';
            end if;
            for i in 7 downto 0 loop
                clock_spi_bit(header(i), unused);
            end loop;
        end procedure;

        procedure check_counts(
            constant want_w : in natural;
            constant want_r : in natural;
            constant location_text : in string
        ) is
        begin
            assert writes_seen = want_w
                report location_text & ": expected " & natural'image(want_w) &
                    " BRAM writes, saw " & natural'image(writes_seen)
                severity failure;
            assert reads_seen = want_r
                report location_text & ": expected " & natural'image(want_r) &
                    " BRAM reads, saw " & natural'image(reads_seen)
                severity failure;
        end procedure;

        procedure do_write(
            constant a : in natural;
            constant d : in std_logic_vector(DATA_WIDTH-1 downto 0)
        ) is
            variable unused : std_logic;
        begin
            select_slave;
            send_header(false, a);
            for i in DATA_WIDTH-1 downto 0 loop
                clock_spi_bit(d(i), unused);
            end loop;
            deselect_slave;
            expected_w := expected_w + 1;
            check_counts(expected_w, expected_r, "WRITE addr=" & natural'image(a));
        end procedure;

        procedure do_read(
            constant a : in natural;
            constant d : in std_logic_vector(DATA_WIDTH-1 downto 0);
            constant phase_ns : in integer := -1
        ) is
            variable first_bit        : std_logic;
            variable result           : std_logic_vector(DATA_WIDTH-1 downto 0);
            variable first_tx_edge    : time;
            variable bram_ready_edge  : time;
            variable available_window : time;
        begin
            select_slave;
            send_header(true, a);

            -- send_header ends at the 8th falling SPI edge. This is the
            -- edge on which the DUT loads the first MISO bit into its TX FF.
            first_tx_edge := now;

            -- Resolve the falling-edge TX FF and readback signal updates
            -- with delta cycles, without changing the 10 MHz SPI waveform.
            wait for 0 ns;
            wait for 0 ns;
            first_bit := miso;
            assert first_bit = d(DATA_WIDTH-1)
                report "First MISO bit not ready after header: addr=" &
                    natural'image(a) & ", phase=" & integer'image(phase_ns) &
                    " ns, expected " &
                    std_logic'image(d(DATA_WIDTH-1)) & ", got " &
                    std_logic'image(first_bit)
                severity failure;
            assert reads_seen = expected_r + 1
                report "BRAM read not completed before first MISO bit at address " &
                    natural'image(a) & ", phase=" & integer'image(phase_ns)
                severity failure;

            -- For latency=1, read data registers update on the accepted
            -- BRAM read edge. For latency=2, add one 100 MHz clock cycle.
            bram_ready_edge := last_bram_read_edge +
                (BRAM_READ_LATENCY-1) * SYS_PERIOD;

            assert first_tx_edge > bram_ready_edge
                report "BRAM output not ready before first SPI falling edge" &
                    " (phase=" & integer'image(phase_ns) & ")"
                severity failure;

            available_window := first_tx_edge - bram_ready_edge;
            assert available_window >= BRAM_TO_MISO_PROP_DELAY + TX_SETUP_BUDGET
                report "BRAM-to-TX timing budget exceeded: phase=" &
                    integer'image(phase_ns) &
                    ", available=" & time'image(available_window) &
                    ", required=" &
                    time'image(BRAM_TO_MISO_PROP_DELAY + TX_SETUP_BUDGET)
                severity failure;

            if available_window < min_window then
                min_window := available_window;
            end if;
            if available_window > max_window then
                max_window := available_window;
            end if;
            if phase_ns >= 0 then
                report "PHASE " & integer'image(phase_ns) &
                    " ns: BRAM read to first TX falling edge = " &
                    time'image(available_window) & ", residual margin = " &
                    time'image(available_window -
                               BRAM_TO_MISO_PROP_DELAY - TX_SETUP_BUDGET)
                    severity note;
            end if;

            -- Data starts on rising edge 9, immediately after header.
            for i in DATA_WIDTH-1 downto 0 loop
                clock_spi_bit('0', captured);
                result(i) := captured;
                assert captured = d(i)
                    report "READ bit mismatch: address=" & natural'image(a) &
                        " bit=" & integer'image(i) &
                        " expected=" & std_logic'image(d(i)) &
                        " received=" & std_logic'image(captured)
                    severity failure;
            end loop;
            deselect_slave;
            expected_r := expected_r + 1;
            check_counts(expected_w, expected_r, "READ addr=" & natural'image(a));
            report "PASS: addr=" & natural'image(a) &
                " data=0x" & to_hstring(result) severity note;
        end procedure;

    begin
        report "Starting 100 MHz system / 10 MHz SPI self-checking test" severity note;
        wait for 120 ns;

        -- Initialize known values, verify readback and address decoding.
        do_write(0,   x"A5C31F09");
        do_read (0,   x"A5C31F09");
        do_write(1,   x"01234567");
        do_read (1,   x"01234567");
        do_write(53,  x"DEADBEEF");
        do_read (53,  x"DEADBEEF");
        do_write(127, x"80000001");
        do_read (127, x"80000001");
        -- Check that writing one address did not overwrite the others.
        do_read (0,   x"A5C31F09");
        do_read (1,   x"01234567");

        -- Sweep each of the ten relative phase offsets independently.
        -- Align *each read* to a system-clock edge: the first SPI rising
        -- edge is then exactly phase ns from a system rising edge.
        -- This avoids phase drift from preceding write-transaction overhead.
        for phase in 0 to 9 loop
            test_addr := 8 + phase;
            wr_value := std_logic_vector(to_unsigned(phase, 32)) xor x"96F03C5A";
            do_write(test_addr, wr_value);

            wait until rising_edge(sys_clk);
            wait for phase * 1 ns;
            report "Starting phase trial " & integer'image(phase) & " ns"
                severity note;
            do_read(test_addr, wr_value, phase);
        end loop;

        -- Overwrite an address, verify it changes and that all-zero works.
        do_write(53, x"00000000");
        do_read (53, x"00000000");
        do_write(53, x"FFFFFFFF");
        do_read (53, x"FFFFFFFF");

        -- Abort an incomplete header. No read or write should occur.
        select_slave;
        for i in 7 downto 1 loop
            clock_spi_bit('0', captured);
        end loop;
        deselect_slave;
        check_counts(expected_w, expected_r, "Aborted header");

        -- Abort a write with fewer than 32 data bits.
        select_slave;
        send_header(false, 53);
        for i in 11 downto 0 loop
            clock_spi_bit('1', captured);
        end loop;
        deselect_slave;
        check_counts(expected_w, expected_r, "Aborted write");
        do_read(53, x"FFFFFFFF");

        report "MINIMUM BRAM-to-TX edge window = " & time'image(min_window) &
               " (budget=" &
               time'image(BRAM_TO_MISO_PROP_DELAY + TX_SETUP_BUDGET) & ")"
               severity note;
        report "MAXIMUM BRAM-to-TX edge window = " & time'image(max_window)
               severity note;
        report "ALL TESTS PASSED: writes=" & natural'image(expected_w) &
            " reads=" & natural'image(expected_r)
            severity note;
        finish;
    end process;

end architecture;
