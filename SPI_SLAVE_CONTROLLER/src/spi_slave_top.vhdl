library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity spi_slave_top is
    port (
        clk_10_MHz      : in    std_logic;
        spi_clk         : in    std_logic;
        spi_mosi        : in    std_logic;
        spi_ncs         : in    std_logic;
        spi_miso        : out   std_logic
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
    
    signal spi_bram_we      : std_logic;
    signal spi_bram_en      : std_logic;
    signal spi_bram_addr    : std_logic_vector(6 downto 0);
    signal spi_bram_data    : std_logic_vector(31 downto 0);
    signal bram_spi_data    : std_logic_vector(39 downto 0);

    signal w_spi_mosi       : std_logic;
    signal w_spi_clk        : std_logic;
    signal w_spi_ncs        : std_logic;

    signal sys_clk          : std_logic;

begin

    SYS_CLOCK_BUFFER : CC_BUFG
        port map (
            I => clk_10_MHz,
            O => sys_clk
        );

    IO_FF_SPI_CLK : CC_IBUF
        generic map(
            SCHMITT_TRIGGER => 0,
            DELAY_IBF       => 0,
            FF_IBF          => 1
        )
        port map(
            I => spi_clk,
            Y => w_spi_clk
        );

    IO_FF_SPI_MOSI : CC_IBUF
        generic map(
            SCHMITT_TRIGGER => 0,
            DELAY_IBF       => 0,
            FF_IBF          => 1
        )
        port map(
            I => spi_mosi,
            Y => w_spi_mosi
        );

    IO_FF_SPI_NCS : CC_IBUF
        generic map(
            SCHMITT_TRIGGER => 0,
            DELAY_IBF       => 0,
            FF_IBF          => 1
        )
        port map(
            I => spi_ncs,
            Y => w_spi_ncs
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
            clk_b   => sys_clk,

            -- Port A:
            en_a    => spi_bram_en,
            we_a    => spi_bram_we,
            addr_a  => "000" & spi_bram_addr,
            di_a(31 downto 0)   => spi_bram_data,
            di_a(39 downto 32)  => (others => '0'),
            
            do_a  => bram_spi_data,

            -- Port B: 
            en_b    => '0',
            we_b    => '0',
            addr_b  => (others => '0'),
            di_b    => (others => '0'),
            do_b    => open
        );

end architecture;