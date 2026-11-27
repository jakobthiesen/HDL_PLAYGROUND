
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


--
entity RFS_SCH_IP is
    port (
        i_clk        : in  std_logic;

        o_en_bram    : out std_logic;
        o_we_cfg     : out std_logic;

        i_di         : in  std_logic_vector(31 downto 0);
        o_do         : out std_logic_vector(31 downto 0);

        o_addr_bram  : out std_logic_vector(9 downto 0);
        o_addr_cfg   : out std_logic_vector(6 downto 0)
    );
end entity;

architecture rtl of RFS_SCH_IP is

    type state_t is (
        SET_ADDR,
        READ_BRAM,
        WAIT_BRAM,
        CAPTURE_DATA,
        WRITE_CFG,
        NEXT_ADDR
    );

    signal state : state_t := SET_ADDR;

    signal addr_count : unsigned(6 downto 0)
                        := (others => '0');

    signal data_reg : std_logic_vector(31 downto 0)
                      := (others => '0');

begin

    o_addr_bram <= "000" & std_logic_vector(addr_count);
    o_addr_cfg  <= std_logic_vector(addr_count);

    o_do <= data_reg;

    -- Combinational clock enables
    o_en_bram <= '1' when state = READ_BRAM else '0';
    o_we_cfg  <= '1' when state = WRITE_CFG else '0';

    process(i_clk)
    begin
        if rising_edge(i_clk) then

            case state is

                when SET_ADDR =>
                    state <= READ_BRAM;

                when READ_BRAM =>
                    state <= WAIT_BRAM;

                when WAIT_BRAM =>
                    state <= CAPTURE_DATA;

                when CAPTURE_DATA =>
                    data_reg <= i_di;
                    state <= WRITE_CFG;

                when WRITE_CFG =>
                    state <= NEXT_ADDR;

                when NEXT_ADDR =>
                    addr_count <= addr_count + 1;
                    state <= SET_ADDR;

            end case;

        end if;
    end process;

end architecture;
