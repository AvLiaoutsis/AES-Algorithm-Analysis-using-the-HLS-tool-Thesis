// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _KeySchedule_HH_
#define _KeySchedule_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "aes_main_mux_42_3bkb.h"
#include "KeySchedule_Sbox.h"
#include "KeySchedule_Rcon0.h"

namespace ap_rtl {

struct KeySchedule : public sc_module {
    // Port declarations 17
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<5> > key_address0;
    sc_out< sc_logic > key_ce0;
    sc_in< sc_lv<32> > key_q0;
    sc_out< sc_lv<9> > worda_address0;
    sc_out< sc_logic > worda_ce0;
    sc_out< sc_logic > worda_we0;
    sc_out< sc_lv<32> > worda_d0;
    sc_in< sc_lv<32> > worda_q0;
    sc_out< sc_lv<9> > worda_address1;
    sc_out< sc_logic > worda_ce1;
    sc_in< sc_lv<32> > worda_q1;


    // Module declarations
    KeySchedule(sc_module_name name);
    SC_HAS_PROCESS(KeySchedule);

    ~KeySchedule();

    sc_trace_file* mVcdFile;

    KeySchedule_Sbox* Sbox_U;
    KeySchedule_Rcon0* Rcon0_U;
    aes_main_mux_42_3bkb<1,1,32,32,32,32,2,32>* aes_main_mux_42_3bkb_U0;
    sc_signal< sc_lv<12> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<8> > Sbox_address0;
    sc_signal< sc_logic > Sbox_ce0;
    sc_signal< sc_lv<8> > Sbox_q0;
    sc_signal< sc_lv<8> > Sbox_address1;
    sc_signal< sc_logic > Sbox_ce1;
    sc_signal< sc_lv<8> > Sbox_q1;
    sc_signal< sc_lv<5> > Rcon0_address0;
    sc_signal< sc_logic > Rcon0_ce0;
    sc_signal< sc_lv<8> > Rcon0_q0;
    sc_signal< sc_lv<3> > j_4_fu_361_p2;
    sc_signal< sc_lv<3> > j_4_reg_986;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<4> > tmp_fu_371_p3;
    sc_signal< sc_lv<4> > tmp_reg_991;
    sc_signal< sc_lv<1> > exitcond3_fu_355_p2;
    sc_signal< sc_lv<9> > worda_addr_reg_996;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<3> > i_1_fu_452_p2;
    sc_signal< sc_lv<3> > i_1_reg_1004;
    sc_signal< sc_lv<1> > exitcond2_fu_446_p2;
    sc_signal< sc_lv<10> > j_1_cast2_cast_fu_468_p1;
    sc_signal< sc_lv<10> > j_1_cast2_cast_reg_1014;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > tmp_s_fu_482_p2;
    sc_signal< sc_lv<1> > tmp_s_reg_1022;
    sc_signal< sc_lv<1> > exitcond1_fu_472_p2;
    sc_signal< sc_lv<9> > worda_addr_5_reg_1032;
    sc_signal< sc_lv<9> > worda_addr_6_reg_1037;
    sc_signal< sc_lv<9> > worda_addr_7_reg_1043;
    sc_signal< sc_lv<32> > temp_0_1_reg_1048;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<32> > temp_1_1_reg_1053;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<8> > Sbox_load_reg_1078;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<8> > temp_1_reg_1088;
    sc_signal< sc_lv<10> > tmp_52_cast_cast_fu_891_p1;
    sc_signal< sc_lv<10> > tmp_52_cast_cast_reg_1103;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<9> > worda_addr_9_reg_1113;
    sc_signal< sc_lv<3> > i_3_fu_947_p2;
    sc_signal< sc_lv<3> > i_3_reg_1121;
    sc_signal< sc_lv<32> > tmp_13_fu_957_p6;
    sc_signal< sc_lv<32> > tmp_13_reg_1126;
    sc_signal< sc_lv<1> > exitcond_fu_941_p2;
    sc_signal< sc_lv<6> > j_5_fu_971_p2;
    sc_signal< sc_lv<3> > j_reg_209;
    sc_signal< sc_lv<3> > i_reg_221;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<6> > j_1_reg_232;
    sc_signal< sc_lv<32> > temp_2_cast_fu_875_p1;
    sc_signal< sc_lv<32> > temp_22_reg_244;
    sc_signal< sc_lv<32> > temp_1_cast_fu_871_p1;
    sc_signal< sc_lv<32> > temp_12_reg_254;
    sc_signal< sc_lv<32> > temp_0_1_cast_fu_866_p1;
    sc_signal< sc_lv<32> > temp_02_reg_264;
    sc_signal< sc_lv<32> > Sbox_load_3_cast_fu_880_p1;
    sc_signal< sc_lv<32> > temp_3_reg_274;
    sc_signal< sc_lv<3> > i_2_reg_284;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<32> > tmp_53_fu_437_p1;
    sc_signal< sc_lv<32> > sum_cast_fu_463_p1;
    sc_signal< sc_lv<32> > tmp_58_cast_fu_513_p1;
    sc_signal< sc_lv<32> > tmp_59_cast_fu_524_p1;
    sc_signal< sc_lv<32> > tmp_60_cast_fu_535_p1;
    sc_signal< sc_lv<32> > tmp_50_cast_fu_494_p1;
    sc_signal< sc_lv<32> > tmp_68_cast_fu_610_p1;
    sc_signal< sc_lv<32> > tmp_76_cast_fu_685_p1;
    sc_signal< sc_lv<32> > tmp_34_fu_706_p1;
    sc_signal< sc_lv<32> > tmp_84_cast_fu_781_p1;
    sc_signal< sc_lv<32> > tmp_92_cast_fu_856_p1;
    sc_signal< sc_lv<32> > tmp_96_cast_fu_926_p1;
    sc_signal< sc_lv<32> > tmp_97_cast_fu_936_p1;
    sc_signal< sc_lv<32> > tmp_36_fu_977_p2;
    sc_signal< sc_lv<32> > grp_fu_303_p2;
    sc_signal< sc_lv<6> > grp_fu_309_p4;
    sc_signal< sc_lv<32> > grp_fu_333_p2;
    sc_signal< sc_lv<6> > grp_fu_339_p4;
    sc_signal< sc_lv<2> > tmp_46_fu_367_p1;
    sc_signal< sc_lv<10> > tmp_45_fu_379_p3;
    sc_signal< sc_lv<6> > tmp_47_fu_391_p3;
    sc_signal< sc_lv<11> > p_shl_cast_fu_387_p1;
    sc_signal< sc_lv<11> > p_shl5_cast_fu_399_p1;
    sc_signal< sc_lv<11> > tmp_48_fu_403_p2;
    sc_signal< sc_lv<3> > tmp_49_fu_409_p1;
    sc_signal< sc_lv<8> > tmp_51_fu_419_p4;
    sc_signal< sc_lv<3> > tmp_50_fu_413_p2;
    sc_signal< sc_lv<11> > tmp_52_fu_429_p3;
    sc_signal< sc_lv<4> > i_cast_fu_442_p1;
    sc_signal< sc_lv<4> > sum_fu_458_p2;
    sc_signal< sc_lv<2> > tmp_54_fu_478_p1;
    sc_signal< sc_lv<6> > tmp_33_fu_488_p2;
    sc_signal< sc_lv<8> > tmp_50_cast_cast_fu_503_p1;
    sc_signal< sc_lv<8> > tmp_55_fu_507_p2;
    sc_signal< sc_lv<9> > tmp_50_cast_cast1_fu_499_p1;
    sc_signal< sc_lv<9> > tmp_56_fu_518_p2;
    sc_signal< sc_lv<9> > tmp_57_fu_529_p2;
    sc_signal< sc_lv<4> > tmp_60_fu_544_p1;
    sc_signal< sc_lv<10> > tmp_61_fu_548_p3;
    sc_signal< sc_lv<4> > tmp_59_fu_540_p1;
    sc_signal< sc_lv<1> > grp_fu_295_p3;
    sc_signal< sc_lv<10> > tmp_62_fu_556_p2;
    sc_signal< sc_lv<10> > tmp_63_fu_562_p3;
    sc_signal< sc_lv<6> > grp_fu_319_p2;
    sc_signal< sc_lv<6> > tmp_65_fu_578_p4;
    sc_signal< sc_lv<6> > tmp_66_fu_588_p3;
    sc_signal< sc_lv<10> > tmp_67_cast_fu_596_p3;
    sc_signal< sc_lv<10> > tmp_64_fu_570_p3;
    sc_signal< sc_lv<10> > tmp_67_fu_604_p2;
    sc_signal< sc_lv<4> > tmp_70_fu_619_p1;
    sc_signal< sc_lv<10> > tmp_71_fu_623_p3;
    sc_signal< sc_lv<4> > tmp_69_fu_615_p1;
    sc_signal< sc_lv<1> > grp_fu_325_p3;
    sc_signal< sc_lv<10> > tmp_72_fu_631_p2;
    sc_signal< sc_lv<10> > tmp_73_fu_637_p3;
    sc_signal< sc_lv<6> > grp_fu_349_p2;
    sc_signal< sc_lv<6> > tmp_75_fu_653_p4;
    sc_signal< sc_lv<6> > tmp_77_fu_663_p3;
    sc_signal< sc_lv<10> > tmp_75_cast_fu_671_p3;
    sc_signal< sc_lv<10> > tmp_74_fu_645_p3;
    sc_signal< sc_lv<10> > tmp_76_fu_679_p2;
    sc_signal< sc_lv<4> > p_lshr_f_cast_fu_690_p4;
    sc_signal< sc_lv<4> > addconv_fu_700_p2;
    sc_signal< sc_lv<4> > tmp_80_fu_715_p1;
    sc_signal< sc_lv<10> > tmp_81_fu_719_p3;
    sc_signal< sc_lv<4> > tmp_79_fu_711_p1;
    sc_signal< sc_lv<10> > tmp_82_fu_727_p2;
    sc_signal< sc_lv<10> > tmp_83_fu_733_p3;
    sc_signal< sc_lv<6> > tmp_86_fu_749_p4;
    sc_signal< sc_lv<6> > tmp_87_fu_759_p3;
    sc_signal< sc_lv<10> > tmp_83_cast_fu_767_p3;
    sc_signal< sc_lv<10> > tmp_85_fu_741_p3;
    sc_signal< sc_lv<10> > tmp_84_fu_775_p2;
    sc_signal< sc_lv<4> > tmp_90_fu_790_p1;
    sc_signal< sc_lv<10> > tmp_91_fu_794_p3;
    sc_signal< sc_lv<4> > tmp_89_fu_786_p1;
    sc_signal< sc_lv<10> > tmp_98_fu_802_p2;
    sc_signal< sc_lv<10> > tmp_99_fu_808_p3;
    sc_signal< sc_lv<6> > tmp_101_fu_824_p4;
    sc_signal< sc_lv<6> > tmp_102_fu_834_p3;
    sc_signal< sc_lv<10> > tmp_91_cast_fu_842_p3;
    sc_signal< sc_lv<10> > tmp_100_fu_816_p3;
    sc_signal< sc_lv<10> > tmp_92_fu_850_p2;
    sc_signal< sc_lv<8> > temp_0_fu_861_p2;
    sc_signal< sc_lv<6> > tmp_35_fu_885_p2;
    sc_signal< sc_lv<6> > tmp_94_fu_903_p3;
    sc_signal< sc_lv<10> > tmp_93_fu_895_p3;
    sc_signal< sc_lv<10> > p_shl2_cast_fu_911_p1;
    sc_signal< sc_lv<10> > tmp_95_fu_915_p2;
    sc_signal< sc_lv<10> > tmp_96_fu_921_p2;
    sc_signal< sc_lv<10> > tmp_97_fu_931_p2;
    sc_signal< sc_lv<2> > tmp_13_fu_957_p5;
    sc_signal< sc_lv<12> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<12> ap_ST_fsm_state1;
    static const sc_lv<12> ap_ST_fsm_state2;
    static const sc_lv<12> ap_ST_fsm_state3;
    static const sc_lv<12> ap_ST_fsm_state4;
    static const sc_lv<12> ap_ST_fsm_state5;
    static const sc_lv<12> ap_ST_fsm_state6;
    static const sc_lv<12> ap_ST_fsm_state7;
    static const sc_lv<12> ap_ST_fsm_state8;
    static const sc_lv<12> ap_ST_fsm_state9;
    static const sc_lv<12> ap_ST_fsm_state10;
    static const sc_lv<12> ap_ST_fsm_state11;
    static const sc_lv<12> ap_ST_fsm_state12;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<6> ap_const_lv6_4;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<6> ap_const_lv6_2C;
    static const sc_lv<6> ap_const_lv6_3F;
    static const sc_lv<8> ap_const_lv8_78;
    static const sc_lv<9> ap_const_lv9_F0;
    static const sc_lv<9> ap_const_lv9_168;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<4> ap_const_lv4_F;
    static const sc_lv<6> ap_const_lv6_3C;
    static const sc_lv<6> ap_const_lv6_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_Rcon0_address0();
    void thread_Rcon0_ce0();
    void thread_Sbox_address0();
    void thread_Sbox_address1();
    void thread_Sbox_ce0();
    void thread_Sbox_ce1();
    void thread_Sbox_load_3_cast_fu_880_p1();
    void thread_addconv_fu_700_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
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
    void thread_exitcond1_fu_472_p2();
    void thread_exitcond2_fu_446_p2();
    void thread_exitcond3_fu_355_p2();
    void thread_exitcond_fu_941_p2();
    void thread_grp_fu_295_p3();
    void thread_grp_fu_303_p2();
    void thread_grp_fu_309_p4();
    void thread_grp_fu_319_p2();
    void thread_grp_fu_325_p3();
    void thread_grp_fu_333_p2();
    void thread_grp_fu_339_p4();
    void thread_grp_fu_349_p2();
    void thread_i_1_fu_452_p2();
    void thread_i_3_fu_947_p2();
    void thread_i_cast_fu_442_p1();
    void thread_j_1_cast2_cast_fu_468_p1();
    void thread_j_4_fu_361_p2();
    void thread_j_5_fu_971_p2();
    void thread_key_address0();
    void thread_key_ce0();
    void thread_p_lshr_f_cast_fu_690_p4();
    void thread_p_shl2_cast_fu_911_p1();
    void thread_p_shl5_cast_fu_399_p1();
    void thread_p_shl_cast_fu_387_p1();
    void thread_sum_cast_fu_463_p1();
    void thread_sum_fu_458_p2();
    void thread_temp_0_1_cast_fu_866_p1();
    void thread_temp_0_fu_861_p2();
    void thread_temp_1_cast_fu_871_p1();
    void thread_temp_2_cast_fu_875_p1();
    void thread_tmp_100_fu_816_p3();
    void thread_tmp_101_fu_824_p4();
    void thread_tmp_102_fu_834_p3();
    void thread_tmp_13_fu_957_p5();
    void thread_tmp_33_fu_488_p2();
    void thread_tmp_34_fu_706_p1();
    void thread_tmp_35_fu_885_p2();
    void thread_tmp_36_fu_977_p2();
    void thread_tmp_45_fu_379_p3();
    void thread_tmp_46_fu_367_p1();
    void thread_tmp_47_fu_391_p3();
    void thread_tmp_48_fu_403_p2();
    void thread_tmp_49_fu_409_p1();
    void thread_tmp_50_cast_cast1_fu_499_p1();
    void thread_tmp_50_cast_cast_fu_503_p1();
    void thread_tmp_50_cast_fu_494_p1();
    void thread_tmp_50_fu_413_p2();
    void thread_tmp_51_fu_419_p4();
    void thread_tmp_52_cast_cast_fu_891_p1();
    void thread_tmp_52_fu_429_p3();
    void thread_tmp_53_fu_437_p1();
    void thread_tmp_54_fu_478_p1();
    void thread_tmp_55_fu_507_p2();
    void thread_tmp_56_fu_518_p2();
    void thread_tmp_57_fu_529_p2();
    void thread_tmp_58_cast_fu_513_p1();
    void thread_tmp_59_cast_fu_524_p1();
    void thread_tmp_59_fu_540_p1();
    void thread_tmp_60_cast_fu_535_p1();
    void thread_tmp_60_fu_544_p1();
    void thread_tmp_61_fu_548_p3();
    void thread_tmp_62_fu_556_p2();
    void thread_tmp_63_fu_562_p3();
    void thread_tmp_64_fu_570_p3();
    void thread_tmp_65_fu_578_p4();
    void thread_tmp_66_fu_588_p3();
    void thread_tmp_67_cast_fu_596_p3();
    void thread_tmp_67_fu_604_p2();
    void thread_tmp_68_cast_fu_610_p1();
    void thread_tmp_69_fu_615_p1();
    void thread_tmp_70_fu_619_p1();
    void thread_tmp_71_fu_623_p3();
    void thread_tmp_72_fu_631_p2();
    void thread_tmp_73_fu_637_p3();
    void thread_tmp_74_fu_645_p3();
    void thread_tmp_75_cast_fu_671_p3();
    void thread_tmp_75_fu_653_p4();
    void thread_tmp_76_cast_fu_685_p1();
    void thread_tmp_76_fu_679_p2();
    void thread_tmp_77_fu_663_p3();
    void thread_tmp_79_fu_711_p1();
    void thread_tmp_80_fu_715_p1();
    void thread_tmp_81_fu_719_p3();
    void thread_tmp_82_fu_727_p2();
    void thread_tmp_83_cast_fu_767_p3();
    void thread_tmp_83_fu_733_p3();
    void thread_tmp_84_cast_fu_781_p1();
    void thread_tmp_84_fu_775_p2();
    void thread_tmp_85_fu_741_p3();
    void thread_tmp_86_fu_749_p4();
    void thread_tmp_87_fu_759_p3();
    void thread_tmp_89_fu_786_p1();
    void thread_tmp_90_fu_790_p1();
    void thread_tmp_91_cast_fu_842_p3();
    void thread_tmp_91_fu_794_p3();
    void thread_tmp_92_cast_fu_856_p1();
    void thread_tmp_92_fu_850_p2();
    void thread_tmp_93_fu_895_p3();
    void thread_tmp_94_fu_903_p3();
    void thread_tmp_95_fu_915_p2();
    void thread_tmp_96_cast_fu_926_p1();
    void thread_tmp_96_fu_921_p2();
    void thread_tmp_97_cast_fu_936_p1();
    void thread_tmp_97_fu_931_p2();
    void thread_tmp_98_fu_802_p2();
    void thread_tmp_99_fu_808_p3();
    void thread_tmp_fu_371_p3();
    void thread_tmp_s_fu_482_p2();
    void thread_worda_address0();
    void thread_worda_address1();
    void thread_worda_ce0();
    void thread_worda_ce1();
    void thread_worda_d0();
    void thread_worda_we0();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
