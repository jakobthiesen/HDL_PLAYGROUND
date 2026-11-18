library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DDS_HS_TOP is
    port (
        clk_10_MHz      : in    std_logic;
        spi_clk         : in    std_logic;
        spi_mosi        : in    std_logic;
        spi_miso        : out   std_logic;
        spi_ncs         : in    std_logic;
        dac_out         : out   std_logic_vector(7 downto 0)
    );
    end entity;

architecture rtl of DDS_HS_TOP is

    signal lut_addr_a   : unsigned(10 downto 0);
    signal lut_data_a   : signed(19 downto 0);

    signal dds_m        : unsigned(31 downto 0) := to_unsigned(429497, 32);
    signal dds_phase    : signed(31 downto 0) := (others => '0');

   
    signal dds_out      : std_logic_vector(7 downto 0);

begin

    -- spi_miso <= '1';

    DDS_INST : entity work.Zector_HS_DDS_IP
        generic map(
            ACCUMUlATOR_WIDTH => 32,
            LUT_ADDR_WIDTH => 11,
            LUT_DATA_WIDTH => 20,
            OUTPUT_WIDTH => 8
        )
        port map(
            clk         => clk_10_MHz,
            lut_di_0    => lut_data_a,

            M           => dds_m,
            phase       => dds_phase,

            Y           => dds_out,
            lut_addr_0  => lut_addr_a
        );
    
    BRAM_INST : entity work.bram_sp_sin_lut
        generic map(
            DATA_WIDTH  => 20,
            ADDR_WIDTH  => 11
        )
        port map(
            clk       => clk_10_MHz,
            we        => '0',
            di        => (others => '0'),
            addr      => lut_addr_a,
            do        => lut_data_a
        );


    dac_out <= dds_out;

    spi_miso <= '0';

end architecture;



