############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Second
set_top Cipher
add_files CCodedFiles/2nd/AES_Encrypt.c
add_files -tb CCodedFiles/2nd/test.c
open_solution "solution1"
set_part {xczu7eg-ffvf1517-1l-i} -tool vivado
create_clock -period 10 -name default
#source "./Second/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
