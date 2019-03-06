## Clock signal
set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports clkin]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports clkin]
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets { clk_rx_ready }];

#Uart Port
set_property -dict {PACKAGE_PIN C4 IOSTANDARD LVCMOS33} [get_ports uart_rx];
set_property -dict {PACKAGE_PIN D4 IOSTANDARD LVCMOS33} [get_ports uart_tx];
