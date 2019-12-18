############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project ThirdCodeHLS
set_top aes_main
add_files aes.c
add_files -tb testbench.c
open_solution "solution1"
set_part {xczu7eg-ffvf1517-2-e} -tool vivado
create_clock -period 10 -name default
#source "./ThirdCodeHLS/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
