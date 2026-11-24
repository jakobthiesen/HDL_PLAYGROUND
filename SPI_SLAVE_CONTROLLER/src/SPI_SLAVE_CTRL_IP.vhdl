library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SPI_SLAVE_CTRL_IP is
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


architecture rtl of SPI_SLAVE_CTRL_IP is

    --Constants
    constant READ_STATE     : std_logic := '1';
    constant WRITE_STATE    : std_logic := '0';
    constant VALID          : std_logic := '1';
    constant NOT_VALID      : std_logic := '0';
    constant ADDR_HEADER_SIZE   : integer := ADDR_WIDTH+HEADER_WIDTH;
    constant ADDR_COUNT_RESET   : std_logic_vector(ADDR_HEADER_SIZE-1 downto 0) := (0=>'1', others => '0');
    constant RX_COUNT_RESET     : std_logic_vector(DATA_WIDTH-1 downto 0) := (0 => '1', others => '0');
    constant TX_COUNT_RESET     : std_logic_vector(DATA_WIDTH-1 downto 0) := (0 => '1', others => '0');

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
    signal addr_count       : std_logic_vector(ADDR_HEADER_SIZE-1 downto 0) := ADDR_COUNT_RESET; --One hot bit counter
    signal rx_count         : std_logic_vector(DATA_WIDTH-1 downto 0) := RX_COUNT_RESET; --One hot bit counter
    signal tx_count         : std_logic_vector(DATA_WIDTH-1 downto 0) := TX_COUNT_RESET; -- one hit bit counter

    --Decoding and process flags
    signal addr_valid_flag  : std_logic := '0';
    signal rx_valid_flag    : std_logic := '0';
    signal rx_begin_flag    : std_logic := '0';
    signal tx_begin_flag    : std_logic := '0';
    signal rx_done_flag     : std_logic := '0';
    signal tx_done_flag     : std_logic := '0';
    signal read_mode_flag   : std_logic := '0';

begin


    o_we <= not read_mode_flag;
    o_addr <= addr_reg;
    o_data <= data_reg;

    ENABLE_BRAM : process(i_clk)
    begin
        if rising_edge(i_clk) then
            o_en <= addr_valid_flag or rx_valid_flag;
        end if;
    end process;

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
            spi_ncs_sync <= i_ncs;
            -- spi_ncs_sync <= spi_ncs_meta;
        end if;
    end process;

    --Clock domain synchronization for spi mosi
    TWO_STAGE_MOSI_SYNC : process(i_clk)
    begin
        if rising_edge(i_clk) then
            spi_mosi_sync <= i_mosi;
            -- spi_mosi_sync <= spi_mosi_meta;
        end if;
    end process;


    DECODE_ADDR : process(i_clk)
    begin
        if rising_edge(i_clk) then
            addr_valid_flag <= NOT_VALID;
            if spi_ncs_sync = '1' then
                addr_count <= ADDR_COUNT_RESET;
                rx_begin_flag <= NOT_VALID;
                tx_begin_flag <= NOT_VALID;
            elsif spi_pos_edge = '1' then
                if rx_begin_flag = NOT_VALID and tx_begin_flag = NOT_VALID then
                    if addr_count(0) = '1' then
                        read_mode_flag <= spi_mosi_sync;
                    else
                        addr_shift <= addr_shift(ADDR_WIDTH-2 downto 0) & spi_mosi_sync;
                    end if;

                    if addr_count(ADDR_HEADER_SIZE-1) = '1' then
                        addr_reg <= addr_shift(ADDR_WIDTH-2 downto 0) & spi_mosi_sync;
                        if(read_mode_flag = READ_STATE) then
                            addr_valid_flag <= VALID;
                            tx_begin_flag <= VALID;
                        else
                            rx_begin_flag <= VALID;
                        end if;
                    end if;
                    addr_count <= addr_count(ADDR_HEADER_SIZE-2 downto 0) & '0';
                end if;
            end if;
        end if;
    end process;

    RX : process(i_clk)
    begin
        if rising_edge(i_clk) then
            rx_valid_flag <= NOT_VALID;
            if spi_ncs_sync = '1' then
                rx_count <= RX_COUNT_RESET;
                rx_done_flag <= NOT_VALID;
            elsif spi_pos_edge = '1' then
                if rx_begin_flag = VALID and rx_done_flag = NOT_VALID then
                    rx_shift <= rx_shift(DATA_WIDTH-2 downto 0) & spi_mosi_sync;
                    if rx_count(DATA_WIDTH-1) = '1' then
                        data_reg <= rx_shift(DATA_WIDTH-2 downto 0) & spi_mosi_sync;
                        rx_valid_flag <= VALID;
                        rx_done_flag <= VALID;
                    end if;
                    rx_count <= rx_count(DATA_WIDTH-2 downto 0) & '0';
                end if;
            end if;
        end if;
    end process;

    TX : process(i_clk)
    begin
        if rising_edge(i_clk) then
            if spi_ncs_sync = '1' then
                tx_count <= TX_COUNT_RESET;
                tx_done_flag <= NOT_VALID;
            elsif spi_neg_edge = '1' then

                if tx_begin_flag = VALID and tx_done_flag = NOT_VALID then
                    if tx_count(0) = '1' then
                        o_miso <= i_data(DATA_WIDTH-1);
                        tx_shift <= i_data(DATA_WIDTH-2 downto 0) & '0';
                    else
                        o_miso <= tx_shift(DATA_WIDTH-1);
                        tx_shift <= tx_shift(DATA_WIDTH-2 downto 0) & '0';
                    end if;

                    if tx_count(DATA_WIDTH-1) = '1' then
                        tx_done_flag <= VALID;
                    end if;
                    tx_count <= tx_count(DATA_WIDTH-2 downto 0) & '0';
                end if;
            end if;
        end if;
    end process;

    
end architecture;



