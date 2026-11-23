library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity multiplier_top is
    port (
        clk_10_MHz      : in    std_logic;
        spi_clk         : in    std_logic;
        spi_mosi        : in    std_logic;
        spi_miso        : out   std_logic;
        spi_ncs         : in    std_logic;
        dac_out         : out   std_logic_vector(7 downto 0)
    );
    end entity;

architecture rtl of multiplier_top is

    signal A : unsigned(15 downto 0);
    signal B : unsigned(15 downto 0);
    signal P : unsigned(31 downto 0);

    signal counter : unsigned(31 downto 0) := (others => '0');

begin

    process(clk_10_MHz)
    begin
        if rising_edge(clk_10_MHz) then
            counter <= counter +1;
        end if;
    end process;
    A <= counter(15 downto 0);
    B <= counter(31 downto 16);

    -- spi_miso <= '1';

    carry_save : entity work.carry_save_16x16
        port map(
            clk => clk_10_MHz,
            A   => A,
            B   => B,
            P   => P
        );

    -- std_16x16 : entity work.std_16x16
    --     port map(
    --         clk => clk_10_MHz,
    --         A   => A,
    --         B   => B,
    --         P   => P
    --     );

dac_out <= std_logic_vector(P(31 downto 24));

end architecture;



