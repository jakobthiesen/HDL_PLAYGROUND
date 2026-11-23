library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity std_16x16 is
    port (
        clk : in    std_logic;
        A   : in    unsigned(15 downto 0);
        B   : in    unsigned(15 downto 0);
        P   : out   unsigned(31 downto 0)
    );
end entity;

architecture rtl of std_16x16 is


begin

 P <= A*B;   

end architecture;
