
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--
entity REFRESH_SCH is
    port (
        i_clk        : in  std_logic;

        o_en_bram    : out std_logic;
        o_we_reg     : out std_logic;

        i_di         : in  std_logic_vector(31 downto 0);
        o_do         : out std_logic_vector(31 downto 0);

        o_addr_bram  : out std_logic_vector(9 downto 0);
        o_addr_reg   : out std_logic_vector(6 downto 0)
    );
end entity;

architecture rtl of REFRESH_SCH is

    type state_t is(
        SET_ADDR,
        READ_BRAM,
        WAIT_BRAM,
        CAPTURE_DATA,
        WRITE_READ_REG,
        NEXT_ADDR
    );

    signal state        : state_t := SET_ADDR;
    signal addr_count   : unsigned(6 downto 0) := (others => '0');
    signal data_reg     : std_logic_vector(31 downto 0) := (others => '0');

    signal ce_counter   : unsigned(3 downto 0) := (others => '0'); -- clock enable counter, used for diving down master clock.
    signal ce_refresh   : std_logic := '0';

    signal en_bram      : std_logic := '0';
    signal we_reg       : std_logic := '0';

begin

--Generate a divided down clock enable, derived from master clock
CLK_ENABLE : process(i_clk)
begin
    if rising_edge(i_clk) then
        ce_refresh <= '0';

        if ce_counter = 9 then
            ce_counter <= (others => '0');
            ce_refresh <= '1';
        else
            ce_counter <= ce_counter +1;
        end if;
    end if;
end process; 

o_addr_bram <= "000" & std_logic_vector(addr_count);
o_addr_reg  <= std_logic_vector(addr_count);
o_do        <= data_reg; 

o_en_bram <= en_bram;
o_we_reg <= we_reg;
REFRESH_FSM : process(i_clk)
begin
    if rising_edge(i_clk) then
        --Default, ensure strobe signals are only high for 1 clock.
        en_bram <= '0';
        we_reg  <= '0';
        if ce_refresh = '1' then
            case state is
                when SET_ADDR =>
                    state <= READ_BRAM;
                when READ_BRAM =>
                    en_bram <= '1';
                    state <= WAIT_BRAM;
                when WAIT_BRAM =>
                    state <= CAPTURE_DATA;
                when CAPTURE_DATA => 
                    data_reg <= i_di;
                    state <= WRITE_READ_REG;
                when WRITE_READ_REG =>
                    we_reg <= '1';
                    state <= NEXT_ADDR;
                when NEXT_ADDR =>
                    addr_count <= addr_count+1;
                    state <= SET_ADDR;
            end case;
        end if;
    end if;
end process;



end architecture;
