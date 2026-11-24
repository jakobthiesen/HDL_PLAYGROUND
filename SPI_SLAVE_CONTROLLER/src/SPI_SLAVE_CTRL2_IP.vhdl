library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SPI_SLAVE_CTRL2_IP is
    GENERIC (
        DATA_WIDTH      : integer := 32;
        ADDR_WIDTH      : integer := 7;
        HEADER_WIDTH    : integer := 1
    );
    port (
        i_clk           : in    std_logic;
        i_spi_clk       : in    std_logic;
        i_mosi          : in    std_logic;
        i_ncs           : in    std_logic;
        o_miso          : out   std_logic;

        o_we            : out   std_logic := '0';
        o_en            : out   std_logic := '0';
        o_addr          : out   std_logic_vector(ADDR_WIDTH-1 downto 0);
        o_data          : out   std_logic_vector(DATA_WIDTH-1 downto 0);
        i_data          : in    std_logic_vector(DATA_WIDTH-1 downto 0)
    );
end entity;


architecture rtl of SPI_SLAVE_CTRL2_IP is

    --Constants
    constant READ_STATE     : std_logic := '1';
    constant WRITE_STATE    : std_logic := '0';
    constant VALID          : std_logic := '1';
    constant NOT_VALID      : std_logic := '0';
    constant PAYLOAD_SIZE   : integer := HEADER_WIDTH+ADDR_WIDTH+DATA_WIDTH;
    constant COUNT_RESET    : std_logic_vector(PAYLOAD_SIZE-1 downto 0) := (0=>'1', others => '0');

    --Synchronization register signals
    signal spi_clk_meta     : std_logic;
    signal spi_clk_sync     : std_logic := '0';
    signal spi_clk_prev     : std_logic := '0';

    signal spi_ncs_meta     : std_logic;
    signal spi_ncs_sync     : std_logic := '1';

    signal spi_mosi_meta    : std_logic;
    signal spi_mosi_sync    : std_logic := '0';

    signal spi_pos_edge     : std_logic := '0';
    signal spi_neg_edge     : std_logic := '0';

    --Data vectors
    signal addr_shift       : std_logic_vector(ADDR_WIDTH-1 downto 0);
    signal rx_shift         : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal tx_shift         : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal addr_reg         : std_logic_vector(ADDR_WIDTH-1 downto 0);
    signal data_reg         : std_logic_vector(DATA_WIDTH-1 downto 0);

    --Counter vectors
    signal rx_count         : std_logic_vector(PAYLOAD_SIZE-1 downto 0) := COUNT_RESET; --One hot bit counter
    signal tx_count         : std_logic_vector(PAYLOAD_SIZE-1 downto 0) := COUNT_RESET; -- one hit bit counter

    --Decoding and process flags
    signal addr_valid_flag  : std_logic := '0';
    signal rx_valid_flag    : std_logic := '0';
    signal rx_begin_flag    : std_logic := '0';
    signal tx_begin_flag    : std_logic := '0';
    signal rx_done_flag     : std_logic := '0';
    signal tx_done_flag     : std_logic := '0';
    signal read_mode_flag   : std_logic := '0';

begin


    --Clock domain synchronization for spi clk
    TWO_STAGE_CLK_SYNC : process(i_clk)
    begin
        if rising_edge(i_clk) then
            spi_clk_meta <= i_spi_clk;
            spi_clk_sync <= spi_clk_meta;
            spi_clk_prev <= spi_clk_sync;
        end if;
    end process;
    --Edge detection without introducing a new clock path.
    spi_pos_edge <= spi_clk_sync and not spi_clk_prev;
    spi_neg_edge <= not spi_clk_sync and spi_clk_prev;

    --Clock domain synchronization for spi nCS
    TWO_STAGE_CNS_SYNC : process(i_clk)
    begin
        if rising_edge(i_clk) then
            spi_ncs_meta <= i_ncs;
            spi_ncs_sync <= spi_ncs_meta;
        end if;
    end process;

    --Clock domain synchronization for spi mosi
    TWO_STAGE_MOSI_SYNC : process(i_clk)
    begin
        if rising_edge(i_clk) then
            spi_mosi_meta <= i_mosi;
            spi_mosi_sync <= spi_mosi_meta;
        end if;
    end process;

    -- RX : process(i_clk)
    -- begin
    --     if rising_edge(i_clk) then
    --         if spi_ncs_sync = '1' then
    --             rx_count <= RX_COUNT_RESET;
    --         else
    --     end if;
    -- end process;

    
end architecture;



