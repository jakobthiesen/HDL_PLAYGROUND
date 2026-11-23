library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SPI_SLAVE_IP is
    generic (
        DATA_WIDTH  : integer := 32;
        ADDR_WIDTH  : integer := 7
    );
    port (
        i_clk           : in    std_logic;
        i_spi_clk       : in    std_logic;
        i_MOSI          : in    std_logic;
        i_ncs           : in    std_logic;
        o_MISO          : out   std_logic;

        o_RnW           : out   std_logic;
        o_addr          : out   std_logic_vector(ADDR_WIDTH-1 downto 0);
        o_data          : out   std_logic_vector(DATA_WIDTH-1 downto 0);
        i_data          : in    std_logic_vector(DATA_WIDTH-1 downto 0);
        o_update        : out   std_logic
    );
    end entity;

architecture rtl of SPI_SLAVE_IP is
    signal addr_shift   : std_logic_vector(ADDR_WIDTH-1 downto 0);
    signal rx_shift     : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal tx_shift     : std_logic_vector(DATA_WIDTH-1 downto 0);
    constant BIT_COUNTER_SIZE   : integer := 6;
    constant ADDR_COUNTER_SIZE  : integer := 4;
    signal addr_counter : unsigned(ADDR_COUNTER_SIZE-1 downto 0);
    signal rx_counter  : unsigned(BIT_COUNTER_SIZE-1 downto 0);
    signal tx_counter   : unsigned(BIT_COUNTER_SIZE-1 downto 0);

    constant READ_STATE : std_logic := '1';
    constant WRITE_STATE: std_logic := '0';
    constant TX_START   : std_logic := '1';
    constant RX_START   : std_logic := '1';

    signal rw_reg       : std_logic := '0';
    signal addr_reg     : std_logic_vector(ADDR_WIDTH-1 downto 0) := (others => '0');
    signal data_reg     : std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');
    signal tx_begin     : std_logic := '0';
    signal rx_begin     : std_logic := '0';
    signal rx_done      : std_logic := '0';
    signal tx_done      : std_logic := '0';

    signal addr_last    : std_logic := '0';
    signal rx_last      : std_logic := '0';

    signal spi_clk_meta : std_logic := '0';
    signal spi_clk_sync : std_logic := '0';
    signal spi_clk_prev : std_logic := '0';

    signal spi_mosi_meta: std_logic := '0';
    signal spi_mosi_sync: std_logic := '0';

    signal spi_ncs_meta : std_logic := '0';
    signal spi_ncs_sync : std_logic := '0';

    signal spi_pos_edge : std_logic := '0';
    signal spi_neg_edge : std_logic := '0';

    signal addr_valid   : std_logic := '0';
    signal rx_valid     : std_logic := '0';

begin 
    o_RnW <= rw_reg;
    o_addr <= addr_reg;
    o_data <= data_reg;


    EDGE_DETECT : process(i_clk)
    begin
        if rising_edge(i_clk) then
            spi_pos_edge <= spi_clk_sync and not spi_clk_prev;  --One clock wide pulse on a rising spi edge.
            spi_neg_edge <= not spi_clk_sync and spi_clk_prev;  --One clock wide pulse on a falling spi edge.
        end if;
    end process;

    UPDATE_PULSE : process(i_clk)
    begin
        if rising_edge(i_clk) then
            o_update <= addr_valid or rx_valid;
        end if;
    end process;

    CLK_SYNC : process(i_clk)   --Samples and synchronizes the spi clock to the system clock.
    begin
        if rising_edge(i_clk) then
            spi_clk_meta <= i_spi_clk;
            spi_clk_sync <= spi_clk_meta;
            spi_clk_prev <= spi_clk_sync;
        end if;
    end process;

    CS_SYNC : process(i_clk)
    begin
        if rising_edge(i_clk) then
            spi_ncs_meta <= i_ncs;
            spi_ncs_sync <= spi_ncs_meta;
        end if;
    end process;

    MOSI_SYNC : process(i_clk)
    begin
        if rising_edge(i_clk) then
            spi_mosi_meta <= i_MOSI;
            spi_mosi_sync <= spi_mosi_meta;
        end if;
    end process;


    ADDR : process(i_clk)
    begin
        if rising_edge(i_clk) then
            addr_valid <= '0';
            if spi_ncs_sync = '1' then
                addr_counter <= (others => '0');
                addr_last <= '0';
                rx_begin <= '0';
                tx_begin <= '0';
            elsif spi_pos_edge = '1' then
                if rx_begin = '0' and tx_begin = '0' then

                    if addr_counter = to_unsigned(0, ADDR_COUNTER_SIZE) then
                        rw_reg <= spi_mosi_sync;
                    else
                        addr_shift <= addr_shift(ADDR_WIDTH-2 downto 0) & spi_mosi_sync; --This is in fact a bit shift operation in hardware. 
                        --The transmission is, WE, 7 bits addr, 32 bits data.
                        --Addr_shift does not need to be cleared, a transmission will always overwrite old data.
                    end if;

                    if addr_counter = to_unsigned(ADDR_WIDTH-1, ADDR_COUNTER_SIZE) then
                        addr_last <= '1';
                    end if;

                    if addr_last = '1' then
                        addr_reg <= addr_shift(ADDR_WIDTH-2 downto 0) & spi_mosi_sync;
                        if(rw_reg = READ_STATE) then
                            addr_valid <= '1';
                            tx_begin <= TX_START;
                        else
                            rx_begin <= RX_START;
                        end if;
                    end if;
                    addr_counter <= addr_counter +1;
                end if;
            end if;
        end if;
    end process;


    RX : process(i_clk)
    begin
        if rising_edge(i_clk) then
            rx_valid <= '0';
            if spi_ncs_sync = '1' then
                rx_counter <= (others => '0');
                rx_done <= '0';
                rx_last <= '0';
            elsif spi_pos_edge = '1' then
                if rx_begin = RX_START and rx_done = '0' then
                    rx_shift <= rx_shift(DATA_WIDTH-2 downto 0) & spi_mosi_sync;
                
                    if rx_counter = to_unsigned(DATA_WIDTH-2, BIT_COUNTER_SIZE) then
                        rx_last <= '1';
                    end if;

                    if rx_last = '1' then
                        data_reg <= rx_shift(DATA_WIDTH-2 downto 0) & spi_mosi_sync;
                        rx_valid <= '1';
                        rx_done <= '1';
                    else
                        rx_counter <= rx_counter +1;
                    end if;
                end if;
            end if;
        end if;
    end process;
                    

    TX : process(i_clk)
    begin
        if rising_edge(i_clk) then
            if spi_ncs_sync = '1' then
                tx_counter <= (others => '0');
                tx_done <= '0';
                -- tx_shift <= (others => '0');
            elsif spi_neg_edge = '1' then
                if tx_begin = TX_START and tx_done = '0' then
                    if tx_counter = to_unsigned(0, BIT_COUNTER_SIZE) then
                        o_MISO <= i_data(DATA_WIDTH-1);
                        tx_shift <= i_data(DATA_WIDTH-2 downto 0) & '0';

                    else
                        o_MISO <= tx_shift(DATA_WIDTH-1);
                        tx_shift <= tx_shift(DATA_WIDTH-2 downto 0) & '0';
                    end if;
                    
                    if tx_counter = to_unsigned(DATA_WIDTH-1, BIT_COUNTER_SIZE) then
                        tx_done <= '1';
                    else
                        tx_counter <= tx_counter +1;
                    end if;
                end if;
            end if;
        end if;
    end process;
end architecture;







