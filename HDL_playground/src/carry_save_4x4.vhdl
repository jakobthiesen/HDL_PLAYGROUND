library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity carry_save_4x4 is
    port (
        clk : in    std_logic;
        A   : in    unsigned(3 downto 0);
        B   : in    unsigned(3 downto 0);
        P   : out   unsigned(7 downto 0)
    );
end entity;

architecture rtl of carry_save_4x4 is

    signal X, Y, Z, D : unsigned(7 downto 0);
    signal D1_d1, D1_d2 : unsigned(7 downto 0);
    signal s1, c1 : unsigned(7 downto 0);
    signal s2, c2 : unsigned(7 downto 0);

    signal c1_xy, c1_xz, c1_yz : unsigned(7 downto 0);
    signal c2_xy, c2_xz, c2_yz : unsigned(7 downto 0);
    signal s1_d1 : unsigned(7 downto 0);
    signal s2_d1 : unsigned(7 downto 0);

begin


    process(clk)
    begin
        if rising_edge(clk) then
            --First partial products are generated.
            X <= resize(A, 8) when B(0) = '1' else (others => '0');
            Y <= shift_left(resize(A, 8), 1) when B(1) = '1' else (others => '0');
            Z <= shift_left(resize(A, 8), 2) when B(2) = '1' else (others => '0');
            D <= shift_left(resize(A, 8), 3) when B(3) = '1' else (others => '0');
            
            s1 <= X xor Y xor Z;
            c1_xy <= X and Y;
            c1_xz <= X and Z;
            c1_yz <= Y and Z;

            c1 <= shift_left(c1_xy or c1_xz or c1_yz,1);
            s1_d1 <= s1;
            D1_d1 <= D;
            D1_d2 <= D1_d1;
        
            s2 <= s1_d1 xor c1 xor D1_d2;
            c2_xy <= s1_d1 and c1;
            c2_xz <= s1_d1 and D1_d2;
            c2_yz <= c1 and D1_d2;

            c2 <= shift_left(c2_xy or c2_xz or c2_yz,1);
            s2_d1 <= s2;

            P <= s2_d1 + c2;
        end if;
    end process;

    

end architecture;
