library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity std_4x4 is
    port (
        clk : in    std_logic;
        A   : in    unsigned(3 downto 0);
        B   : in    unsigned(3 downto 0);
        P   : out   unsigned(7 downto 0)
    );
end entity;

architecture rtl of std_4x4 is


begin

 P <= A*B;   

end architecture;
