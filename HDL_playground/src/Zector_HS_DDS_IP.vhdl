library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Zector_HS_DDS_IP is
    generic (
        ACCUMUlATOR_WIDTH    : integer := 32;
        LUT_ADDR_WIDTH      : integer := 11;
        LUT_DATA_WIDTH      : integer := 20;
        OUTPUT_WIDTH        : integer := 8

    );

    port(
        clk         : in    std_logic;

        lut_di_0    : in    signed(LUT_DATA_WIDTH-1 downto 0);

        M           : in    unsigned(ACCUMULATOR_WIDTH-1 downto 0);
        phase       : in    signed(ACCUMULATOR_WIDTH-1 downto 0);

        Y           : out   std_logic_vector(OUTPUT_WIDTH-1 downto 0);
        lut_addr_0  : out   unsigned(LUT_ADDR_WIDTH-1 downto 0)

    );
    end entity;

architecture rtl of Zector_HS_DDS_IP is

    --Stage 1: Phase accumulator
    signal accumulator      : unsigned(ACCUMULATOR_WIDTH-1 downto 0) := (others => '0');
    -- constant M              : unsigned(31 downto 0) := to_unsigned(85899345, 32);
    signal phase_word       : unsigned(ACCUMULATOR_WIDTH-1 downto 0) := (others => '0');

    signal dac_reg          :signed(OUTPUT_WIDTH-1 downto 0) := (others => '0');

begin

    -- Generic cfg validation
    -- =======================

    assert ACCUMULATOR_WIDTH >= LUT_ADDR_WIDTH
        report "DDS: Accumulator width is too small"
        severity failure;
    
    assert OUTPUT_WIDTH <= LUT_DATA_WIDTH
        report "DDS: OUTPUT width exceeds LUT data width"
        severity failure;
    
    -- DDS pipelined logic Follows:
    -- ===================================


    dds_pipeline: process(clk)
    begin
        if rising_edge(clk) then
            --Stage 1: accumulate phase
            accumulator <= accumulator+M;

            --Stage 2: Add phase offset
            phase_word <= accumulator + unsigned(phase); -- The phase offset for the sine generation

            --Stage 3: ADDR
            lut_addr_0 <= phase_word(ACCUMUlATOR_WIDTH-1 downto ACCUMULATOR_WIDTH-LUT_ADDR_WIDTH);
            
            --Output data
            dac_reg <= (lut_di_0(LUT_DATA_WIDTH-1 downto LUT_DATA_WIDTH-OUTPUT_WIDTH));
        end if;
    end process;

    Y <= not dac_reg(OUTPUT_WIDTH-1) & std_logic_vector(dac_reg(OUTPUT_WIDTH-2 downto 0));

end architecture;


