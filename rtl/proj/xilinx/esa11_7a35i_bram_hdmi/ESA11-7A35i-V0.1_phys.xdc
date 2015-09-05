# Generated by makeXDC.ulp developed by Sven Raiser, Tuebingen, Germany
#
# Board:     ESA11-7A35i-V0.1.brd
# Part Name: FPGA XC7A35T-FGG484, Speedgrade: -2
# Part pkg:  BGA484
# Memory Device: DDR3_SDRAM-]Components-]MT41J128M16XX-125
# Created:   31.03.2015 10:47:48
# Edited:    2015-05-27, by emu

 set_property CFGBVS VCCO [current_design]
 #where value1 is either VCCO or GND

 set_property CONFIG_VOLTAGE 3.3 [current_design]
 #where value2 is the voltage provided to configuration bank 0

set_property PACKAGE_PIN N14 [get_ports RESET_N]
set_property IOSTANDARD LVTTL [get_ports RESET_N]
# set_property DRIVE 4 [get_ports RESET_N]

# set_property PACKAGE_PIN W20 [get_ports i_50MHz]
# set_property IOSTANDARD LVTTL [get_ports i_50MHz]
# set_property DRIVE 4 [get_ports 50MHZ]
# set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk100.clkgen100/clkin1]

set_property PACKAGE_PIN Y19 [get_ports i_100MHz_N]
set_property IOSTANDARD LVDS_25 [get_ports i_100MHz_N]

set_property PACKAGE_PIN Y18 [get_ports i_100MHz_P]
set_property IOSTANDARD LVDS_25 [get_ports i_100MHz_P]
#
#	On board LEDs
#
# set_property PACKAGE_PIN N15 [get_ports FPGA_LED3]
# set_property IOSTANDARD LVTTL [get_ports FPGA_LED3]
# set_property DRIVE 4 [get_ports FPGA_LED1]
# set_property PACKAGE_PIN C13 [get_ports FPGA_LED2]
# set_property IOSTANDARD LVTTL [get_ports FPGA_LED2]
# set_property DRIVE 4 [get_ports FPGA_LED2]

#
#	UARTs
#
set_property PACKAGE_PIN F16 [get_ports UART1_CTS_N]
set_property IOSTANDARD LVTTL [get_ports UART1_CTS_N]
set_property DRIVE 4 [get_ports UART1_CTS_N]
set_property PACKAGE_PIN F15 [get_ports UART1_RTS_N]
set_property IOSTANDARD LVTTL [get_ports UART1_RTS_N]
set_property DRIVE 4 [get_ports UART1_RTS_N]
set_property PACKAGE_PIN E13 [get_ports UART1_RXD]
set_property IOSTANDARD LVTTL [get_ports UART1_RXD]
set_property DRIVE 4 [get_ports UART1_RXD]
set_property PACKAGE_PIN F13 [get_ports UART1_TXD]
set_property IOSTANDARD LVTTL [get_ports UART1_TXD]
set_property DRIVE 4 [get_ports UART1_TXD]

set_property PACKAGE_PIN M17 [get_ports UART2_CTS_N]
set_property IOSTANDARD LVTTL [get_ports UART2_CTS_N]
set_property DRIVE 4 [get_ports UART2_CTS_N]
set_property PACKAGE_PIN L16 [get_ports UART2_RTS_N]
set_property IOSTANDARD LVTTL [get_ports UART2_RTS_N]
set_property DRIVE 4 [get_ports UART2_RTS_N]
set_property PACKAGE_PIN M18 [get_ports UART2_RXD]
set_property IOSTANDARD LVTTL [get_ports UART2_RXD]
set_property DRIVE 4 [get_ports UART2_RXD]
set_property PACKAGE_PIN L18 [get_ports UART2_TXD]
set_property IOSTANDARD LVTTL [get_ports UART2_TXD]
set_property DRIVE 4 [get_ports UART2_TXD]

#
#	SD-Flash on FPGA
#

set_property PACKAGE_PIN H14 [get_ports FPGA_SD_CMD]
set_property IOSTANDARD LVTTL [get_ports FPGA_SD_CMD]
set_property DRIVE 4 [get_ports FPGA_SD_CMD]
set_property PACKAGE_PIN G15 [get_ports FPGA_SD_D0]
set_property IOSTANDARD LVTTL [get_ports FPGA_SD_D0]
set_property DRIVE 4 [get_ports FPGA_SD_D0]
set_property PACKAGE_PIN G16 [get_ports FPGA_SD_D1]
set_property IOSTANDARD LVTTL [get_ports FPGA_SD_D1]
set_property DRIVE 4 [get_ports FPGA_SD_D1]
set_property PACKAGE_PIN G13 [get_ports FPGA_SD_D2]
set_property IOSTANDARD LVTTL [get_ports FPGA_SD_D2]
set_property DRIVE 4 [get_ports FPGA_SD_D2]
set_property PACKAGE_PIN H13 [get_ports FPGA_SD_D3]
set_property IOSTANDARD LVTTL [get_ports FPGA_SD_D3]
set_property DRIVE 4 [get_ports FPGA_SD_D3]
set_property PACKAGE_PIN H15 [get_ports FPGA_SD_SCLK]
set_property IOSTANDARD LVTTL [get_ports FPGA_SD_SCLK]
set_property DRIVE 4 [get_ports FPGA_SD_SCLK]
set_property PACKAGE_PIN J14 [get_ports FPGA_SD_CDET_N]
set_property IOSTANDARD LVTTL [get_ports FPGA_SD_CDET_N]
set_property DRIVE 4 [get_ports FPGA_SD_CDET_N]


#	Other constraints ........................................................
#

# usage depends on the selected strategie. If net not found, a warning results.
#
#	next one is hopefully not used anymore
#
# set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk100in/i_clk]
# set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk100in/o_out__0]

#create_clock -name i_50MHZ -period 20 ns [get_ports I_50MHZ]

# 1001 : create_clock -name {clk100} [get_nets {clk100in.o_out}] -period {10} -add 
# line 16 in e:/daten/ems11_ddr/synplify/rev_1/mlite.fdc

create_clock -name {clk100}  [get_pins {clk100in/IBUFDS_1/O}] -period {8.000}  -add 

# 1002 : define_clock [get_nets {sys_clock_dll.clk0}] -name {clock_dll|clk0_derived_clock} -ref_rise {0.000000} -ref_fall {5.000000} -uncertainty {0.000000} -period {10.000000} -clockgroup {default_clkgroup} -rise {0.000000} -fall {5.000000} 

#create_generated_clock -name {clock_dll|clk0_derived_clock} [get_pins {sys_clock_dll/dcm_inst/CLK0}] -source [get_pins {sys_clock_dll/dcm_inst/CLKIN}] -master_clock {clk100} -add -multiply_by 1

#create_generated_clock -name clk_100 -source [get_pins sys_clock_dll/dcm_inst/CLKIN1] -multiply_by 1 -add -master_clock clk100 [get_pins sys_clock_dll/dcm_inst/CLKOUT0]
#create_generated_clock -name clk_100 -source [get_pins sys_clock_dll/dcm_inst/CLKIN1] -multiply_by 1 -add -master_clock clk100 [get_pins sys_clock_dll/dcm_inst/CLKFBOUT]
#create_generated_clock -name clk_200 -source [get_pins sys_clock_dll/dcm_inst/CLKIN1] -multiply_by 2 -add -master_clock clk100 [get_pins sys_clock_dll/dcm_inst/CLKOUT1]
#create_generated_clock -name clk_50 -source [get_pins sys_clock_dll/dcm_inst/CLKIN1] -edges {1 2 3} -edge_shift {0.000 5.000 10.000} -add -master_clock clk100 [get_pins sys_clock_dll/dcm_inst/CLKOUT4]
#create_generated_clock -name clk_50 -source [get_pins sys_clock_dll/dcm_inst/CLKIN1] -divide_by 2 -add -master_clock clk100 [get_pins sys_clock_dll/dcm_inst/CLKOUT4]

# renaming generated clocks, UG903, p65
create_generated_clock -name clk_100 -source [get_pins sys_clock_dll/dcm_inst/CLKIN1] -master_clock clk100 [get_pins sys_clock_dll/dcm_inst/CLKFBOUT]
create_generated_clock -name clk_200 -source [get_pins sys_clock_dll/dcm_inst/CLKIN1] -master_clock clk100 [get_pins sys_clock_dll/dcm_inst/CLKOUT1]
create_generated_clock -name clk_50 -source [get_pins sys_clock_dll/dcm_inst/CLKIN1] -master_clock clk100 [get_pins sys_clock_dll/dcm_inst/CLKOUT4]

# 1003 : set_multicycle_path -setup -from [get_clocks {clock_dll|clk0_derived_clock}] -to [get_clocks {clock_dll|clk0_derived_clock}] {2} 

#set_multicycle_path -setup -end -from  [get_clocks clk_100] -to  [get_clocks clk_100] {2} 
#set_multicycle_path -hold -end -from  [get_clocks clk_100] -to  [get_clocks clk_100] {1} 



#Constraints which are not forward annotated in XDC and intentionally commented out (unused and unsupported constraints)


#eof