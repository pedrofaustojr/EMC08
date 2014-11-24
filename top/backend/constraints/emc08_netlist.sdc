# ####################################################################

#  Created by Encounter(R) RTL Compiler v07.20-p004_1 on Wed Nov 24 16:05:28 BRT 2010

# ####################################################################

# Set the current design
current_design EMC08

create_clock -name "CLK" -add -period 50.0 -waveform {0.0 25.0} EMC_PADS_INSTANCE/P_CLOCK/Y
set_clock_transition 1.0 [get_clocks CLK]
create_clock -name "MEMCLK" -add -period 25.0 -waveform {0.0 12.5} EMC_PADS_INSTANCE/P_CLOCK_MEM/Y
set_clock_transition 1.0 [get_clocks MEMCLK]
set_load -pin_load 1.5 [get_ports PSEN_B]
set_clock_gating_check -setup 0.0 
set_max_fanout 20.000 [get_ports CLOCK]
set_max_fanout 20.000 [get_ports CLOCK_MEM]
set_max_fanout 20.000 [get_ports RESET_B]
set_max_fanout 20.000 [get_ports PHT]
set_max_fanout 20.000 [get_ports EA_B]
set_max_fanout 20.000 [get_ports TM]
set_max_capacitance 1000.0 [get_ports CLOCK]
set_max_capacitance 1000.0 [get_ports CLOCK_MEM]
set_max_capacitance 1000.0 [get_ports RESET_B]
set_max_capacitance 1000.0 [get_ports PHT]
set_max_capacitance 1000.0 [get_ports EA_B]
set_max_capacitance 1000.0 [get_ports TM]
set_max_capacitance 1000.0 [get_ports PSEN_B]
set_operating_conditions -library D_CELLS_MOSLP_slow_1_62V_125C slow_1_62V_125C
set_input_transition -min 10.0 [get_ports RESET_B]
set_input_transition -max 100.0 [get_ports RESET_B]
set_input_transition -min 10.0 [get_ports {P0[7]}]
set_input_transition -max 100.0 [get_ports {P0[7]}]
set_input_transition -min 10.0 [get_ports {P0[6]}]
set_input_transition -max 100.0 [get_ports {P0[6]}]
set_input_transition -min 10.0 [get_ports {P0[5]}]
set_input_transition -max 100.0 [get_ports {P0[5]}]
set_input_transition -min 10.0 [get_ports {P0[4]}]
set_input_transition -max 100.0 [get_ports {P0[4]}]
set_input_transition -min 10.0 [get_ports {P0[3]}]
set_input_transition -max 100.0 [get_ports {P0[3]}]
set_input_transition -min 10.0 [get_ports {P0[2]}]
set_input_transition -max 100.0 [get_ports {P0[2]}]
set_input_transition -min 10.0 [get_ports {P0[1]}]
set_input_transition -max 100.0 [get_ports {P0[1]}]
set_input_transition -min 10.0 [get_ports {P0[0]}]
set_input_transition -max 100.0 [get_ports {P0[0]}]
set_input_transition -min 10.0 [get_ports {P1[7]}]
set_input_transition -max 100.0 [get_ports {P1[7]}]
set_input_transition -min 10.0 [get_ports {P1[6]}]
set_input_transition -max 100.0 [get_ports {P1[6]}]
set_input_transition -min 10.0 [get_ports {P1[5]}]
set_input_transition -max 100.0 [get_ports {P1[5]}]
set_input_transition -min 10.0 [get_ports {P1[4]}]
set_input_transition -max 100.0 [get_ports {P1[4]}]
set_input_transition -min 10.0 [get_ports {P1[3]}]
set_input_transition -max 100.0 [get_ports {P1[3]}]
set_input_transition -min 10.0 [get_ports {P1[2]}]
set_input_transition -max 100.0 [get_ports {P1[2]}]
set_input_transition -min 10.0 [get_ports {P1[1]}]
set_input_transition -max 100.0 [get_ports {P1[1]}]
set_input_transition -min 10.0 [get_ports {P1[0]}]
set_input_transition -max 100.0 [get_ports {P1[0]}]
set_input_transition -min 10.0 [get_ports {P2[7]}]
set_input_transition -max 100.0 [get_ports {P2[7]}]
set_input_transition -min 10.0 [get_ports {P2[6]}]
set_input_transition -max 100.0 [get_ports {P2[6]}]
set_input_transition -min 10.0 [get_ports {P2[5]}]
set_input_transition -max 100.0 [get_ports {P2[5]}]
set_input_transition -min 10.0 [get_ports {P2[4]}]
set_input_transition -max 100.0 [get_ports {P2[4]}]
set_input_transition -min 10.0 [get_ports {P2[3]}]
set_input_transition -max 100.0 [get_ports {P2[3]}]
set_input_transition -min 10.0 [get_ports {P2[2]}]
set_input_transition -max 100.0 [get_ports {P2[2]}]
set_input_transition -min 10.0 [get_ports {P2[1]}]
set_input_transition -max 100.0 [get_ports {P2[1]}]
set_input_transition -min 10.0 [get_ports {P2[0]}]
set_input_transition -max 100.0 [get_ports {P2[0]}]
set_input_transition -min 10.0 [get_ports {P3[7]}]
set_input_transition -max 100.0 [get_ports {P3[7]}]
set_input_transition -min 10.0 [get_ports {P3[6]}]
set_input_transition -max 100.0 [get_ports {P3[6]}]
set_input_transition -min 10.0 [get_ports {P3[5]}]
set_input_transition -max 100.0 [get_ports {P3[5]}]
set_input_transition -min 10.0 [get_ports {P3[4]}]
set_input_transition -max 100.0 [get_ports {P3[4]}]
set_input_transition -min 10.0 [get_ports {P3[3]}]
set_input_transition -max 100.0 [get_ports {P3[3]}]
set_input_transition -min 10.0 [get_ports {P3[2]}]
set_input_transition -max 100.0 [get_ports {P3[2]}]
set_input_transition -min 10.0 [get_ports {P3[1]}]
set_input_transition -max 100.0 [get_ports {P3[1]}]
set_input_transition -min 10.0 [get_ports {P3[0]}]
set_input_transition -max 100.0 [get_ports {P3[0]}]
set_input_transition -min 10.0 [get_ports PHT]
set_input_transition -max 100.0 [get_ports PHT]
set_input_transition -min 10.0 [get_ports EA_B]
set_input_transition -max 100.0 [get_ports EA_B]
set_ideal_network [get_ports TM]
set_ideal_network [get_ports SE_B]
set_wire_load_mode "enclosed"
set_wire_load_selection_group "4_metls_routing" -library "D_CELLS_MOSLP_slow_1_62V_125C"
set_clock_uncertainty -setup 0.1 [get_clocks CLK]
set_clock_uncertainty -hold 0.1 [get_clocks CLK]
set_clock_latency -source 5.0 [get_clocks CLK]
set_clock_uncertainty -setup 0.1 [get_clocks MEMCLK]
set_clock_uncertainty -hold 0.1 [get_clocks MEMCLK]
set_clock_latency -source 5.0 [get_clocks MEMCLK]
## List of unsupported SDC commands ##
