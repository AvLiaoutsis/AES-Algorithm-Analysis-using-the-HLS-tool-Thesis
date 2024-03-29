// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module SubBytes (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        state_address0,
        state_ce0,
        state_we0,
        state_d0,
        state_q0
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] state_address0;
output   state_ce0;
output   state_we0;
output  [31:0] state_d0;
input  [31:0] state_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[3:0] state_address0;
reg state_ce0;
reg state_we0;

(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [7:0] sbox_address0;
reg    sbox_ce0;
wire   [7:0] sbox_q0;
wire   [5:0] tmp_1_cast_fu_75_p1;
reg   [5:0] tmp_1_cast_reg_122;
wire    ap_CS_fsm_state2;
wire   [2:0] i_1_fu_85_p2;
reg   [2:0] i_1_reg_130;
reg   [3:0] state_addr_reg_135;
wire    ap_CS_fsm_state3;
wire   [2:0] j_1_fu_111_p2;
reg   [2:0] j_1_reg_143;
wire    ap_CS_fsm_state4;
reg   [2:0] i_reg_45;
wire   [0:0] exitcond_fu_105_p2;
reg   [2:0] j_reg_56;
wire    ap_CS_fsm_state5;
wire   [0:0] exitcond1_fu_79_p2;
wire   [31:0] tmp_2_cast_fu_100_p1;
wire   [4:0] tmp_fu_67_p3;
wire   [5:0] j_cast1_cast_fu_91_p1;
wire   [5:0] tmp_2_fu_95_p2;
reg   [4:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 5'd1;
end

SubBytes_sbox #(
    .DataWidth( 8 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
sbox_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(sbox_address0),
    .ce0(sbox_ce0),
    .q0(sbox_q0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (exitcond_fu_105_p2 == 1'd1))) begin
        i_reg_45 <= i_1_reg_130;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_reg_45 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond1_fu_79_p2 == 1'd0))) begin
        j_reg_56 <= 3'd0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        j_reg_56 <= j_1_reg_143;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_1_reg_130 <= i_1_fu_85_p2;
        tmp_1_cast_reg_122[4 : 2] <= tmp_1_cast_fu_75_p1[4 : 2];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        j_1_reg_143 <= j_1_fu_111_p2;
        state_addr_reg_135 <= tmp_2_cast_fu_100_p1;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state2) & (1'd1 == exitcond1_fu_79_p2)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (1'd1 == exitcond1_fu_79_p2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sbox_ce0 = 1'b1;
    end else begin
        sbox_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        state_address0 = state_addr_reg_135;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        state_address0 = tmp_2_cast_fu_100_p1;
    end else begin
        state_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state5))) begin
        state_ce0 = 1'b1;
    end else begin
        state_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        state_we0 = 1'b1;
    end else begin
        state_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (1'd1 == exitcond1_fu_79_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (exitcond_fu_105_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign exitcond1_fu_79_p2 = ((i_reg_45 == 3'd4) ? 1'b1 : 1'b0);

assign exitcond_fu_105_p2 = ((j_reg_56 == 3'd4) ? 1'b1 : 1'b0);

assign i_1_fu_85_p2 = (i_reg_45 + 3'd1);

assign j_1_fu_111_p2 = (j_reg_56 + 3'd1);

assign j_cast1_cast_fu_91_p1 = j_reg_56;

assign sbox_address0 = state_q0;

assign state_d0 = sbox_q0;

assign tmp_1_cast_fu_75_p1 = tmp_fu_67_p3;

assign tmp_2_cast_fu_100_p1 = tmp_2_fu_95_p2;

assign tmp_2_fu_95_p2 = (tmp_1_cast_reg_122 + j_cast1_cast_fu_91_p1);

assign tmp_fu_67_p3 = {{i_reg_45}, {2'd0}};

always @ (posedge ap_clk) begin
    tmp_1_cast_reg_122[1:0] <= 2'b00;
    tmp_1_cast_reg_122[5] <= 1'b0;
end

endmodule //SubBytes
