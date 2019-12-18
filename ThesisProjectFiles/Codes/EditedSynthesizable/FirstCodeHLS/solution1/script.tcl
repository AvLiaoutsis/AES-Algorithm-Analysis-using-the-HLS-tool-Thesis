############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project FirstCodeHLS
set_top encrypt_128_key_expand_inline_no_branch
add_files sbox.h
add_files aes.c
add_files -tb gen_test_case.c
open_solution "solution1"
set_part {xczu7eg-ffvf1517-2l-e} -tool vivado
create_clock -period 10 -name default
source "./FirstCodeHLS/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -rtl vhdl
export_design -format ip_catalog
