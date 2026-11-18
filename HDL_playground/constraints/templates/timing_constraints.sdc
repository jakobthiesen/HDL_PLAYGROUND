# GateMate CCGM1A1 - nextpnr Timing Constraints Template
# This file lives in constraints/templates and is not passed to nextpnr
# unless you copy it to constraints/ and select it as the SDC file.
#
# Target: nextpnr-himbaechel (verify syntax with your installed version)
#
# All lines are comments. Remove the leading '#' only from constraints
# you have adapted to your synthesized design.
#
# SDC syntax uses Tcl-style commands and selectors.
# Clock period is specified in nanoseconds: period_ns = 1000 / frequency_MHz.
# Example: 200 MHz => 5.000 ns; 100 MHz => 10.000 ns.
#
# Supported clock command (nextpnr SDC subset):
# create_clock -name <clock_name> -period <period_ns> [<selector>]
#
# Supported object selectors (used inside clock constraints):
# get_ports {<top_level_port>}     Select a top-level port.
# get_nets  {<net_name>}           Select a net in the synthesized design.
# get_pins  {<cell_name>/<pin>}    Select a cell pin (if exposed).
# get_cells {<cell_name>}          Select a cell (where applicable).
#
# Complete examples (commented out):
# create_clock -name ref_clk -period 100.000 [get_ports {clk_i}]
# create_clock -name clk_200 -period 5.000 [get_nets {w_clk_i}]
# create_clock -name clk_100 -period 10.000 [get_pins {pll_inst/CLK_OUT}]
#
# Additional recognized command:
# set_false_path ...               Recognized by some nextpnr parsers,
#                                  but not implemented in the inspected source.
#                                  Do not rely on it for timing exceptions.
#
# NOT CONFIRMED SUPPORTED by this nextpnr SDC subset:
# create_generated_clock, set_input_delay, set_output_delay,
# set_clock_groups, set_multicycle_path.
#
# Notes:
# - Names must match objects in the synthesized netlist, not necessarily VHDL names.
# - A PLL's configured output frequency does not by itself prove that the
#   timing engine has constrained the downstream clock domain.
# - Confirm the clock domains and timing results in nextpnr's timing report.
# - These commands describe timing requirements; they do not generate clocks.
