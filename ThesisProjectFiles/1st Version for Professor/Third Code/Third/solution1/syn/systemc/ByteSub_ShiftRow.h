// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _ByteSub_ShiftRow_HH_
#define _ByteSub_ShiftRow_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "KeySchedule_Sbox.h"

namespace ap_rtl {

struct ByteSub_ShiftRow : public sc_module {
    // Port declarations 16
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<5> > statemt_address0;
    sc_out< sc_logic > statemt_ce0;
    sc_out< sc_logic > statemt_we0;
    sc_out< sc_lv<32> > statemt_d0;
    sc_in< sc_lv<32> > statemt_q0;
    sc_out< sc_lv<5> > statemt_address1;
    sc_out< sc_logic > statemt_ce1;
    sc_out< sc_logic > statemt_we1;
    sc_out< sc_lv<32> > statemt_d1;
    sc_in< sc_lv<32> > statemt_q1;


    // Module declarations
    ByteSub_ShiftRow(sc_module_name name);
    SC_HAS_PROCESS(ByteSub_ShiftRow);

    ~ByteSub_ShiftRow();

    sc_trace_file* mVcdFile;

    KeySchedule_Sbox* Sbox_U;
    sc_signal< sc_lv<16> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<8> > Sbox_address0;
    sc_signal< sc_logic > Sbox_ce0;
    sc_signal< sc_lv<8> > Sbox_q0;
    sc_signal< sc_lv<8> > Sbox_address1;
    sc_signal< sc_logic > Sbox_ce1;
    sc_signal< sc_lv<8> > Sbox_q1;
    sc_signal< sc_lv<8> > reg_338;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<8> > reg_342;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<8> > reg_347;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<8> > reg_352;
    sc_signal< sc_lv<5> > statemt_addr_8_reg_428;
    sc_signal< sc_lv<5> > statemt_addr_9_reg_433;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<5> > statemt_addr_10_reg_448;
    sc_signal< sc_lv<5> > statemt_addr_11_reg_453;
    sc_signal< sc_lv<8> > Sbox_addr_2_gep_fu_104_p3;
    sc_signal< sc_lv<8> > Sbox_addr_3_gep_fu_113_p3;
    sc_signal< sc_lv<5> > statemt_addr_12_reg_468;
    sc_signal< sc_lv<5> > statemt_addr_13_reg_473;
    sc_signal< sc_lv<8> > Sbox_addr_4_gep_fu_140_p3;
    sc_signal< sc_lv<8> > Sbox_addr_5_gep_fu_149_p3;
    sc_signal< sc_lv<5> > statemt_addr_14_reg_488;
    sc_signal< sc_lv<5> > statemt_addr_15_reg_493;
    sc_signal< sc_lv<8> > temp_1_reg_498;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<8> > Sbox_load_4_reg_503;
    sc_signal< sc_lv<8> > Sbox_addr_6_gep_fu_176_p3;
    sc_signal< sc_lv<8> > Sbox_addr_7_gep_fu_185_p3;
    sc_signal< sc_lv<5> > statemt_addr_16_reg_518;
    sc_signal< sc_lv<5> > statemt_addr_17_reg_523;
    sc_signal< sc_lv<8> > temp_2_reg_528;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<8> > Sbox_load_6_reg_533;
    sc_signal< sc_lv<8> > Sbox_addr_8_gep_fu_212_p3;
    sc_signal< sc_lv<8> > Sbox_addr_9_gep_fu_221_p3;
    sc_signal< sc_lv<5> > statemt_addr_18_reg_548;
    sc_signal< sc_lv<5> > statemt_addr_19_reg_553;
    sc_signal< sc_lv<5> > statemt_addr_reg_558;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<8> > temp_3_reg_563;
    sc_signal< sc_lv<8> > Sbox_load_8_reg_568;
    sc_signal< sc_lv<8> > Sbox_addr_10_gep_fu_256_p3;
    sc_signal< sc_lv<8> > Sbox_addr_11_gep_fu_265_p3;
    sc_signal< sc_lv<5> > statemt_addr_20_reg_583;
    sc_signal< sc_lv<8> > Sbox_load_9_reg_588;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<8> > Sbox_load_10_reg_593;
    sc_signal< sc_lv<8> > Sbox_addr_12_gep_fu_284_p3;
    sc_signal< sc_lv<8> > Sbox_addr_13_gep_fu_293_p3;
    sc_signal< sc_lv<5> > statemt_addr_21_reg_608;
    sc_signal< sc_lv<5> > statemt_addr_22_reg_613;
    sc_signal< sc_lv<8> > Sbox_addr_14_gep_fu_320_p3;
    sc_signal< sc_lv<8> > Sbox_addr_15_gep_fu_329_p3;
    sc_signal< sc_lv<32> > Sbox_load_cast_fu_356_p1;
    sc_signal< sc_lv<32> > Sbox_load_1_cast_fu_361_p1;
    sc_signal< sc_lv<32> > Sbox_load_2_cast_fu_371_p1;
    sc_signal< sc_lv<32> > temp_cast_fu_366_p1;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<32> > Sbox_load_4_cast_fu_380_p1;
    sc_signal< sc_lv<32> > temp_1_cast_fu_376_p1;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<32> > Sbox_load_6_cast_fu_388_p1;
    sc_signal< sc_lv<32> > temp_2_cast_fu_384_p1;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<32> > Sbox_load_8_cast_fu_392_p1;
    sc_signal< sc_lv<32> > Sbox_load_9_cast_fu_396_p1;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_lv<32> > Sbox_load_10_cast_fu_404_p1;
    sc_signal< sc_lv<32> > temp_3_cast_fu_400_p1;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_lv<32> > Sbox_load_11_cast_fu_408_p1;
    sc_signal< sc_lv<32> > Sbox_load_12_cast_fu_413_p1;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_lv<32> > Sbox_load_13_cast_fu_418_p1;
    sc_signal< sc_lv<32> > Sbox_load_14_cast_fu_423_p1;
    sc_signal< sc_lv<16> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<16> ap_ST_fsm_state1;
    static const sc_lv<16> ap_ST_fsm_state2;
    static const sc_lv<16> ap_ST_fsm_state3;
    static const sc_lv<16> ap_ST_fsm_state4;
    static const sc_lv<16> ap_ST_fsm_state5;
    static const sc_lv<16> ap_ST_fsm_state6;
    static const sc_lv<16> ap_ST_fsm_state7;
    static const sc_lv<16> ap_ST_fsm_state8;
    static const sc_lv<16> ap_ST_fsm_state9;
    static const sc_lv<16> ap_ST_fsm_state10;
    static const sc_lv<16> ap_ST_fsm_state11;
    static const sc_lv<16> ap_ST_fsm_state12;
    static const sc_lv<16> ap_ST_fsm_state13;
    static const sc_lv<16> ap_ST_fsm_state14;
    static const sc_lv<16> ap_ST_fsm_state15;
    static const sc_lv<16> ap_ST_fsm_state16;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_C;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_Sbox_addr_10_gep_fu_256_p3();
    void thread_Sbox_addr_11_gep_fu_265_p3();
    void thread_Sbox_addr_12_gep_fu_284_p3();
    void thread_Sbox_addr_13_gep_fu_293_p3();
    void thread_Sbox_addr_14_gep_fu_320_p3();
    void thread_Sbox_addr_15_gep_fu_329_p3();
    void thread_Sbox_addr_2_gep_fu_104_p3();
    void thread_Sbox_addr_3_gep_fu_113_p3();
    void thread_Sbox_addr_4_gep_fu_140_p3();
    void thread_Sbox_addr_5_gep_fu_149_p3();
    void thread_Sbox_addr_6_gep_fu_176_p3();
    void thread_Sbox_addr_7_gep_fu_185_p3();
    void thread_Sbox_addr_8_gep_fu_212_p3();
    void thread_Sbox_addr_9_gep_fu_221_p3();
    void thread_Sbox_address0();
    void thread_Sbox_address1();
    void thread_Sbox_ce0();
    void thread_Sbox_ce1();
    void thread_Sbox_load_10_cast_fu_404_p1();
    void thread_Sbox_load_11_cast_fu_408_p1();
    void thread_Sbox_load_12_cast_fu_413_p1();
    void thread_Sbox_load_13_cast_fu_418_p1();
    void thread_Sbox_load_14_cast_fu_423_p1();
    void thread_Sbox_load_1_cast_fu_361_p1();
    void thread_Sbox_load_2_cast_fu_371_p1();
    void thread_Sbox_load_4_cast_fu_380_p1();
    void thread_Sbox_load_6_cast_fu_388_p1();
    void thread_Sbox_load_8_cast_fu_392_p1();
    void thread_Sbox_load_9_cast_fu_396_p1();
    void thread_Sbox_load_cast_fu_356_p1();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_statemt_addr_10_reg_448();
    void thread_statemt_addr_11_reg_453();
    void thread_statemt_addr_12_reg_468();
    void thread_statemt_addr_13_reg_473();
    void thread_statemt_addr_14_reg_488();
    void thread_statemt_addr_15_reg_493();
    void thread_statemt_addr_16_reg_518();
    void thread_statemt_addr_17_reg_523();
    void thread_statemt_addr_18_reg_548();
    void thread_statemt_addr_19_reg_553();
    void thread_statemt_addr_20_reg_583();
    void thread_statemt_addr_21_reg_608();
    void thread_statemt_addr_22_reg_613();
    void thread_statemt_addr_8_reg_428();
    void thread_statemt_addr_9_reg_433();
    void thread_statemt_addr_reg_558();
    void thread_statemt_address0();
    void thread_statemt_address1();
    void thread_statemt_ce0();
    void thread_statemt_ce1();
    void thread_statemt_d0();
    void thread_statemt_d1();
    void thread_statemt_we0();
    void thread_statemt_we1();
    void thread_temp_1_cast_fu_376_p1();
    void thread_temp_2_cast_fu_384_p1();
    void thread_temp_3_cast_fu_400_p1();
    void thread_temp_cast_fu_366_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
