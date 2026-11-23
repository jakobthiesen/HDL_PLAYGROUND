library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.ZI_TYPES_PKG.all;

entity SPI_MEM_TOP is
    port (
        clk_10_MHz      : in    std_logic;
        clk_dds         : in    std_logic;
        spi_clk         : in    std_logic;
        spi_mosi        : in    std_logic;
        spi_miso        : out   std_logic;
        spi_ncs         : in    std_logic;
        dac_out         : out   std_logic_vector(7 downto 0)
    );
    end entity;

architecture rtl of SPI_MEM_TOP is


    component CC_PLL is
        generic (
            REF_CLK         : real := 10.0;
            OUT_CLK         : real := 100.0;
            PERF_MD         : string := "SPEED";
            LOW_JITTER      : integer := 1;
            LOCK_REQ        : integer := 1;
            CLK270_DOUB     : integer := 0;
            CLK180_DOUB     : integer := 0;
            CI_FILTER_CONST : integer := 2;
            CP_FILTER_CONST : integer := 4
        );
        port (
            CLK_REF             : in  std_logic;
            USR_CLK_REF         : in  std_logic;
            CLK_FEEDBACK        : in  std_logic;
            USR_LOCKED_STDY_RST : in  std_logic;

            USR_PLL_LOCKED_STDY : out std_logic;
            USR_PLL_LOCKED      : out std_logic;

            CLK0                : out std_logic;
            CLK90               : out std_logic;
            CLK180              : out std_logic;
            CLK270              : out std_logic;
            CLK_REF_OUT         : out std_logic
        );
    end component;


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
    
    signal bram_spi_data: std_logic_vector(39 downto 0);

    signal dds_out      : std_logic_vector(7 downto 0);

    signal port_b_dummy : std_logic_vector(39 downto 0);

    signal en_bram_b    : std_logic;
    signal we_cfg       : std_logic;
    signal bram_rfs_data: std_logic_vector(39 downto 0);
    signal rfs_cfg_data : std_logic_vector(31 downto 0);
    signal bram_rfs_addr: std_logic_vector(9 downto 0);
    signal rfs_cfg_addr : std_logic_vector(6 downto 0);

    signal cfg_regs : reg_array_t(0 to 15)(31 downto 0);

    signal clk_100_MHz  : std_logic;
    signal clk_25_MHz   : std_logic := '0';
    -- signal clk_dds      : std_logic;
    signal clk_divider  : unsigned(1 downto 0) := to_unsigned(0,2);

begin

    -- spi_miso <= '1';
    -- clk_dds <= clk_10_MHz;


    DIVIDE_CLK : process(clk_100_MHz)
    begin
        if rising_edge(clk_100_MHz) then
            clk_divider <= clk_divider +1;
        end if;
    end process; 

    clk_25_MHz <= clk_divider(1);
    
    pll_inst : CC_PLL
    generic map (
        REF_CLK => 10.0,
        OUT_CLK => 150.0,
        PERF_MD => "SPEED",

        LOW_JITTER => 1,
        LOCK_REQ => 1,
        CLK270_DOUB => 0,
        CLK180_DOUB => 0,
        CI_FILTER_CONST => 2,
        CP_FILTER_CONST => 4
    )
    port map (
        CLK_REF => clk_10_MHz,
        USR_CLK_REF => '0',
        CLK_FEEDBACK => '0',
        USR_LOCKED_STDY_RST => '0',
        USR_PLL_LOCKED_STDY => open,
        USR_PLL_LOCKED => open,
        CLK0 => clk_100_MHz,
        CLK90 => open,
        CLK180 => open,
        CLK270 => open,
        CLK_REF_OUT => open
    );


    DDS_INST : entity work.Zector_DDS_IP
        generic map(
            ACCUMUlATOR_WIDTH => 32,
            LUT_ADDR_WIDTH => 10,
            LUT_DATA_WIDTH => 20,
            SCALE_WIDTH => 16,
            OUTPUT_WIDTH => 8
        )
        port map(
            clk         => clk_25_MHz,
            lut_di_0    => lut_data_a,
            lut_di_1    => lut_data_b,

            M           => unsigned(cfg_regs(0)),
            phase       => signed(cfg_regs(1)),
            scale       => signed(cfg_regs(2)(15 downto 0)),
            -- M => to_unsigned(161616, 32),
            -- phase => to_signed(0, 32),
            -- scale => to_signed(32767, 16),

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
            clk_a       => clk_25_MHz,
            clk_b       => clk_25_MHz,
            we_a        => '0',
            we_b        => '0',
            di_a        => (others => '0'),
            di_b        => (others => '0'),
            addr_a      => lut_addr_a,
            addr_b      => lut_addr_b,
            do_a        => lut_data_a,
            do_b        => lut_data_b
        );

    CFG_REGISTER : entity work.Zector_CFG_REGISTERS_IP
    generic map(
        DATA_WIDTH => 32,
        ADDR_WIDTH => 7
    )
        port map(
            i_clk       => clk_25_MHz,
            i_we        => we_cfg,
            i_addr      => rfs_cfg_addr,
            i_di        => rfs_cfg_data,

            o_reg_0     => cfg_regs(0),
            o_reg_1     => cfg_regs(1),
            o_reg_2     => cfg_regs(2)
        );

--Fix the issue with just using the lower bits for addressing. They are specifically for said bank.
    -- CFG_REG_BANK : entity work.CFG_REG_BANK_IP
    --     generic map(
    --         DATA_WIDTH  => 32,
    --         ADDR_WIDTH  => 4
    --     )
    --     port map(
    --         -- i_clk   => clk_10_MHz,
    --         i_clk   => clk_25_MHz,
    --         i_en    => we_cfg,
    --         i_data  => rfs_cfg_data,
    --         i_addr  => rfs_cfg_addr(3 downto 0),

    --         o_regs  => cfg_regs
    --     );


    -- REG_REFRESH : entity work.Zector_REFRESH_SCH_IP
    REG_REFRESH : entity work.REFRESH_SCH
        port map(
            -- i_clk       => clk_10_MHz,
            i_clk       => clk_25_MHz,

            o_en_bram   => en_bram_b,
            o_we_reg    => we_cfg,

            i_di        => bram_rfs_data(31 downto 0),
            o_do        => rfs_cfg_data,

            o_addr_bram => bram_rfs_addr,
            o_addr_reg  => rfs_cfg_addr
        );

    -- SPI_SLAVE : entity work.Zector_SPI_IP
    SPI_SLAVE : entity work.SPI_SLAVE_IP
        generic map(
            DATA_WIDTH  => 32,
            ADDR_WIDTH  => 7
        )
        port map(
            i_clk       => clk_100_MHz,
            i_spi_clk   => spi_clk,
            i_MOSI      => spi_mosi,
            i_ncs       => spi_ncs,
            o_MISO      => spi_miso,

            i_data      => bram_spi_data(31 downto 0),
            o_RnW       => spi_rnw,
            o_addr      => spi_addr,
            o_data      => spi_data,
            o_update    => spi_update
        );
        
    CFG_BRAM : entity work.Zector_40K_DP_BRAM_IP
        generic map(
            DATA_WIDTH => 40,
            ADDR_WIDTH => 10
        )
        port map(
            clk_a   => clk_100_MHz,
            -- clk_b   => clk_10_MHz,
            clk_b   => clk_25_MHz,

            -- Port A:
            en_a    => spi_update,
            we_a    => not spi_rnw,
            addr_a  => "000" & spi_addr,
            di_a(31 downto 0)   => spi_data,
            di_a(39 downto 32)  => (others => '0'),
            
            do_a   => bram_spi_data,

            -- Port B: 
            en_b    => en_bram_b,
            we_b    => '0',
            addr_b  => bram_rfs_addr,
            di_b    => (others => '0'),
            do_b    => bram_rfs_data
        );

    dds_m <= unsigned(dds_m_bus);
    dds_scale <= signed(dds_scale_bus(15 downto 0));
    dds_phase <= signed(dds_phase_bus);

    dac_out <= dds_out;
    -- dac_out <= cfg_regs(0)(7 downto 0);

end architecture;



