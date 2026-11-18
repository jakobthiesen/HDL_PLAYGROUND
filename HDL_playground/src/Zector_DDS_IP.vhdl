library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Zector_DDS_IP is
    generic (
        ACCUMUlATOR_WIDTH    : integer := 32;
        LUT_ADDR_WIDTH      : integer := 10;
        LUT_DATA_WIDTH      : integer := 20;
        SCALE_WIDTH         : integer := 16;
        OUTPUT_WIDTH        : integer := 16

    );

    port(
        clk         : in    std_logic;

        lut_di_0    : in    signed(LUT_DATA_WIDTH-1 downto 0);

        lut_di_1    : in    signed(LUT_DATA_WIDTH-1 downto 0);

        M           : in    unsigned(ACCUMULATOR_WIDTH-1 downto 0) := (others => '0');
        phase       : in    signed(ACCUMULATOR_WIDTH-1 downto 0);
        scale       : in    signed(SCALE_WIDTH-1 downto 0) := to_signed(2**(SCALE_WIDTH-1)-1, SCALE_WIDTH);

        Y           : out   std_logic_vector(OUTPUT_WIDTH-1 downto 0);
        lut_addr_0  : out   unsigned(LUT_ADDR_WIDTH-1 downto 0);
        lut_addr_1  : out   unsigned(LUT_ADDR_WIDTH-1 downto 0)

    );
    end entity;

architecture rtl of Zector_DDS_IP is

    constant FRACTION_SIZE  : integer := 8;
    constant SCALE_LOW_BIT  : integer := (SCALE_WIDTH-1)+(LUT_DATA_WIDTH - OUTPUT_WIDTH);

    --Stage 1: Phase accumulator
    signal accumulator      : unsigned(ACCUMULATOR_WIDTH-1 downto 0) := (others => '0');
    -- constant M              : unsigned(31 downto 0) := to_unsigned(85899345, 32);
    signal phase_word       : unsigned(ACCUMULATOR_WIDTH-1 downto 0) := (others => '0');

    --Stage 2: BRAM read alignment
    signal fraction_reg     : unsigned(FRACTION_SIZE-1 downto 0);

    --Stage 3: Differeence and operand delays
    signal diff_reg         : signed(LUT_DATA_WIDTH downto 0);
    signal y0_d1            : signed(LUT_DATA_WIDTH downto 0);
    signal fraction_d1      : unsigned(FRACTION_SIZE-1 downto 0);

    --Stage 4: Multiplication and base delay
    signal product_reg      : signed(LUT_DATA_WIDTH+FRACTION_SIZE+1 downto 0); --+1 from resize fraction to signed.
    signal y0_d2            : signed(LUT_DATA_WIDTH downto 0);

    signal y0_d3            : signed(LUT_DATA_WIDTH downto 0);
    signal Y0_d4            : signed(LUT_DATA_WIDTH downto 0);

    --Stage 5: Interpolation
    signal interp_sum       : signed(LUT_DATA_WIDTH+FRACTION_SIZE+1 downto 0);
    signal interp_reg       : signed(LUT_DATA_WIDTH downto 0);

    --Stage 6: Amplitude scaling
    -- constant SCALE          : signed(15 downto 0) := to_signed(32700,16);
    signal scale_product    : signed(LUT_DATA_WIDTH+SCALE_WIDTH downto 0);
    signal dac_reg          : signed(OUTPUT_WIDTH-1 downto 0) := (others => '0');

    constant dummy_scale : signed(15 downto 0) := to_signed(32767,16);
    constant dummy_m : unsigned(31 downto 0) := to_unsigned(429497, 32);
    constant dummy_phase : signed(31 downto 0) := to_signed(0, 32);

    signal interp_lo_prod   : signed(19 downto 0);
    signal interp_hi_prod   : signed(19 downto 0);

    -- -- Stage 6: Partial amplitude products
    signal scale_lo_product : signed(29 downto 0);
    signal scale_hi_product : signed(28 downto 0);

    -- -- Stage 7: Combine partial products
    signal scale_combined : signed(36 downto 0);

begin

    -- Generic cfg validation
    -- =======================

    assert ACCUMULATOR_WIDTH >= LUT_ADDR_WIDTH+FRACTION_SIZE
        report "DDS: Accumulator width is too small"
        severity failure;
    
    assert OUTPUT_WIDTH <= LUT_DATA_WIDTH
        report "DDS: OUTPUT width exceeds LUT data width"
        severity failure;
    
    assert OUTPUT_WIDTH >= 2
        report "DDS: Output width must be at least 2"
        severity failure;

    assert SCALE_WIDTH >= 2
        report "DDS: Scale width must be at least 2"
        severity failure;


    -- DDS pipelined logic Follows:
    -- ===================================

    phase_word <= accumulator + unsigned(dummy_phase); -- The phase offset for the sine generation

    --The two ROM addresses used for interpolation
    lut_addr_0 <= phase_word(ACCUMUlATOR_WIDTH-1 downto ACCUMULATOR_WIDTH-LUT_ADDR_WIDTH);
    lut_addr_1 <= phase_word(ACCUMULATOR_WIDTH-1 downto ACCUMULATOR_WIDTH-LUT_ADDR_WIDTH)+1;

    -- Combinatorial logic for interpolation
    interp_sum <= shift_left(resize(y0_d3, LUT_DATA_WIDTH+FRACTION_SIZE+2), FRACTION_SIZE) + product_reg; -- +1 from fraction resize to signed, +1 for the resize of LUT data width when loaded = +2

    -- Combinatorial amplitude scaling
    -- scale_product <= interp_reg * scale;
    -- Combine the two registered partial products
    scale_combined <=
        shift_left(resize(scale_hi_product, 37), 8)
        + resize(scale_lo_product, 37);

    dds_pipeline: process(clk)
    begin
        if rising_edge(clk) then
            --Stage 1: accumulate phase
            accumulator <= accumulator+dummy_m;

            --Stage 2: Match fraction to BRAM read
            fraction_reg <= phase_word(ACCUMULATOR_WIDTH-LUT_ADDR_WIDTH-1 downto ACCUMULATOR_WIDTH-LUT_ADDR_WIDTH-FRACTION_SIZE); --Start where LUT addr ends, and go 8 down to for the fraction

            --Stage 3: difference for interpolation
            diff_reg <= resize(lut_di_1, LUT_DATA_WIDTH+1) - resize(lut_di_0, LUT_DATA_WIDTH+1); --When using signed operands, use resize to preserve sign
            y0_d1 <= resize(lut_di_0, LUT_DATA_WIDTH+1);
            fraction_d1 <= fraction_reg;
            --Note how we store things that are aligned in time.
            --the difference must be taken at the same time as y0 is stored.
            --If we later fetch y0 from memory, the system will have moved on in phase.
            --For pipelining this in important.
            --Thus the critical elements for the next stage are:
            --diff, y0, fraction, all these are stoed so they match to the same time.

            --Stage 4: multiplication
            -- product_reg <= diff_reg * signed('0' & fraction_d1);
            interp_lo_prod <= signed('0' & diff_reg(9 downto 0)) * signed('0' & fraction_d1);
            interp_hi_prod <= diff_reg(20 downto 10) * signed('0'&fraction_d1);
            y0_d2 <= y0_d1;

            product_reg <= resize(interp_lo_prod, 30) + shift_left(resize(interp_hi_prod, 30), 10);
            y0_d3 <= y0_d2;

            --Note how y0 is simply passed again because we are now calculating the product between fraction and difference
            --Later we have to add y0 to that, and so we must have y0 at the right time, because the "old" y0 is now overwritten by
            --The next data in the pipeline.

            --Stage 5: interpolate
            interp_reg <= signed(interp_sum(LUT_DATA_WIDTH+FRACTION_SIZE downto FRACTION_SIZE)); --Last 8 bits of the interpolation are fraction by definition.

            -- Stage 6: Calculate two partial products
            scale_lo_product <=
                interp_reg * signed('0' & dummy_scale(7 downto 0));

            scale_hi_product <=
                interp_reg * dummy_scale(15 downto 8);


            -- Stage 6: Calculate two partial products
            dac_reg <= scale_combined(SCALE_LOW_BIT+OUTPUT_WIDTH-1 downto SCALE_LOW_BIT);
        end if;
    end process;

    Y <= not dac_reg(OUTPUT_WIDTH-1) & std_logic_vector(dac_reg(OUTPUT_WIDTH-2 downto 0));

end architecture;


