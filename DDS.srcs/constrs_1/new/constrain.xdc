#     input  wire        sys_clk,--PS_CLK_33d3--H16
#     input  wire        rst_n,--POR_nRST--B18
#     input  wire [2:0]  keys,--PL_KEY1--R19
#                             --PL_KEY2--T19
#                             --PL_KEY3--J15
#     output wire [13:0] dac_data,--GPIO2_0N  --H18
#                             --GPIO2_1N  --G18
#                             --GPIO2_2N  --J14
#                             --GPIO2_3N  --G15
#                             --GPIO2_4N  --H20
#                             --GPIO2_5N  --L15
#                             --GPIO2_6N  --J19
#                             --GPIO2_7N  --J16
#                             --GPIO2_8N  --L20
#                             --GPIO2_9N  --L17
#                             --GPIO2_10N --M15
#                             --GPIO2_11N --N16
#                             --GPIO2_12N --P16
#                             --GPIO2_13N --R17
#     output wire        dac_clk,--GPIO2_0P --J18
#     output wire        locked  -- G14

# Clock
set_property PACKAGE_PIN H16 [get_ports sys_clk]
set_property IOSTANDARD LVCMOS33 [get_ports sys_clk]
create_clock -period 20.000 -name sys_clk [get_ports sys_clk]

# Reset
set_property PACKAGE_PIN B19 [get_ports rst_n]
set_property IOSTANDARD LVCMOS33 [get_ports rst_n]

# Keys
set_property PACKAGE_PIN R19 [get_ports {keys[0]}]
set_property PACKAGE_PIN T19 [get_ports {keys[1]}]
set_property PACKAGE_PIN J15 [get_ports {keys[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {keys[*]}]

# DAC data [13:0]
set_property PACKAGE_PIN H18 [get_ports {dac_data[0]}]
set_property PACKAGE_PIN G18 [get_ports {dac_data[1]}]
set_property PACKAGE_PIN J14 [get_ports {dac_data[2]}]
set_property PACKAGE_PIN G15 [get_ports {dac_data[3]}]
set_property PACKAGE_PIN H20 [get_ports {dac_data[4]}]
set_property PACKAGE_PIN L15 [get_ports {dac_data[5]}]
set_property PACKAGE_PIN J19 [get_ports {dac_data[6]}]
set_property PACKAGE_PIN J16 [get_ports {dac_data[7]}]
set_property PACKAGE_PIN L20 [get_ports {dac_data[8]}]
set_property PACKAGE_PIN L17 [get_ports {dac_data[9]}]
set_property PACKAGE_PIN M15 [get_ports {dac_data[10]}]
set_property PACKAGE_PIN N16 [get_ports {dac_data[11]}]
set_property PACKAGE_PIN P16 [get_ports {dac_data[12]}]
set_property PACKAGE_PIN R17 [get_ports {dac_data[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dac_data[*]}]

# DAC clock
set_property PACKAGE_PIN J18 [get_ports dac_clk]
set_property IOSTANDARD LVCMOS33 [get_ports dac_clk]

# PLL locked
set_property PACKAGE_PIN G14 [get_ports locked]
set_property IOSTANDARD LVCMOS33 [get_ports locked]
