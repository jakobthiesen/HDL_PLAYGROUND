
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity carry_save_16x16 is
    port (
        clk : in  std_logic;
        A   : in  unsigned(15 downto 0);
        B   : in  unsigned(15 downto 0);
        P   : out unsigned(31 downto 0)
    );
end entity;

architecture rtl of carry_save_16x16 is

    subtype word_t is unsigned(31 downto 0);

    -- Carry-save compressor functions
    function csa_sum(
        x, y, z : word_t
    ) return word_t is
    begin
        return x xor y xor z;
    end function;

    function csa_carry(
        x, y, z : word_t
    ) return word_t is
    begin
        return shift_left(
            (x and y) or
            (x and z) or
            (y and z), 1
        );
    end function;

    -- Pipeline arrays
    type rows_16 is array (0 to 15) of word_t;
    type rows_11 is array (0 to 10) of word_t;
    type rows_8  is array (0 to 7)  of word_t;
    type rows_6  is array (0 to 5)  of word_t;
    type rows_4  is array (0 to 3)  of word_t;
    type rows_3  is array (0 to 2)  of word_t;
    type rows_2  is array (0 to 1)  of word_t;

    signal pp : rows_16 := (others => (others => '0'));

    signal r1 : rows_11 := (others => (others => '0'));
    signal r2 : rows_8  := (others => (others => '0'));
    signal r3 : rows_6  := (others => (others => '0'));
    signal r4 : rows_4  := (others => (others => '0'));
    signal r5 : rows_3  := (others => (others => '0'));
    signal r6 : rows_2  := (others => (others => '0'));

begin

    process(clk)
    begin
        if rising_edge(clk) then

            -- ==========================================
            -- Stage 1: Generate 16 partial products
            -- ==========================================

            for i in 0 to 15 loop
                if B(i) = '1' then
                    pp(i) <= shift_left(resize(A, 32), i);
                else
                    pp(i) <= (others => '0');
                end if;
            end loop;

            -- ==========================================
            -- Stage 2: 16 rows -> 11 rows
            -- 5 compressors, 1 pass-through
            -- ==========================================

            for i in 0 to 4 loop
                r1(2*i) <= csa_sum(
                    pp(3*i), pp(3*i+1), pp(3*i+2)
                );

                r1(2*i+1) <= csa_carry(
                    pp(3*i), pp(3*i+1), pp(3*i+2)
                );
            end loop;

            r1(10) <= pp(15);

            -- ==========================================
            -- Stage 3: 11 rows -> 8 rows
            -- 3 compressors, 2 pass-through
            -- ==========================================

            for i in 0 to 2 loop
                r2(2*i) <= csa_sum(
                    r1(3*i), r1(3*i+1), r1(3*i+2)
                );

                r2(2*i+1) <= csa_carry(
                    r1(3*i), r1(3*i+1), r1(3*i+2)
                );
            end loop;

            r2(6) <= r1(9);
            r2(7) <= r1(10);

            -- ==========================================
            -- Stage 4: 8 rows -> 6 rows
            -- 2 compressors, 2 pass-through
            -- ==========================================

            for i in 0 to 1 loop
                r3(2*i) <= csa_sum(
                    r2(3*i), r2(3*i+1), r2(3*i+2)
                );

                r3(2*i+1) <= csa_carry(
                    r2(3*i), r2(3*i+1), r2(3*i+2)
                );
            end loop;

            r3(4) <= r2(6);
            r3(5) <= r2(7);

            -- ==========================================
            -- Stage 5: 6 rows -> 4 rows
            -- 2 compressors
            -- ==========================================

            for i in 0 to 1 loop
                r4(2*i) <= csa_sum(
                    r3(3*i), r3(3*i+1), r3(3*i+2)
                );

                r4(2*i+1) <= csa_carry(
                    r3(3*i), r3(3*i+1), r3(3*i+2)
                );
            end loop;

            -- ==========================================
            -- Stage 6: 4 rows -> 3 rows
            -- 1 compressor, 1 pass-through
            -- ==========================================

            r5(0) <= csa_sum(r4(0), r4(1), r4(2));
            r5(1) <= csa_carry(r4(0), r4(1), r4(2));

            r5(2) <= r4(3);

            -- ==========================================
            -- Stage 7: 3 rows -> 2 rows
            -- 1 compressor
            -- ==========================================

            r6(0) <= csa_sum(r5(0), r5(1), r5(2));
            r6(1) <= csa_carry(r5(0), r5(1), r5(2));

            -- ==========================================
            -- Stage 8: Final addition
            -- ==========================================

            P <= r6(0) + r6(1);

        end if;
    end process;

end architecture;
