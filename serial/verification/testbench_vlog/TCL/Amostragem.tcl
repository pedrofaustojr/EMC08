
# NC-Sim Command File
# TOOL:	ncsim	06.10-p001
#
#
# You can restore this configuration with:
#
#     irun -access rwc /home/student/EMC08/digital_A/serial/design/rtl_v/serial_top.v -gui tb_serial_final.v -timescale 1ns/10ps -s -input Amostragem.tcl
#

set tcl_prompt1 {puts -nonewline "ncsim> "}
set tcl_prompt2 {puts -nonewline "> "}
set vlog_format %h
set vhdl_format %v
set real_precision 6
set display_unit auto
set time_unit module
set heap_garbage_size -200
set heap_garbage_time 0
set assert_report_level note
set assert_stop_level error
set autoscope yes
set assert_1164_warnings yes
set pack_assert_off {}
set severity_pack_assert_off {note warning}
set assert_output_stop_level failed
set tcl_debug_level 0
set relax_path_name 0
set vhdl_vcdmap XX01ZX01X
set intovf_severity_level ERROR
set probe_screen_format 0
set rangecnst_severity_level ERROR
set textio_severity_level ERROR
set vital_timing_checks_on 1
set vlog_code_show_force 0
set assert_count_attempts 0
alias . run
alias quit exit
database -open -shm -into waves.shm waves -default
probe -create -database waves tb_serial_final.serial_top_tb.serial_rx_block.serial_rx_detector.aux1_bit_det tb_serial_final.serial_top_tb.serial_rx_block.serial_rx_detector.aux2_bit_det tb_serial_final.serial_top_tb.serial_rx_block.serial_rx_detector.aux2_tran_det tb_serial_final.serial_top_tb.serial_rx_block.serial_rx_detector.aux3_bit_det tb_serial_final.serial_top_tb.serial_rx_block.serial_rx_detector.aux_reset1 tb_serial_final.serial_top_tb.serial_rx_block.serial_rx_detector.aux_reset2 tb_serial_final.serial_top_tb.serial_rx_block.serial_rx_detector.aux_tran_det tb_serial_final.serial_top_tb.serial_rx_block.serial_rx_detector.bit_det tb_serial_final.serial_top_tb.serial_rx_block.serial_rx_detector.clear tb_serial_final.serial_top_tb.serial_rx_block.serial_rx_detector.clear_br tb_serial_final.serial_top_tb.serial_rx_block.serial_rx_detector.counter tb_serial_final.serial_top_tb.serial_rx_block.serial_rx_detector.serial_br_trans_i tb_serial_final.serial_top_tb.serial_rx_block.serial_rx_detector.serial_clear_count_i tb_serial_final.serial_top_tb.serial_rx_block.serial_rx_detector.serial_clock_i tb_serial_final.serial_top_tb.serial_rx_block.serial_rx_detector.serial_reset_i_b tb_serial_final.serial_top_tb.serial_rx_block.serial_rx_detector.serial_rxd_data_i tb_serial_final.serial_top_tb.serial_rx_block.serial_rx_detector.serial_sample_detected_o tb_serial_final.serial_top_tb.serial_rx_block.serial_rx_detector.serial_shift_o tb_serial_final.serial_top_tb.serial_rx_block.serial_rx_detector.serial_transition_detected_o tb_serial_final.serial_top_tb.serial_rx_block.serial_rx_detector.tran_det
probe -create -database waves tb_serial_final.CONTROL_MODE
probe -create -database waves tb_serial_final.br
probe -create -database waves tb_serial_final.p3_0_i
probe -create -database waves tb_serial_final.PACOTE

simvision -input /home/student/EMC08/digital_A/serial/verification/testbench_vlog/Amostragem.tcl.svcf
