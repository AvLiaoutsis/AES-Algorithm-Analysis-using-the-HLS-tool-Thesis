############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project First
set_top encrypt_128_key_expand_inline_no_branch
add_files CCodedFiles/1st/aes.c
add_files CCodedFiles/1st/sbox.h
add_files -tb CCodedFiles/1st/gen_test_case.c
open_solution "solution1"
set_part {xczu7eg-ffvf1517-2l-e} -tool vivado
create_clock -period 10 -name default
#source "./First/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -rtl vhdl
export_design -format ip_catalog
