
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


--
entity RFS_SCH_TEST is
    port (
        i_clk        : in  std_logic;

        o_en_bram    : out std_logic;
        o_we_cfg     : out std_logic;

        i_di         : in  std_logic_vector(31 downto 0);
        o_do_0         : out std_logic_vector(31 downto 0);
        o_do_1         : out std_logic_vector(31 downto 0);
        o_do_2         : out std_logic_vector(31 downto 0);

        o_addr_bram  : out std_logic_vector(9 downto 0);
        o_addr_cfg   : out std_logic_vector(6 downto 0)
    );
end entity;


architecture rtl of RFS_SCH_TEST is

    signal state : integer range 0 to 12 := 0;

    signal bram_en   : std_logic := '0';
    signal bram_addr : std_logic_vector(9 downto 0)
                    := (others => '0');

    signal data_reg_0 : std_logic_vector(31 downto 0)
                    := (others => '0');
    signal data_reg_1 : std_logic_vector(31 downto 0)
                    := (others => '0');
    signal data_reg_2 : std_logic_vector(31 downto 0)
                    := (others => '0');

begin

    o_en_bram   <= bram_en;
    o_addr_bram <= bram_addr;

    -- Unused by this debugging implementation
    o_we_cfg   <= '0';
    o_addr_cfg <= (others => '0');

    process(i_clk)
    begin
        if rising_edge(i_clk) then

            -- Default: BRAM read disabled
            bram_en <= '0';

            case state is

                -- -----------------------------
                -- Read BRAM address 0
                -- -----------------------------
                when 0 =>
                    bram_addr <= std_logic_vector(
                        to_unsigned(0, 10)
                    );
                    bram_en <= '1';
                    state <= 1;

                when 1 =>
                    -- BRAM samples the read request
                    state <= 2;

                when 2 =>
                    -- Allow BRAM output to settle
                    state <= 3;

                when 3 =>
                    data_reg_0 <= i_di;
                    o_do_0 <= i_di;
                    state <= 4;

                -- -----------------------------
                -- Read BRAM address 1
                -- -----------------------------
                when 4 =>
                    bram_addr <= std_logic_vector(
                        to_unsigned(1, 10)
                    );
                    bram_en <= '1';
                    state <= 5;

                when 5 =>
                    state <= 6;

                when 6 =>
                    state <= 7;

                when 7 =>
                    data_reg_1 <= i_di;
                    o_do_1 <= i_di;
                    state <= 8;

                -- -----------------------------
                -- Read BRAM address 2
                -- -----------------------------
                when 8 =>
                    bram_addr <= std_logic_vector(
                        to_unsigned(2, 10)
                    );
                    bram_en <= '1';
                    state <= 9;

                when 9 =>
                    state <= 10;

                when 10 =>
                    state <= 11;

                when 11 =>
                    data_reg_2 <= i_di;
                    o_do_2 <= i_di;
                    state <= 12;

                -- -----------------------------
                -- Publish all registers
                -- -----------------------------
                when 12 =>
                    -- o_do_0 <= data_reg_0;
                    -- o_do_1 <= data_reg_1;
                    -- o_do_2 <= data_reg_2;

                    state <= 0;

                when others =>
                    state <= 0;

            end case;
        end if;
    end process;

end architecture;
