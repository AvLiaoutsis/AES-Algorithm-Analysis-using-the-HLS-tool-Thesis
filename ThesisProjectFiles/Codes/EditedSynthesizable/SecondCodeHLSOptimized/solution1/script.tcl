############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project SecondCodeHLSOptimized
set_top Cipher
add_files AES_Encrypt.c
add_files -tb test.c
open_solution "solution1"
set_part {xczu7eg-ffvf1517-1l-i} -tool vivado
create_clock -period 10 -name default
source "./SecondCodeHLSOptimized/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -rtl vhdl
export_design -format ip_catalog
