
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Zector_40K_DP_BRAM_IP is
    generic (
        DATA_WIDTH : integer := 40;
        ADDR_WIDTH : integer := 10
    );
    port (
        clk_a   : in std_logic;
        clk_b   : in std_logic;

        -- Port A:
        en_a    : in std_logic;
        we_a    : in std_logic;
        addr_a  : in std_logic_vector(ADDR_WIDTH-1 downto 0);
        di_a    : in std_logic_vector(DATA_WIDTH-1 downto 0);
        do_a    : out std_logic_vector(DATA_WIDTH-1 downto 0);

        -- Port B: 
        en_b    : in std_logic;
        we_b    : in std_logic;
        addr_b  : in std_logic_vector(ADDR_WIDTH-1 downto 0);
        di_b    : in std_logic_vector(DATA_WIDTH-1 downto 0);
        do_b    : out std_logic_vector(DATA_WIDTH-1 downto 0)
    );
end entity;

architecture rtl of Zector_40K_DP_BRAM_IP is

    component CC_BRAM_40K is
        generic (
            CAS         : string := "NONE";
            A_RD_WIDTH  : integer := 0;
            B_RD_WIDTH  : integer := 0;
            A_WR_WIDTH  : integer := 0;
            B_WR_WIDTH  : integer := 0;
            RAM_MODE    : string := "TDP";
            A_WR_MODE   : string := "NO_CHANGE";
            B_WR_MODE   : string := "NO_CHANGE";
            A_DO_REG    : integer := 0;
            B_DO_REG    : integer := 0
        );
        port (
            A_CLK, B_CLK : in std_logic;
            A_EN, B_EN   : in std_logic;
            A_WE, B_WE   : in std_logic;

            A_ADDR, B_ADDR : in std_logic_vector(15 downto 0);
            A_DI, B_DI     : in std_logic_vector(39 downto 0);
            A_BM, B_BM     : in std_logic_vector(39 downto 0);
            A_DO, B_DO     : out std_logic_vector(39 downto 0);

            A_CO, B_CO     : out std_logic;

            A_ECC_1B_ERR, B_ECC_1B_ERR : out std_logic;
            A_ECC_2B_ERR, B_ECC_2B_ERR : out std_logic
        );
    end component;

    signal bram_addr_a  : std_logic_vector(15 downto 0);
    signal bram_addr_b  : std_logic_vector(15 downto 0);

    signal bram_di_a    : std_logic_vector(39 downto 0);
    signal bram_di_b    : std_logic_vector(39 downto 0);
    signal bram_do_a    : std_logic_vector(39 downto 0);
    signal bram_do_b    : std_logic_vector(39 downto 0);

begin

    -- For 40-bit TDP, word index uses ADDR(15 downto 6)
    bram_addr_a <= addr_a & "000000";
    bram_addr_b <= addr_b & "000000";

    BRAM_INST : CC_BRAM_40K
        generic map (
            RAM_MODE   => "TDP",

            A_RD_WIDTH => 40,
            A_WR_WIDTH => 40,
            B_RD_WIDTH => 40,
            B_WR_WIDTH => 40,

            A_WR_MODE  => "NO_CHANGE",
            B_WR_MODE  => "NO_CHANGE",

            A_DO_REG   => 0,
            B_DO_REG   => 0
        )
        port map (
            -- Clocks
            A_CLK => clk_a,
            B_CLK => clk_b,

            -- Enables
            A_EN => en_a,
            B_EN => en_b,

            -- Write enables
            A_WE => we_a,
            B_WE => we_b,

            -- Addresses
            A_ADDR => bram_addr_a,
            B_ADDR => bram_addr_b,

            -- Input data
            A_DI => di_a,
            B_DI => di_b,

            -- Write masks
            A_BM => x"FFFFFFFFFF",
            B_BM => x"FFFFFFFFFF",

            -- Output data
            A_DO => do_a,
            B_DO => do_b,


            -- ECC flags unused
            A_ECC_1B_ERR => open,
            B_ECC_1B_ERR => open,
            A_ECC_2B_ERR => open,
            B_ECC_2B_ERR => open
        );

end architecture;
