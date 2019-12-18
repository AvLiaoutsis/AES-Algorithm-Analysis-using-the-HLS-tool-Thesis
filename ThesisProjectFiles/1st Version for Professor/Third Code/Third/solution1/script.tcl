############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Third
set_top aes_main
add_files CCodedFiles/3rd/aes.c
add_files -tb CCodedFiles/3rd/testbench.c
open_solution "solution1"
set_part {xczu7eg-ffvf1517-1l-i} -tool vivado
create_clock -period 10 -name default
#source "./Third/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -rtl vhdl
export_design -format ip_catalog
