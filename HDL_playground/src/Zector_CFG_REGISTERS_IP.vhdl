
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Zector_CFG_REGISTERS_IP is
    generic (
        DATA_WIDTH : integer := 32;
        ADDR_WIDTH : integer := 7
    );
    port (
        i_clk    : in  std_logic;
        i_we     : in  std_logic;
        i_addr   : in  std_logic_vector(ADDR_WIDTH-1 downto 0);
        i_di     : in  std_logic_vector(DATA_WIDTH-1 downto 0);

        o_reg_0  : out std_logic_vector(DATA_WIDTH-1 downto 0);
        o_reg_1  : out std_logic_vector(DATA_WIDTH-1 downto 0);
        o_reg_2  : out std_logic_vector(DATA_WIDTH-1 downto 0)
    );
end entity;

architecture rtl of Zector_CFG_REGISTERS_IP is

    signal reg_0 : std_logic_vector(DATA_WIDTH-1 downto 0)
                   := std_logic_vector(to_unsigned(429497,32));

    signal reg_1 : std_logic_vector(DATA_WIDTH-1 downto 0)
                   := std_logic_vector(to_signed(32767, 32));

    signal reg_2 : std_logic_vector(DATA_WIDTH-1 downto 0)
                   := std_logic_vector(to_signed(32767, 32));

begin

    process(i_clk)
    begin
        if rising_edge(i_clk) then

            if i_we = '1' then

                case to_integer(unsigned(i_addr)) is

                    when 0 =>
                        reg_0 <= i_di;

                    when 1 =>
                        reg_1 <= i_di;

                    when 2 =>
                        reg_2 <= i_di;

                    when others =>
                        null;

                end case;

            end if;

        end if;
    end process;

    o_reg_0 <= reg_0;
    o_reg_1 <= reg_1;
    o_reg_2 <= reg_2;

end architecture;
