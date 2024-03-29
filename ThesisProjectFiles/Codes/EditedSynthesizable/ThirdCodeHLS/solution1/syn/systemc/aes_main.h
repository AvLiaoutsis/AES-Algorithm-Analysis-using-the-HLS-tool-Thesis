// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _aes_main_HH_
#define _aes_main_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "MixColumn_AddRoundKe.h"
#include "KeySchedule.h"
#include "ByteSub_ShiftRow.h"
#include "AddRoundKey.h"
#include "aes_main_worda.h"

namespace ap_rtl {

struct aes_main : public sc_module {
    // Port declarations 23
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
    sc_out< sc_lv<5> > key_address0;
    sc_out< sc_logic > key_ce0;
    sc_in< sc_lv<32> > key_q0;
    sc_out< sc_lv<5> > out_r_address0;
    sc_out< sc_logic > out_r_ce0;
    sc_out< sc_logic > out_r_we0;
    sc_out< sc_lv<32> > out_r_d0;


    // Module declarations
    aes_main(sc_module_name name);
    SC_HAS_PROCESS(aes_main);

    ~aes_main();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    aes_main_worda* worda_U;
    MixColumn_AddRoundKe* grp_MixColumn_AddRoundKe_fu_96;
    KeySchedule* grp_KeySchedule_fu_106;
    ByteSub_ShiftRow* grp_ByteSub_ShiftRow_fu_118;
    AddRoundKey* grp_AddRoundKey_fu_126;
    sc_signal< sc_lv<13> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<9> > worda_address0;
    sc_signal< sc_logic > worda_ce0;
    sc_signal< sc_logic > worda_we0;
    sc_signal< sc_lv<32> > worda_q0;
    sc_signal< sc_lv<9> > worda_address1;
    sc_signal< sc_logic > worda_ce1;
    sc_signal< sc_lv<32> > worda_q1;
    sc_signal< sc_lv<4> > tmp_i_fu_143_p2;
    sc_signal< sc_lv<4> > tmp_i_reg_169;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<32> > i_1_i_cast1_fu_149_p1;
    sc_signal< sc_lv<32> > i_1_i_cast1_reg_174;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<5> > i_fu_160_p2;
    sc_signal< sc_lv<5> > i_reg_182;
    sc_signal< sc_lv<1> > exitcond2_i_fu_154_p2;
    sc_signal< sc_logic > grp_MixColumn_AddRoundKe_fu_96_ap_start;
    sc_signal< sc_logic > grp_MixColumn_AddRoundKe_fu_96_ap_done;
    sc_signal< sc_logic > grp_MixColumn_AddRoundKe_fu_96_ap_idle;
    sc_signal< sc_logic > grp_MixColumn_AddRoundKe_fu_96_ap_ready;
    sc_signal< sc_lv<5> > grp_MixColumn_AddRoundKe_fu_96_statemt_address0;
    sc_signal< sc_logic > grp_MixColumn_AddRoundKe_fu_96_statemt_ce0;
    sc_signal< sc_logic > grp_MixColumn_AddRoundKe_fu_96_statemt_we0;
    sc_signal< sc_lv<32> > grp_MixColumn_AddRoundKe_fu_96_statemt_d0;
    sc_signal< sc_lv<5> > grp_MixColumn_AddRoundKe_fu_96_statemt_address1;
    sc_signal< sc_logic > grp_MixColumn_AddRoundKe_fu_96_statemt_ce1;
    sc_signal< sc_logic > grp_MixColumn_AddRoundKe_fu_96_statemt_we1;
    sc_signal< sc_lv<32> > grp_MixColumn_AddRoundKe_fu_96_statemt_d1;
    sc_signal< sc_lv<9> > grp_MixColumn_AddRoundKe_fu_96_worda_address0;
    sc_signal< sc_logic > grp_MixColumn_AddRoundKe_fu_96_worda_ce0;
    sc_signal< sc_lv<9> > grp_MixColumn_AddRoundKe_fu_96_worda_address1;
    sc_signal< sc_logic > grp_MixColumn_AddRoundKe_fu_96_worda_ce1;
    sc_signal< sc_logic > grp_KeySchedule_fu_106_ap_start;
    sc_signal< sc_logic > grp_KeySchedule_fu_106_ap_done;
    sc_signal< sc_logic > grp_KeySchedule_fu_106_ap_idle;
    sc_signal< sc_logic > grp_KeySchedule_fu_106_ap_ready;
    sc_signal< sc_lv<5> > grp_KeySchedule_fu_106_key_address0;
    sc_signal< sc_logic > grp_KeySchedule_fu_106_key_ce0;
    sc_signal< sc_lv<9> > grp_KeySchedule_fu_106_worda_address0;
    sc_signal< sc_logic > grp_KeySchedule_fu_106_worda_ce0;
    sc_signal< sc_logic > grp_KeySchedule_fu_106_worda_we0;
    sc_signal< sc_lv<32> > grp_KeySchedule_fu_106_worda_d0;
    sc_signal< sc_lv<9> > grp_KeySchedule_fu_106_worda_address1;
    sc_signal< sc_logic > grp_KeySchedule_fu_106_worda_ce1;
    sc_signal< sc_logic > grp_ByteSub_ShiftRow_fu_118_ap_start;
    sc_signal< sc_logic > grp_ByteSub_ShiftRow_fu_118_ap_done;
    sc_signal< sc_logic > grp_ByteSub_ShiftRow_fu_118_ap_idle;
    sc_signal< sc_logic > grp_ByteSub_ShiftRow_fu_118_ap_ready;
    sc_signal< sc_lv<5> > grp_ByteSub_ShiftRow_fu_118_statemt_address0;
    sc_signal< sc_logic > grp_ByteSub_ShiftRow_fu_118_statemt_ce0;
    sc_signal< sc_logic > grp_ByteSub_ShiftRow_fu_118_statemt_we0;
    sc_signal< sc_lv<32> > grp_ByteSub_ShiftRow_fu_118_statemt_d0;
    sc_signal< sc_lv<5> > grp_ByteSub_ShiftRow_fu_118_statemt_address1;
    sc_signal< sc_logic > grp_ByteSub_ShiftRow_fu_118_statemt_ce1;
    sc_signal< sc_logic > grp_ByteSub_ShiftRow_fu_118_statemt_we1;
    sc_signal< sc_lv<32> > grp_ByteSub_ShiftRow_fu_118_statemt_d1;
    sc_signal< sc_logic > grp_AddRoundKey_fu_126_ap_start;
    sc_signal< sc_logic > grp_AddRoundKey_fu_126_ap_done;
    sc_signal< sc_logic > grp_AddRoundKey_fu_126_ap_idle;
    sc_signal< sc_logic > grp_AddRoundKey_fu_126_ap_ready;
    sc_signal< sc_lv<5> > grp_AddRoundKey_fu_126_statemt_address0;
    sc_signal< sc_logic > grp_AddRoundKey_fu_126_statemt_ce0;
    sc_signal< sc_logic > grp_AddRoundKey_fu_126_statemt_we0;
    sc_signal< sc_lv<32> > grp_AddRoundKey_fu_126_statemt_d0;
    sc_signal< sc_lv<5> > grp_AddRoundKey_fu_126_statemt_address1;
    sc_signal< sc_logic > grp_AddRoundKey_fu_126_statemt_ce1;
    sc_signal< sc_logic > grp_AddRoundKey_fu_126_statemt_we1;
    sc_signal< sc_lv<32> > grp_AddRoundKey_fu_126_statemt_d1;
    sc_signal< sc_lv<6> > grp_AddRoundKey_fu_126_n;
    sc_signal< sc_lv<9> > grp_AddRoundKey_fu_126_worda_address0;
    sc_signal< sc_logic > grp_AddRoundKey_fu_126_worda_ce0;
    sc_signal< sc_lv<9> > grp_AddRoundKey_fu_126_worda_address1;
    sc_signal< sc_logic > grp_AddRoundKey_fu_126_worda_ce1;
    sc_signal< sc_lv<4> > i_i_reg_73;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<5> > i_1_i_reg_85;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_logic > ap_reg_grp_MixColumn_AddRoundKe_fu_96_ap_start;
    sc_signal< sc_logic > ap_reg_grp_KeySchedule_fu_106_ap_start;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > ap_reg_grp_ByteSub_ShiftRow_fu_118_ap_start;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > exitcond3_i_fu_137_p2;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_logic > ap_reg_grp_AddRoundKey_fu_126_ap_start;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<13> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<13> ap_ST_fsm_state1;
    static const sc_lv<13> ap_ST_fsm_state2;
    static const sc_lv<13> ap_ST_fsm_state3;
    static const sc_lv<13> ap_ST_fsm_state4;
    static const sc_lv<13> ap_ST_fsm_state5;
    static const sc_lv<13> ap_ST_fsm_state6;
    static const sc_lv<13> ap_ST_fsm_state7;
    static const sc_lv<13> ap_ST_fsm_state8;
    static const sc_lv<13> ap_ST_fsm_state9;
    static const sc_lv<13> ap_ST_fsm_state10;
    static const sc_lv<13> ap_ST_fsm_state11;
    static const sc_lv<13> ap_ST_fsm_state12;
    static const sc_lv<13> ap_ST_fsm_state13;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<6> ap_const_lv6_A;
    static const sc_lv<4> ap_const_lv4_A;
    static const sc_lv<5> ap_const_lv5_10;
    static const sc_lv<5> ap_const_lv5_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
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
    void thread_exitcond2_i_fu_154_p2();
    void thread_exitcond3_i_fu_137_p2();
    void thread_grp_AddRoundKey_fu_126_ap_start();
    void thread_grp_AddRoundKey_fu_126_n();
    void thread_grp_ByteSub_ShiftRow_fu_118_ap_start();
    void thread_grp_KeySchedule_fu_106_ap_start();
    void thread_grp_MixColumn_AddRoundKe_fu_96_ap_start();
    void thread_i_1_i_cast1_fu_149_p1();
    void thread_i_fu_160_p2();
    void thread_key_address0();
    void thread_key_ce0();
    void thread_out_r_address0();
    void thread_out_r_ce0();
    void thread_out_r_d0();
    void thread_out_r_we0();
    void thread_statemt_address0();
    void thread_statemt_address1();
    void thread_statemt_ce0();
    void thread_statemt_ce1();
    void thread_statemt_d0();
    void thread_statemt_d1();
    void thread_statemt_we0();
    void thread_statemt_we1();
    void thread_tmp_i_fu_143_p2();
    void thread_worda_address0();
    void thread_worda_address1();
    void thread_worda_ce0();
    void thread_worda_ce1();
    void thread_worda_we0();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
