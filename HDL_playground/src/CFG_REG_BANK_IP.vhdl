
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.ZI_TYPES_PKG.all;

entity CFG_REG_BANK_IP is
    generic (
        DATA_WIDTH : positive := 32;
        ADDR_WIDTH : positive := 4
    );
    port (
        i_clk  : in  std_logic;
        i_en   : in  std_logic;
        i_data : in  std_logic_vector(DATA_WIDTH-1 downto 0);
        i_addr : in  std_logic_vector(ADDR_WIDTH-1 downto 0);

        o_regs : out reg_array_t(0 to 2**ADDR_WIDTH-1)
                         (DATA_WIDTH-1 downto 0)
    );
end entity;

architecture rtl of CFG_REG_BANK_IP is

    constant REG_COUNT : integer := 2**ADDR_WIDTH;

    signal regs : reg_array_t(0 to REG_COUNT-1)
                           (DATA_WIDTH-1 downto 0)
                 := (others => (others => '0'));

begin

    o_regs <= regs;

    REG_GEN : for k in 0 to REG_COUNT-1 generate

        REG_PROCESS : process(i_clk)
        begin
            if rising_edge(i_clk) then

                if i_en = '1' and
                   unsigned(i_addr) = to_unsigned(k, ADDR_WIDTH) then

                    regs(k) <= i_data;

                end if;

            end if;
        end process;

    end generate;

end architecture;
