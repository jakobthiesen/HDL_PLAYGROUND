library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.ZI_TYPES_PKG.all;

entity spi_slave_top is
    port (
        clk_10_MHz      : in    std_logic;
        spi_clk         : in    std_logic;
        spi_mosi        : in    std_logic;
        spi_ncs         : in    std_logic;
        spi_miso        : out   std_logic;
        dac_out         : out   std_logic_vector(7 downto 0)
    );
    end entity;

architecture rtl of spi_slave_top is

    component CC_IBUF is
        generic(
            PIN_NAME        : string  := "UNPLACED";
            V_IO            : string  := "UNDEFINED";
            PULLUP          : integer := 0;
            PULLDOWN        : integer := 0;
            KEEPER          : integer := 0;
            SCHMITT_TRIGGER : integer := 0;
            DELAY_IBF       : integer := 0;
            FF_IBF          : integer := 0
        );
        port(
            I : in  std_logic;
            Y : out std_logic
        );
    end component;

    component CC_BUFG is
        port (
            I : in  std_logic;
            O : out std_logic
        );
    end component;
    
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
    signal dds_out      : std_logic_vector(7 downto 0);

    signal spi_bram_we      : std_logic;
    signal spi_bram_en      : std_logic;
    signal spi_bram_addr    : std_logic_vector(6 downto 0);
    signal spi_bram_data    : std_logic_vector(31 downto 0);
    signal bram_spi_data    : std_logic_vector(39 downto 0);

    -- signal rfs_bram_we      : std_logic;
    signal rfs_bram_en      : std_logic;
    signal rfs_bram_addr    : std_logic_vector(9 downto 0);
    signal rfs_bram_data    : std_logic_vector(39 downto 0);

    signal rfs_cfg_we       : std_logic;
    signal rfs_cfg_addr     : std_logic_vector(6 downto 0);
    signal rfs_cfg_data     : std_logic_vector(31 downto 0);

    signal cfg_regs : reg_array_t(0 to 15)(31 downto 0);

    signal w_spi_mosi       : std_logic;
    signal w_spi_clk        : std_logic;
    signal w_spi_ncs        : std_logic;

    signal sys_clk          : std_logic;
    signal clk_100_MHz      : std_logic;

    signal data_reg_0       : std_logic_vector(31 downto 0) := (others => '0');
    signal data_reg_1       : std_logic_vector(31 downto 0) := (others => '0');
    signal data_reg_2       : std_logic_vector(31 downto 0) := (others => '0');
    

begin

    pll_inst : CC_PLL
    generic map (
        REF_CLK => 10.0,
        OUT_CLK => 100.0,
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

    SYS_CLOCK_BUFFER : CC_BUFG
        port map (
            I => clk_100_MHz,
            O => sys_clk
        );

    -- IO_FF_SPI_CLK : CC_IBUF
    --     generic map(
    --         SCHMITT_TRIGGER => 0,
    --         DELAY_IBF       => 0,
    --         FF_IBF          => 1
    --     )
    --     port map(
    --         I => spi_clk,
    --         Y => w_spi_clk
    --     );

    -- IO_FF_SPI_MOSI : CC_IBUF
    --     generic map(
    --         SCHMITT_TRIGGER => 0,
    --         DELAY_IBF       => 0,
    --         FF_IBF          => 1
    --     )
    --     port map(
    --         I => spi_mosi,
    --         Y => w_spi_mosi
    --     );

    -- IO_FF_SPI_NCS : CC_IBUF
    --     generic map(
    --         SCHMITT_TRIGGER => 0,
    --         DELAY_IBF       => 0,
    --         FF_IBF          => 1
    --     )
    --     port map(
    --         I => spi_ncs,
    --         Y => w_spi_ncs
    --     );
        w_spi_clk <= spi_clk;
        w_spi_mosi <= spi_mosi;
        w_spi_ncs <= spi_ncs;



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

            -- M           => unsigned(cfg_regs(0)),
            -- phase       => signed(cfg_regs(1)),
            -- scale       => signed(cfg_regs(2)(15 downto 0)),

            M => unsigned(data_reg_0),
            phase => signed(data_reg_1),
            scale => signed(data_reg_2(15 downto 0)),

            -- scale => to_signed(5000, 16),
            -- M => to_unsigned(429496, 32),
            -- phase => to_signed(0, 32),
            -- scale =>signed(data_reg_2(15 downto 0)),

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



    SPI_SLAVE : entity work.SPI_SLAVE_CTRL3_IP
        generic map(
            DATA_WIDTH      => 32,
            ADDR_WIDTH      => 7,
            HEADER_WIDTH    => 1
        )
        port map(
         i_clk      => sys_clk,
         i_spi_clk  => w_spi_clk,
         i_mosi     => w_spi_mosi,
         i_ncs      => w_spi_ncs,
         o_miso     => spi_miso,

         o_we       => spi_bram_we,
         o_en       => spi_bram_en,
         o_addr     => spi_bram_addr,
         o_data     => spi_bram_data,
         i_data     => bram_spi_data(31 downto 0)
        );

    CFG_BRAM : entity work.Zector_40K_DP_BRAM_IP
        generic map(
            DATA_WIDTH => 40,
            ADDR_WIDTH => 10
        )
        port map(
            clk_a   => sys_clk,
            clk_b   => clk_10_MHz,

            -- Port A:
            en_a    => spi_bram_en,
            we_a    => spi_bram_we,
            addr_a  => "000" & spi_bram_addr,
            di_a(31 downto 0)   => spi_bram_data,
            di_a(39 downto 32)  => (others => '0'),
            
            do_a  => bram_spi_data,

            -- Port B: 
            en_b    => rfs_bram_en,
            we_b    => '0',
            addr_b  => rfs_bram_addr,
            di_b    => (others => '0'),
            do_b    => rfs_bram_data
        );


    RFS_SCH : entity work.RFS_SCH_TEST
        port map(
            i_clk       => clk_10_MHz,

            o_en_bram   => rfs_bram_en,
            o_we_cfg    => rfs_cfg_we,

            i_di        => rfs_bram_data(31 downto 0),
            o_do_0      => data_reg_0,
            o_do_1      => data_reg_1,
            o_do_2      => data_reg_2,

            o_addr_bram => rfs_bram_addr,
            o_addr_cfg  => rfs_cfg_addr
        );

        -- RFS_SCH : entity work.RFS_SCH_IP
        -- port map(
        --     i_clk       => clk_10_MHz,

        --     o_en_bram   => rfs_bram_en,
        --     o_we_cfg    => rfs_cfg_we,

        --     i_di        => rfs_bram_data(31 downto 0),
        --     o_do        => rfs_cfg_data,

        --     o_addr_bram => rfs_bram_addr,
        --     o_addr_cfg  => rfs_cfg_addr
        -- );

        -- CFG_REGISTER : entity work.Zector_CFG_REGISTERS_IP
        -- generic map(
        --     DATA_WIDTH => 32,
        --     ADDR_WIDTH => 7
        -- )
        --     port map(
        --         i_clk       => clk_10_MHz,
        --         i_we        => rfs_cfg_we,
        --         i_addr      => rfs_cfg_addr,
        --         i_di        => rfs_cfg_data,

        --         o_reg_0     => cfg_regs(0),
        --         o_reg_1     => cfg_regs(1),
        --         o_reg_2     => cfg_regs(2)
        --     );

        -- dac_out <= cfg_regs(0)(7 downto 0);
        -- dac_out <= data_reg_2(7 downto 0);
        dac_out <= dds_out;

end architecture;