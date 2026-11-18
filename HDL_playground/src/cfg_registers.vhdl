library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;




entity cfg_registers is 
    generic (
        DATA_WIDTH : integer := 32;
        ADDR_WIDTH : integer := 5
    );
    port (
        i_we        : in    std_logic;
        i_clk       : in    std_logic;
        i_update    : in    std_logic;
        i_di        : in    std_logic_vector(DATA_WIDTH-1 downto 0);
        i_addr      : in    std_logic_vector(ADDR_WIDTH-1 downto 0);
        o_do        : out   std_logic_vector(DATA_WIDTH-1 downto 0);

        o_reg_0     : out   std_logic_vector(DATA_WIDTH-1 downto 0);
        o_reg_1     : out   std_logic_vector(DATA_WIDTH-1 downto 0);
        o_reg_2     : out   std_logic_vector(DATA_WIDTH-1 downto 0)
    );
end entity;


architecture rtl of cfg_registers is 

    type reg is array(0 to (2**ADDR_WIDTH)-1) of std_logic_vector(DATA_WIDTH-1 downto 0);
    signal memory : reg := (
        0   => std_logic_vector(to_unsigned(4294967, DATA_WIDTH)),
        1   => std_logic_vector(to_unsigned(32767, DATA_WIDTH)),
        others => (others => '0')
    );

begin

    -- process(i_update)
    -- begin
    --     if rising_edge(i_update) then
    --         if (i_we = '1') then
    --             memory(to_integer(unsigned(i_addr))) <= i_di;
    --         else
    --             o_do <= memory(to_integer(unsigned(i_addr)));
    --         end if;
    --     end if;
    -- end process;

    process(i_clk)
    begin
        if rising_edge(i_clk) then
            if i_update = '1' then
                if i_we = '1' then
                    memory(to_integer(unsigned(i_addr))) <= i_di;
                else
                    o_do <= memory(to_integer(unsigned(i_addr)));
                end if;
            end if;
        o_reg_0 <= memory(0);
        o_reg_1 <= memory(1);
        o_reg_2 <= memory(2);
        end if;
    end process;

    -- o_reg_0 <= memory(0);
    -- o_reg_1 <= memory(1);
    -- o_reg_2 <= memory(2);
end architecture;








