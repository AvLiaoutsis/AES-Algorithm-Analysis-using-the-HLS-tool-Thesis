-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.2
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity SubBytes is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    state_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    state_ce0 : OUT STD_LOGIC;
    state_we0 : OUT STD_LOGIC;
    state_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    state_q0 : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of SubBytes is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (4 downto 0) := "00100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (4 downto 0) := "01000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal sbox_address0 : STD_LOGIC_VECTOR (7 downto 0);
    signal sbox_ce0 : STD_LOGIC;
    signal sbox_q0 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_1_cast_fu_75_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_1_cast_reg_122 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal i_1_fu_85_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal i_1_reg_130 : STD_LOGIC_VECTOR (2 downto 0);
    signal state_addr_reg_135 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal j_1_fu_111_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal j_1_reg_143 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal i_reg_45 : STD_LOGIC_VECTOR (2 downto 0);
    signal exitcond_fu_105_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal j_reg_56 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal exitcond1_fu_79_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_2_cast_fu_100_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_fu_67_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal j_cast1_cast_fu_91_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_2_fu_95_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (4 downto 0);

    component SubBytes_sbox IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (7 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (7 downto 0) );
    end component;



begin
    sbox_U : component SubBytes_sbox
    generic map (
        DataWidth => 8,
        AddressRange => 256,
        AddressWidth => 8)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => sbox_address0,
        ce0 => sbox_ce0,
        q0 => sbox_q0);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    i_reg_45_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (exitcond_fu_105_p2 = ap_const_lv1_1))) then 
                i_reg_45 <= i_1_reg_130;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_reg_45 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;

    j_reg_56_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond1_fu_79_p2 = ap_const_lv1_0))) then 
                j_reg_56 <= ap_const_lv3_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                j_reg_56 <= j_1_reg_143;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_1_reg_130 <= i_1_fu_85_p2;
                    tmp_1_cast_reg_122(4 downto 2) <= tmp_1_cast_fu_75_p1(4 downto 2);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                j_1_reg_143 <= j_1_fu_111_p2;
                state_addr_reg_135 <= tmp_2_cast_fu_100_p1(4 - 1 downto 0);
            end if;
        end if;
    end process;
    tmp_1_cast_reg_122(1 downto 0) <= "00";
    tmp_1_cast_reg_122(5) <= '0';

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, ap_CS_fsm_state3, exitcond_fu_105_p2, exitcond1_fu_79_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_lv1_1 = exitcond1_fu_79_p2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (exitcond_fu_105_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when others =>  
                ap_NS_fsm <= "XXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond1_fu_79_p2)
    begin
        if ((((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_lv1_1 = exitcond1_fu_79_p2)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2, exitcond1_fu_79_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_lv1_1 = exitcond1_fu_79_p2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    exitcond1_fu_79_p2 <= "1" when (i_reg_45 = ap_const_lv3_4) else "0";
    exitcond_fu_105_p2 <= "1" when (j_reg_56 = ap_const_lv3_4) else "0";
    i_1_fu_85_p2 <= std_logic_vector(unsigned(i_reg_45) + unsigned(ap_const_lv3_1));
    j_1_fu_111_p2 <= std_logic_vector(unsigned(j_reg_56) + unsigned(ap_const_lv3_1));
    j_cast1_cast_fu_91_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_reg_56),6));
    sbox_address0 <= state_q0(8 - 1 downto 0);

    sbox_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            sbox_ce0 <= ap_const_logic_1;
        else 
            sbox_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    state_address0_assign_proc : process(state_addr_reg_135, ap_CS_fsm_state3, ap_CS_fsm_state5, tmp_2_cast_fu_100_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            state_address0 <= state_addr_reg_135;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            state_address0 <= tmp_2_cast_fu_100_p1(4 - 1 downto 0);
        else 
            state_address0 <= "XXXX";
        end if; 
    end process;


    state_ce0_assign_proc : process(ap_CS_fsm_state3, ap_CS_fsm_state5)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            state_ce0 <= ap_const_logic_1;
        else 
            state_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    state_d0 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sbox_q0),32));

    state_we0_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            state_we0 <= ap_const_logic_1;
        else 
            state_we0 <= ap_const_logic_0;
        end if; 
    end process;

    tmp_1_cast_fu_75_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_fu_67_p3),6));
    tmp_2_cast_fu_100_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_2_fu_95_p2),32));
    tmp_2_fu_95_p2 <= std_logic_vector(unsigned(tmp_1_cast_reg_122) + unsigned(j_cast1_cast_fu_91_p1));
    tmp_fu_67_p3 <= (i_reg_45 & ap_const_lv2_0);
end behav;