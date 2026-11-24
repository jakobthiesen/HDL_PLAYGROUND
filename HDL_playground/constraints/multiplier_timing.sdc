# GateMate CCGM1A1 / nextpnr timing constraint
# 200 MHz optimization target for the multiplier clock (5.000 ns).
# Benchmarks timing capability; it does not change the physical 10 MHz oscillator or PLL configuration.
# Top-level port from entity multiplier_top:
# create_clock -name CFG_CLK -period 10.0 [get_ports {clk_10_MHz}]
# create_clock -name DDS_CLK -period 20.0 [get_ports {clk_dds}] 

create_clock -name CFG_CLK -period 10.0 [get_nets {clk_100_MHz}]
create_clock -name DDS_CLK -period 20.0 [get_nets {clk_25_MHz}] 

