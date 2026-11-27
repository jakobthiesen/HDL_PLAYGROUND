
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


--
entity RFS_SCH_IP is
    port (
        i_clk           : in  std_logic;

        i_bram_data     : in    std_logic_vector(39 downto 0);
        o_bram_data     : out   std_logic_vector(39 downto 0);
        o_bram_addr     : out   std_logic_vector(9 downto 0);

        o_bram_we       : out   std_logic := '0';
        o_bram_en       : out   std_logic := '0';

        o_cfg_data_bank_0   : out   std_logic_vector(31 downto 0);
        o_cfg_data_bank_1   : out   std_logic_vector(31 downto 0);
        o_cfg_data_bank_2   : out   std_logic_vector(31 downto 0);
        o_cfg_data_bank_3   : out   std_logic_vector(31 downto 0);
        i_sta_data_bank_0   : in    std_logic_vector(31 downto 0);
        i_sta_data_bank_1   : in    std_logic_vector(31 downto 0);
        i_sta_data_bank_2   : in    std_logic_vector(31 downto 0);
        i_sta_data_bank_3   : in    std_logic_vector(31 downto 0);

        o_cfg_addr_bank_0   : out   std_logic_vector(3 downto 0);
        o_cfg_addr_bank_1   : out   std_logic_vector(3 downto 0);
        o_cfg_addr_bank_2   : out   std_logic_vector(3 downto 0);
        o_cfg_addr_bank_3   : out   std_logic_vector(3 downto 0);
        o_sta_addr_bank_0   : out   std_logic_vector(3 downto 0);
        o_sta_addr_bank_1   : out   std_logic_vector(3 downto 0);
        o_sta_addr_bank_2   : out   std_logic_vector(3 downto 0);
        o_sta_addr_bank_3   : out   std_logic_vector(3 downto 0);

        o_en_bank_0         : out   std_logic := '0';
        o_en_bank_1         : out   std_logic := '0';
        o_en_bank_2         : out   std_logic := '0';
        o_en_bank_3         : out   std_logic := '0';

        o_rfs_bank_0        : out   std_logic := '0';
        o_rfs_bank_1        : out   std_logic := '0';
        o_rfs_bank_2        : out   std_logic := '0';
        o_rfs_bank_3        : out   std_logic := '0'
    );
end entity;

architecture rtl of RFS_SCH_IP is


begin

end architecture;
