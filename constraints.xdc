## Load request switches

set_property PACKAGE_PIN F22 [get_ports l1_req]
set_property IOSTANDARD LVCMOS18 [get_ports l1_req]

set_property PACKAGE_PIN G22 [get_ports l2_req]
set_property IOSTANDARD LVCMOS18 [get_ports l2_req]

set_property PACKAGE_PIN H22 [get_ports l3_req]
set_property IOSTANDARD LVCMOS18 [get_ports l3_req]

set_property PACKAGE_PIN F21 [get_ports l4_req]
set_property IOSTANDARD LVCMOS18 [get_ports l4_req]


## Load enable LEDs

set_property PACKAGE_PIN T22 [get_ports l1_en]
set_property IOSTANDARD LVCMOS33 [get_ports l1_en]

set_property PACKAGE_PIN T21 [get_ports l2_en]
set_property IOSTANDARD LVCMOS33 [get_ports l2_en]

set_property PACKAGE_PIN U22 [get_ports l3_en]
set_property IOSTANDARD LVCMOS33 [get_ports l3_en]

set_property PACKAGE_PIN U21 [get_ports l4_en]
set_property IOSTANDARD LVCMOS33 [get_ports l4_en]


## Status LEDs

set_property PACKAGE_PIN V22 [get_ports overload]
set_property IOSTANDARD LVCMOS33 [get_ports overload]

set_property PACKAGE_PIN W22 [get_ports power_ok]
set_property IOSTANDARD LVCMOS33 [get_ports power_ok]