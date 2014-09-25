## Copyright (C) 1991-2007 Altera Corporation
## Your use of Altera Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Altera Program License 
## Subscription Agreement, Altera MegaCore Function License 
## Agreement, or other applicable license agreement, including, 
## without limitation, that your use is for the sole purpose of 
## programming logic devices manufactured by Altera and sold by 
## Altera or its authorized distributors.  Please refer to the 
## applicable agreement for further details.

## VENDOR "Altera"
## PROGRAM "Quartus II"
## VERSION "Version 7.1 Build 156 04/30/2007 SJ Web Edition"

## DATE "04/10/2007 22:52:33"

## 
## Device: Altera EP1C6Q240C8 Package PQFP240
## 

## 
## This Tcl script should be used for PrimeTime (VHDL) only
## 

## This file can be sourced in primetime

set report_default_significant_digits 3
set hierarchy_separator .

set quartus_root "c:/altera/71/quartus/"
set search_path [list . [format "%s%s" $quartus_root "eda/synopsys/primetime/lib"]  ]

set link_path [list *  cyclone_asynch_io_lib.db cyclone_asynch_lcell_lib.db  cyclone_core_mem_lib.db cyclone_lcell_register_lib.db  cyclone_memory_register_lib.db  cyclone_pll_lib.db  alt_vtl.db]

read_vhdl  -vhdl_compiler  cyclone_all_pt.vhd 

##########################
## DESIGN ENTRY SECTION ##
##########################

read_vhdl  -vhdl_compiler Fpmul.vho
current_design FPmul
link
## Set variable timing_propagate_single_condition_min_slew to false only for versions 2004.06 and earlier
regexp {([1-9][0-9][0-9][0-9]\.[0-9][0-9])} $sh_product_version dummy version
if { [string compare "2004.06" $version ] != -1 } {
   set timing_propagate_single_condition_min_slew false
}
set_operating_conditions -analysis_type single
read_sdf Fpmul_vhd.sdo

################################
## TIMING CONSTRAINTS SECTION ##
################################


## Start clock definition ##
# WARNING:  The required clock period is not set. The default value (100 ns) is used. 
create_clock -period 100.000 -waveform {0.000 50.000} [get_ports { en } ] -name en  

set_propagated_clock [all_clocks]
## End clock definition ##

## Start create collections ##
## End create collections ##

## Start global settings ##
## End global settings ##

## Start collection commands definition ##

## End collection commands definition ##

## Start individual pin commands definition ##
## End individual pin commands definition ##

## Start Output pin capacitance definition ##
set_load -pin_load 10 [get_ports { mulout[0] } ]
set_load -pin_load 10 [get_ports { mulout[10] } ]
set_load -pin_load 10 [get_ports { mulout[11] } ]
set_load -pin_load 10 [get_ports { mulout[12] } ]
set_load -pin_load 10 [get_ports { mulout[13] } ]
set_load -pin_load 10 [get_ports { mulout[14] } ]
set_load -pin_load 10 [get_ports { mulout[15] } ]
set_load -pin_load 10 [get_ports { mulout[16] } ]
set_load -pin_load 10 [get_ports { mulout[17] } ]
set_load -pin_load 10 [get_ports { mulout[18] } ]
set_load -pin_load 10 [get_ports { mulout[19] } ]
set_load -pin_load 10 [get_ports { mulout[1] } ]
set_load -pin_load 10 [get_ports { mulout[20] } ]
set_load -pin_load 10 [get_ports { mulout[21] } ]
set_load -pin_load 10 [get_ports { mulout[22] } ]
set_load -pin_load 10 [get_ports { mulout[23] } ]
set_load -pin_load 10 [get_ports { mulout[24] } ]
set_load -pin_load 10 [get_ports { mulout[25] } ]
set_load -pin_load 10 [get_ports { mulout[26] } ]
set_load -pin_load 10 [get_ports { mulout[27] } ]
set_load -pin_load 10 [get_ports { mulout[28] } ]
set_load -pin_load 10 [get_ports { mulout[29] } ]
set_load -pin_load 10 [get_ports { mulout[2] } ]
set_load -pin_load 10 [get_ports { mulout[30] } ]
set_load -pin_load 10 [get_ports { mulout[31] } ]
set_load -pin_load 10 [get_ports { mulout[3] } ]
set_load -pin_load 10 [get_ports { mulout[4] } ]
set_load -pin_load 10 [get_ports { mulout[5] } ]
set_load -pin_load 10 [get_ports { mulout[6] } ]
set_load -pin_load 10 [get_ports { mulout[7] } ]
set_load -pin_load 10 [get_ports { mulout[8] } ]
set_load -pin_load 10 [get_ports { mulout[9] } ]
## End Output pin capacitance definition ##

## Start clock uncertainty definition ##
## End clock uncertainty definition ##

## Start Multicycle and Cut Path definition ##
## End Multicycle and Cut Path definition ##

## Destroy Collections ##

update_timing