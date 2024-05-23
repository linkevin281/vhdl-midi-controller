## This file is a general .xdc for the Basys3 rev B board for ENGS31/CoSc56
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project
## - these names should match the external ports (_ext_port) in the entity declaration of your shell/top level

##====================================================================
## External_Clock_Port
##====================================================================
## This is a 100 MHz external clock
    set_property PACKAGE_PIN W5 [get_ports {CLK_EXT}]							
        set_property IOSTANDARD LVCMOS33 [get_ports {CLK_EXT}]
        create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {CLK_EXT}]


##====================================================================
## Pmod Header JA
##====================================================================
##Sch name = JA1
set_property PACKAGE_PIN J1 [get_ports {midi_input_port}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {midi_input_port}]


##====================================================================
## Pmod Header JB
##====================================================================
##Sch name = JB1
set_property PACKAGE_PIN A14 [get_ports {data_valid_port}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {data_valid_port}]
##Sch name = JB2
set_property PACKAGE_PIN A16 [get_ports {dac_data_out_port}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {dac_data_out_port}]
##Sch name = JB3
#set_property PACKAGE_PIN B15 [get_ports {store_out}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {store_out}]
##Sch name = JB4
set_property PACKAGE_PIN B16 [get_ports {clk_sys}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {clk_sys}]

 

##====================================================================
## Implementation Assist
##====================================================================	
## These additional constraints are recommended by Digilent, DO NOT REMOVE!
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]

set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]

set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]