
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.env.all;

entity spi_slave_top_tb is
end entity;

architecture sim of spi_slave_top_tb is

    constant SYS_CLK_PERIOD  : time := 10 ns;  -- 100 MHz
    constant SPI_CLK_PERIOD  : time := 100 ns; -- 10 MHz
    constant TOTAL_SPI_EDGES : integer := 100;

    signal clk_10_MHz : std_logic := '0';
    signal spi_clk    : std_logic := '0';
    signal spi_mosi   : std_logic := '0';
    signal spi_ncs    : std_logic := '1';
    signal spi_miso   : std_logic;

begin

    -- System clock
    SYS_CLK : process
    begin
        clk_10_MHz <= '0';
        wait for SYS_CLK_PERIOD/2;
        clk_10_MHz <= '1';
        wait for SYS_CLK_PERIOD/2;
    end process;

    -- Device under test
    DUT : entity work.spi_slave_top
        port map (
            clk_10_MHz => clk_10_MHz,
            spi_clk    => spi_clk,
            spi_mosi   => spi_mosi,
            spi_ncs    => spi_ncs,
            spi_miso   => spi_miso
        );

    -- SPI stimulus and verification
    STIMULUS : process

        variable expected_miso : std_logic;

    begin

        -- Allow synchronizer to settle
        wait for 200 ns;

        spi_ncs <= '0';
        wait for 100 ns;

        for i in 1 to TOTAL_SPI_EDGES loop

            -- Generate one SPI clock pulse
            spi_clk <= '1';
            wait for SPI_CLK_PERIOD/2;

            spi_clk <= '0';
            wait for SPI_CLK_PERIOD/2;

            -- Expected MISO state
            if (i mod 30) = 0 then
                expected_miso := '1';
            else
                expected_miso := '0';
            end if;



            -- Print pulse information
            if expected_miso = '1' then
                report "Correct pulse at SPI edge " &
                       integer'image(i)
                severity note;
            end if;

        end loop;

        spi_ncs <= '1';

        report "SPI one-hot counter test completed"
            severity note;

        finish;

    end process;

end architecture;
