library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SPI_MEM_TOP is
    port (
        clk_10_MHz      : in    std_logic;
        spi_clk         : in    std_logic;
        spi_mosi        : in    std_logic;
        spi_miso        : out   std_logic;
        spi_ncs         : in    std_logic;
        dac_out         : out   std_logic_vector(7 downto 0)
    );
    end entity;

architecture rtl of SPI_MEM_TOP is

    signal lut_addr_a   : unsigned(9 downto 0);
    signal lut_addr_b   : unsigned(9 downto 0);
    signal lut_data_a   : signed(19 downto 0);
    signal lut_data_b   : signed(19 downto 0);

    signal dds_scale    : signed(15 downto 0) := to_signed(32767, 16);
    signal dds_m        : unsigned(31 downto 0);
    signal dds_phase    : signed(31 downto 0) := (others => '0');

    signal dds_m_bus    : std_logic_vector(31 downto 0);
    signal dds_scale_bus: std_logic_vector(31 downto 0);
    signal dds_phase_bus: std_logic_vector(31 downto 0);

    signal spi_rnw      : std_logic;
    signal spi_addr     : std_logic_vector(6 downto 0);
    signal spi_data     : std_logic_vector(31 downto 0);
    signal spi_update   : std_logic;
    signal dummy        : std_logic;
    signal dummy32      : std_logic_vector(31 downto 0);
    
    signal cfg_data_o   : std_logic_vector(31 downto 0);

    signal dds_out      : std_logic_vector(7 downto 0);

begin

    -- spi_miso <= '1';

    DDS_INST : entity work.Zector_DDS_IP
        generic map(
            ACCUMUlATOR_WIDTH => 32,
            LUT_ADDR_WIDTH => 10,
            LUT_DATA_WIDTH => 20,
            SCALE_WIDTH => 16,
            OUTPUT_WIDTH => 8
        )
        port map(
            clk         => clk_10_MHz,
            lut_di_0    => lut_data_a,
            lut_di_1    => lut_data_b,

            M           => dds_m,
            phase       => dds_phase,
            scale       => dds_scale,

            Y           => dds_out,
            lut_addr_0  => lut_addr_a,
            lut_addr_1  => lut_addr_b
        );
    
    BRAM_INST : entity work.bram_dp_sin_lut
        generic map(
            DATA_WIDTH  => 20,
            ADDR_WIDTH  => 10
        )
        port map(
            clk_a       => clk_10_MHz,
            clk_b       => clk_10_MHz,
            we_a        => '0',
            we_b        => '0',
            di_a        => (others => '0'),
            di_b        => (others => '0'),
            addr_a      => lut_addr_a,
            addr_b      => lut_addr_b,
            do_a        => lut_data_a,
            do_b        => lut_data_b
        );


    SPI_SLAVE : entity work.Zector_SPI_IP
        generic map(
            DATA_WIDTH  => 32,
            ADDR_WIDTH  => 7
        )
        port map(
            i_clk       => clk_10_MHz,
            i_spi_clk   => spi_clk,
            i_MOSI      => spi_mosi,
            i_ncs       => spi_ncs,
            o_MISO      => spi_miso,

            i_data      => cfg_data_o,
            o_RnW       => spi_rnw,
            o_addr      => spi_addr,
            o_data      => spi_data,
            o_update    => spi_update
        );
        
    CFG_REG : entity work.cfg_registers
        generic map(
            DATA_WIDTH  => 32,
            ADDR_WIDTH  => 5
        )
        port map (
            i_we        => not spi_rnw,
            i_clk       => clk_10_MHz,
            i_update    => spi_update,
            i_di        => spi_data,
            i_addr      => spi_addr(4 downto 0),

            o_do        => cfg_data_o,
            o_reg_0     => dds_m_bus,
            o_reg_1     => dds_scale_bus,
            o_reg_2     => dds_phase_bus
        );
    dds_m <= unsigned(dds_m_bus);
    dds_scale <= signed(dds_scale_bus(15 downto 0));
    dds_phase <= signed(dds_phase_bus);

    dac_out <= dds_out;

end architecture;



