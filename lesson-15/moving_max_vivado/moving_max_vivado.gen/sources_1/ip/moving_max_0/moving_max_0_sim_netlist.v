// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2026.1 (win64) Build 6511674 Tue Jun 16 11:02:23 MDT 2026
// Date        : Sun Nov 15 17:31:27 2026
// Host        : DESKTOP-8KUUFF7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/User/Projects/fpga/lesson-15/moving_max_vivado/moving_max_vivado.gen/sources_1/ip/moving_max_0/moving_max_0_sim_netlist.v
// Design      : moving_max_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "moving_max_0,moving_max,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "moving_max,Vivado 2026.1" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module moving_max_0
   (in_data_ce0,
    out_data_ce0,
    out_data_we0,
    ap_clk,
    ap_rst,
    ap_done,
    ap_idle,
    ap_ready,
    ap_start,
    in_data_address0,
    in_data_q0,
    out_data_address0,
    out_data_d0);
  output in_data_ce0;
  output out_data_ce0;
  output out_data_we0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input ap_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) (* X_INTERFACE_MODE = "slave" *) output ap_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) output ap_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) input ap_start;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 in_data_address0 DATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_data_address0, LAYERED_METADATA undef" *) output [5:0]in_data_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 in_data_q0 DATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_data_q0, LAYERED_METADATA undef" *) input [31:0]in_data_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 out_data_address0 DATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_data_address0, LAYERED_METADATA undef" *) output [5:0]out_data_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 out_data_d0 DATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_data_d0, LAYERED_METADATA undef" *) output [31:0]out_data_d0;

  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst;
  wire ap_start;
  wire [5:0]in_data_address0;
  wire in_data_ce0;
  wire [31:0]in_data_q0;
  wire [5:0]out_data_address0;
  wire out_data_ce0;
  wire [31:0]out_data_d0;
  wire out_data_we0;

  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  (* ap_ST_fsm_state1 = "3'b001" *) 
  (* ap_ST_fsm_state2 = "3'b010" *) 
  (* ap_ST_fsm_state3 = "3'b100" *) 
  moving_max_0_moving_max inst
       (.ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_rst(ap_rst),
        .ap_start(ap_start),
        .in_data_address0(in_data_address0),
        .in_data_ce0(in_data_ce0),
        .in_data_q0(in_data_q0),
        .out_data_address0(out_data_address0),
        .out_data_ce0(out_data_ce0),
        .out_data_d0(out_data_d0),
        .out_data_we0(out_data_we0));
endmodule

(* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "moving_max" *) (* ap_ST_fsm_state1 = "3'b001" *) 
(* ap_ST_fsm_state2 = "3'b010" *) (* ap_ST_fsm_state3 = "3'b100" *) (* hls_module = "yes" *) 
module moving_max_0_moving_max
   (ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    in_data_address0,
    in_data_ce0,
    in_data_q0,
    out_data_address0,
    out_data_ce0,
    out_data_we0,
    out_data_d0);
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [5:0]in_data_address0;
  output in_data_ce0;
  input [31:0]in_data_q0;
  output [5:0]out_data_address0;
  output out_data_ce0;
  output out_data_we0;
  output [31:0]out_data_d0;

  wire [3:0]add_ln11_fu_80_p2;
  wire \ap_CS_fsm[1]_i_1_n_0 ;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_rst;
  wire ap_start;
  wire grp_moving_max_Pipeline_MAIN_LOOP_fu_44_n_13;
  wire grp_moving_max_Pipeline_MAIN_LOOP_fu_44_n_14;
  wire grp_moving_max_Pipeline_MAIN_LOOP_fu_44_n_16;
  wire grp_moving_max_Pipeline_MAIN_LOOP_fu_44_n_17;
  wire [5:0]in_data_address0;
  wire in_data_ce0;
  wire [31:0]in_data_q0;
  wire \k_fu_40[3]_i_1_n_0 ;
  wire [3:0]k_fu_40_reg;
  wire [5:0]out_data_address0;
  wire out_data_ce0;
  wire [31:0]out_data_d0;

  assign ap_ready = ap_done;
  assign out_data_we0 = out_data_ce0;
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT4 #(
    .INIT(16'hEEE0)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(grp_moving_max_Pipeline_MAIN_LOOP_fu_44_n_16),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_CS_fsm_state2),
        .I3(ap_start),
        .O(\ap_CS_fsm[1]_i_1_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_moving_max_Pipeline_MAIN_LOOP_fu_44_n_14),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .S(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[1]_i_1_n_0 ),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_moving_max_Pipeline_MAIN_LOOP_fu_44_n_13),
        .Q(ap_CS_fsm_state3),
        .R(ap_rst));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ap_idle_INST_0
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_start),
        .O(ap_idle));
  moving_max_0_moving_max_moving_max_Pipeline_MAIN_LOOP grp_moving_max_Pipeline_MAIN_LOOP_fu_44
       (.D({grp_moving_max_Pipeline_MAIN_LOOP_fu_44_n_13,grp_moving_max_Pipeline_MAIN_LOOP_fu_44_n_14}),
        .E(grp_moving_max_Pipeline_MAIN_LOOP_fu_44_n_16),
        .Q({ap_CS_fsm_state3,ap_CS_fsm_state2,\ap_CS_fsm_reg_n_0_[0] }),
        .ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_enable_reg_pp0_iter1_reg_0(in_data_ce0),
        .ap_loop_init_int_reg(grp_moving_max_Pipeline_MAIN_LOOP_fu_44_n_17),
        .ap_rst(ap_rst),
        .ap_start(ap_start),
        .in_data_address0(in_data_address0),
        .in_data_q0(in_data_q0),
        .\k_fu_40_reg[3] (k_fu_40_reg),
        .out_data_address0(out_data_address0),
        .out_data_ce0(out_data_ce0),
        .out_data_d0(out_data_d0));
  FDRE #(
    .INIT(1'b0)) 
    grp_moving_max_Pipeline_MAIN_LOOP_fu_44_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_moving_max_Pipeline_MAIN_LOOP_fu_44_n_17),
        .Q(in_data_ce0),
        .R(ap_rst));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \k_fu_40[0]_i_1 
       (.I0(k_fu_40_reg[0]),
        .O(add_ln11_fu_80_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \k_fu_40[1]_i_1 
       (.I0(k_fu_40_reg[1]),
        .I1(k_fu_40_reg[0]),
        .O(add_ln11_fu_80_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \k_fu_40[2]_i_1 
       (.I0(k_fu_40_reg[1]),
        .I1(k_fu_40_reg[0]),
        .I2(k_fu_40_reg[2]),
        .O(add_ln11_fu_80_p2[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \k_fu_40[3]_i_1 
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_start),
        .O(\k_fu_40[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \k_fu_40[3]_i_3 
       (.I0(k_fu_40_reg[3]),
        .I1(k_fu_40_reg[1]),
        .I2(k_fu_40_reg[0]),
        .I3(k_fu_40_reg[2]),
        .O(add_ln11_fu_80_p2[3]));
  FDRE #(
    .INIT(1'b0)) 
    \k_fu_40_reg[0] 
       (.C(ap_clk),
        .CE(grp_moving_max_Pipeline_MAIN_LOOP_fu_44_n_16),
        .D(add_ln11_fu_80_p2[0]),
        .Q(k_fu_40_reg[0]),
        .R(\k_fu_40[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \k_fu_40_reg[1] 
       (.C(ap_clk),
        .CE(grp_moving_max_Pipeline_MAIN_LOOP_fu_44_n_16),
        .D(add_ln11_fu_80_p2[1]),
        .Q(k_fu_40_reg[1]),
        .R(\k_fu_40[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \k_fu_40_reg[2] 
       (.C(ap_clk),
        .CE(grp_moving_max_Pipeline_MAIN_LOOP_fu_44_n_16),
        .D(add_ln11_fu_80_p2[2]),
        .Q(k_fu_40_reg[2]),
        .R(\k_fu_40[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \k_fu_40_reg[3] 
       (.C(ap_clk),
        .CE(grp_moving_max_Pipeline_MAIN_LOOP_fu_44_n_16),
        .D(add_ln11_fu_80_p2[3]),
        .Q(k_fu_40_reg[3]),
        .R(\k_fu_40[3]_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "moving_max_flow_control_loop_pipe_sequential_init" *) 
module moving_max_0_moving_max_flow_control_loop_pipe_sequential_init
   (ap_loop_init_int,
    add_ln17_fu_199_p2,
    grp_moving_max_Pipeline_MAIN_LOOP_fu_44_ap_start_reg_reg,
    in_data_address0,
    ap_enable_reg_pp0_iter4_reg,
    ap_loop_init_int_reg_0,
    max_9_fu_62_0,
    max_5_fu_70_1,
    n_fu_540,
    grp_moving_max_Pipeline_MAIN_LOOP_fu_44_ap_ready,
    D,
    ap_done,
    E,
    ap_loop_init_int_reg_1,
    ap_rst,
    ap_clk,
    \n_fu_54_reg[4] ,
    \n_fu_54_reg[4]_0 ,
    \n_fu_54_reg[4]_1 ,
    \n_fu_54_reg[4]_2 ,
    \n_fu_54_reg[4]_3 ,
    ap_loop_init_int_reg_2,
    in_data_address0_5_sp_1,
    out_data_ce0,
    icmp_ln17_reg_413_pp0_iter2_reg,
    ap_enable_reg_pp0_iter3,
    icmp_ln17_reg_413_pp0_iter1_reg,
    ap_enable_reg_pp0_iter2,
    icmp_ln17_reg_413,
    ap_enable_reg_pp0_iter1,
    grp_moving_max_Pipeline_MAIN_LOOP_fu_44_ap_start_reg_reg_0,
    Q,
    ap_start,
    \k_fu_40_reg[3] ,
    ap_loop_exit_ready_pp0_iter3_reg,
    \n_fu_54_reg[6] ,
    \n_fu_54_reg[6]_0 );
  output ap_loop_init_int;
  output [6:0]add_ln17_fu_199_p2;
  output grp_moving_max_Pipeline_MAIN_LOOP_fu_44_ap_start_reg_reg;
  output [5:0]in_data_address0;
  output ap_enable_reg_pp0_iter4_reg;
  output ap_loop_init_int_reg_0;
  output [0:0]max_9_fu_62_0;
  output [0:0]max_5_fu_70_1;
  output n_fu_540;
  output grp_moving_max_Pipeline_MAIN_LOOP_fu_44_ap_ready;
  output [1:0]D;
  output ap_done;
  output [0:0]E;
  output ap_loop_init_int_reg_1;
  input ap_rst;
  input ap_clk;
  input \n_fu_54_reg[4] ;
  input \n_fu_54_reg[4]_0 ;
  input \n_fu_54_reg[4]_1 ;
  input \n_fu_54_reg[4]_2 ;
  input \n_fu_54_reg[4]_3 ;
  input ap_loop_init_int_reg_2;
  input in_data_address0_5_sp_1;
  input out_data_ce0;
  input [0:0]icmp_ln17_reg_413_pp0_iter2_reg;
  input ap_enable_reg_pp0_iter3;
  input [0:0]icmp_ln17_reg_413_pp0_iter1_reg;
  input ap_enable_reg_pp0_iter2;
  input [0:0]icmp_ln17_reg_413;
  input ap_enable_reg_pp0_iter1;
  input grp_moving_max_Pipeline_MAIN_LOOP_fu_44_ap_start_reg_reg_0;
  input [2:0]Q;
  input ap_start;
  input [3:0]\k_fu_40_reg[3] ;
  input ap_loop_exit_ready_pp0_iter3_reg;
  input \n_fu_54_reg[6] ;
  input \n_fu_54_reg[6]_0 ;

  wire [1:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire [6:0]add_ln17_fu_199_p2;
  wire ap_clk;
  wire ap_done;
  wire ap_done_cache;
  wire ap_done_cache_i_1_n_0;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter2;
  wire ap_enable_reg_pp0_iter3;
  wire ap_enable_reg_pp0_iter4_reg;
  wire ap_loop_exit_ready_pp0_iter3_reg;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1_n_0;
  wire ap_loop_init_int_reg_0;
  wire ap_loop_init_int_reg_1;
  wire ap_loop_init_int_reg_2;
  wire ap_rst;
  wire ap_start;
  wire grp_moving_max_Pipeline_MAIN_LOOP_fu_44_ap_ready;
  wire grp_moving_max_Pipeline_MAIN_LOOP_fu_44_ap_start_reg0;
  wire grp_moving_max_Pipeline_MAIN_LOOP_fu_44_ap_start_reg_reg;
  wire grp_moving_max_Pipeline_MAIN_LOOP_fu_44_ap_start_reg_reg_0;
  wire [0:0]icmp_ln17_reg_413;
  wire [0:0]icmp_ln17_reg_413_pp0_iter1_reg;
  wire [0:0]icmp_ln17_reg_413_pp0_iter2_reg;
  wire [5:0]in_data_address0;
  wire in_data_address0_5_sn_1;
  wire [3:0]\k_fu_40_reg[3] ;
  wire [0:0]max_5_fu_70_1;
  wire [0:0]max_9_fu_62_0;
  wire n_fu_540;
  wire \n_fu_54_reg[4] ;
  wire \n_fu_54_reg[4]_0 ;
  wire \n_fu_54_reg[4]_1 ;
  wire \n_fu_54_reg[4]_2 ;
  wire \n_fu_54_reg[4]_3 ;
  wire \n_fu_54_reg[6] ;
  wire \n_fu_54_reg[6]_0 ;
  wire out_data_ce0;

  assign in_data_address0_5_sn_1 = in_data_address0_5_sp_1;
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h002E)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(ap_done),
        .I1(Q[0]),
        .I2(ap_start),
        .I3(Q[1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h000D)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(ap_done),
        .I1(Q[1]),
        .I2(E),
        .I3(Q[0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hDC)) 
    ap_done_cache_i_1
       (.I0(ap_loop_init_int_reg_2),
        .I1(ap_loop_exit_ready_pp0_iter3_reg),
        .I2(ap_done_cache),
        .O(ap_done_cache_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1_n_0),
        .Q(ap_done_cache),
        .R(ap_rst));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h08)) 
    ap_loop_exit_ready_pp0_iter2_reg_reg_srl2_i_1
       (.I0(grp_moving_max_Pipeline_MAIN_LOOP_fu_44_ap_start_reg_reg_0),
        .I1(ap_loop_init_int_reg_2),
        .I2(ap_loop_init_int),
        .O(grp_moving_max_Pipeline_MAIN_LOOP_fu_44_ap_ready));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFF4)) 
    ap_loop_init_int_i_1
       (.I0(ap_loop_init_int_reg_2),
        .I1(ap_loop_init_int),
        .I2(ap_rst),
        .I3(ap_loop_exit_ready_pp0_iter3_reg),
        .O(ap_loop_init_int_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1_n_0),
        .Q(ap_loop_init_int),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8A88)) 
    ap_ready_INST_0
       (.I0(Q[2]),
        .I1(ap_loop_exit_ready_pp0_iter3_reg),
        .I2(ap_loop_init_int_reg_2),
        .I3(ap_done_cache),
        .O(ap_done));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFF8C)) 
    grp_moving_max_Pipeline_MAIN_LOOP_fu_44_ap_start_reg_i_1
       (.I0(ap_loop_init_int),
        .I1(ap_loop_init_int_reg_2),
        .I2(grp_moving_max_Pipeline_MAIN_LOOP_fu_44_ap_start_reg_reg_0),
        .I3(grp_moving_max_Pipeline_MAIN_LOOP_fu_44_ap_start_reg0),
        .O(ap_loop_init_int_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    grp_moving_max_Pipeline_MAIN_LOOP_fu_44_ap_start_reg_i_2
       (.I0(Q[1]),
        .I1(\k_fu_40_reg[3] [1]),
        .I2(\k_fu_40_reg[3] [0]),
        .I3(\k_fu_40_reg[3] [2]),
        .I4(\k_fu_40_reg[3] [3]),
        .O(grp_moving_max_Pipeline_MAIN_LOOP_fu_44_ap_start_reg0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \in_data_address0[0]_INST_0 
       (.I0(\n_fu_54_reg[4]_0 ),
        .I1(ap_loop_init_int),
        .I2(ap_loop_init_int_reg_2),
        .O(in_data_address0[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \in_data_address0[1]_INST_0 
       (.I0(\n_fu_54_reg[4]_1 ),
        .I1(ap_loop_init_int_reg_2),
        .I2(ap_loop_init_int),
        .O(in_data_address0[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \in_data_address0[2]_INST_0 
       (.I0(\n_fu_54_reg[4] ),
        .I1(ap_loop_init_int),
        .I2(ap_loop_init_int_reg_2),
        .O(in_data_address0[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \in_data_address0[3]_INST_0 
       (.I0(\n_fu_54_reg[4]_2 ),
        .I1(ap_loop_init_int),
        .I2(ap_loop_init_int_reg_2),
        .O(in_data_address0[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \in_data_address0[4]_INST_0 
       (.I0(\n_fu_54_reg[4]_3 ),
        .I1(ap_loop_init_int),
        .I2(ap_loop_init_int_reg_2),
        .O(in_data_address0[4]));
  LUT3 #(
    .INIT(8'h2A)) 
    \in_data_address0[5]_INST_0 
       (.I0(in_data_address0_5_sn_1),
        .I1(ap_loop_init_int),
        .I2(ap_loop_init_int_reg_2),
        .O(in_data_address0[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAA8AAAA)) 
    \k_fu_40[3]_i_2 
       (.I0(Q[1]),
        .I1(\k_fu_40_reg[3] [1]),
        .I2(\k_fu_40_reg[3] [0]),
        .I3(\k_fu_40_reg[3] [2]),
        .I4(\k_fu_40_reg[3] [3]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \max_11_fu_58[30]_i_2 
       (.I0(ap_loop_init_int),
        .I1(ap_loop_init_int_reg_2),
        .I2(icmp_ln17_reg_413_pp0_iter2_reg),
        .I3(ap_enable_reg_pp0_iter3),
        .O(ap_loop_init_int_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \max_13_fu_50[30]_i_2 
       (.I0(out_data_ce0),
        .I1(ap_loop_init_int),
        .I2(ap_loop_init_int_reg_2),
        .O(ap_enable_reg_pp0_iter4_reg));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \max_1_fu_78[30]_i_2 
       (.I0(ap_loop_init_int),
        .I1(ap_loop_init_int_reg_2),
        .I2(icmp_ln17_reg_413),
        .I3(ap_enable_reg_pp0_iter1),
        .O(max_5_fu_70_1));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \max_7_fu_66[30]_i_2 
       (.I0(ap_loop_init_int),
        .I1(ap_loop_init_int_reg_2),
        .I2(icmp_ln17_reg_413_pp0_iter1_reg),
        .I3(ap_enable_reg_pp0_iter2),
        .O(max_9_fu_62_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \n_fu_54[0]_i_1 
       (.I0(ap_loop_init_int),
        .I1(\n_fu_54_reg[4]_0 ),
        .O(add_ln17_fu_199_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h12)) 
    \n_fu_54[1]_i_1 
       (.I0(\n_fu_54_reg[4]_0 ),
        .I1(ap_loop_init_int),
        .I2(\n_fu_54_reg[4]_1 ),
        .O(add_ln17_fu_199_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \n_fu_54[2]_i_1 
       (.I0(\n_fu_54_reg[4]_0 ),
        .I1(\n_fu_54_reg[4]_1 ),
        .I2(\n_fu_54_reg[4] ),
        .I3(ap_loop_init_int),
        .O(add_ln17_fu_199_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00007F80)) 
    \n_fu_54[3]_i_1 
       (.I0(\n_fu_54_reg[4]_1 ),
        .I1(\n_fu_54_reg[4]_0 ),
        .I2(\n_fu_54_reg[4] ),
        .I3(\n_fu_54_reg[4]_2 ),
        .I4(ap_loop_init_int),
        .O(add_ln17_fu_199_p2[3]));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    \n_fu_54[4]_i_1 
       (.I0(\n_fu_54_reg[4] ),
        .I1(\n_fu_54_reg[4]_0 ),
        .I2(\n_fu_54_reg[4]_1 ),
        .I3(\n_fu_54_reg[4]_2 ),
        .I4(\n_fu_54_reg[4]_3 ),
        .I5(grp_moving_max_Pipeline_MAIN_LOOP_fu_44_ap_start_reg_reg),
        .O(add_ln17_fu_199_p2[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h09)) 
    \n_fu_54[5]_i_1 
       (.I0(\n_fu_54_reg[6] ),
        .I1(in_data_address0_5_sn_1),
        .I2(ap_loop_init_int),
        .O(add_ln17_fu_199_p2[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \n_fu_54[6]_i_1 
       (.I0(ap_loop_init_int_reg_2),
        .I1(ap_loop_init_int),
        .I2(grp_moving_max_Pipeline_MAIN_LOOP_fu_44_ap_start_reg_reg_0),
        .O(n_fu_540));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h00D2)) 
    \n_fu_54[6]_i_2 
       (.I0(in_data_address0_5_sn_1),
        .I1(\n_fu_54_reg[6] ),
        .I2(\n_fu_54_reg[6]_0 ),
        .I3(ap_loop_init_int),
        .O(add_ln17_fu_199_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \zext_ln17_reg_417[5]_i_1 
       (.I0(ap_loop_init_int_reg_2),
        .I1(ap_loop_init_int),
        .O(grp_moving_max_Pipeline_MAIN_LOOP_fu_44_ap_start_reg_reg));
endmodule

(* ORIG_REF_NAME = "moving_max_moving_max_Pipeline_MAIN_LOOP" *) 
module moving_max_0_moving_max_moving_max_Pipeline_MAIN_LOOP
   (out_data_ce0,
    out_data_address0,
    in_data_address0,
    D,
    ap_done,
    E,
    ap_loop_init_int_reg,
    out_data_d0,
    ap_rst,
    ap_clk,
    ap_enable_reg_pp0_iter1_reg_0,
    Q,
    ap_start,
    \k_fu_40_reg[3] ,
    in_data_q0);
  output out_data_ce0;
  output [5:0]out_data_address0;
  output [5:0]in_data_address0;
  output [1:0]D;
  output ap_done;
  output [0:0]E;
  output ap_loop_init_int_reg;
  output [31:0]out_data_d0;
  input ap_rst;
  input ap_clk;
  input ap_enable_reg_pp0_iter1_reg_0;
  input [2:0]Q;
  input ap_start;
  input [3:0]\k_fu_40_reg[3] ;
  input [31:0]in_data_q0;

  wire [1:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire [6:0]add_ln17_fu_199_p2;
  wire ap_clk;
  wire ap_done;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_reg_0;
  wire ap_enable_reg_pp0_iter2;
  wire ap_enable_reg_pp0_iter3;
  wire ap_enable_reg_pp0_iter4_i_1_n_0;
  wire ap_loop_exit_ready_pp0_iter2_reg_reg_srl2_n_0;
  wire ap_loop_exit_ready_pp0_iter3_reg;
  wire ap_loop_init_int;
  wire ap_loop_init_int_reg;
  wire ap_rst;
  wire ap_start;
  wire flow_control_loop_pipe_sequential_init_U_n_15;
  wire flow_control_loop_pipe_sequential_init_U_n_16;
  wire flow_control_loop_pipe_sequential_init_U_n_8;
  wire grp_moving_max_Pipeline_MAIN_LOOP_fu_44_ap_ready;
  wire [0:0]icmp_ln17_reg_413;
  wire \icmp_ln17_reg_413[0]_i_1_n_0 ;
  wire \icmp_ln17_reg_413[0]_i_2_n_0 ;
  wire [0:0]icmp_ln17_reg_413_pp0_iter1_reg;
  wire [0:0]icmp_ln17_reg_413_pp0_iter2_reg;
  wire icmp_ln31_1_fu_238_p2_carry__0_i_10_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__0_i_11_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__0_i_12_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__0_i_13_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__0_i_14_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__0_i_15_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__0_i_16_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__0_i_17_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__0_i_18_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__0_i_19_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__0_i_1_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__0_i_20_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__0_i_21_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__0_i_22_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__0_i_23_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__0_i_24_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__0_i_2_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__0_i_3_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__0_i_4_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__0_i_5_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__0_i_6_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__0_i_7_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__0_i_8_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__0_i_9_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__0_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__0_n_1;
  wire icmp_ln31_1_fu_238_p2_carry__0_n_2;
  wire icmp_ln31_1_fu_238_p2_carry__0_n_3;
  wire icmp_ln31_1_fu_238_p2_carry__1_i_10_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__1_i_11_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__1_i_12_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__1_i_13_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__1_i_14_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__1_i_15_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__1_i_16_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__1_i_17_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__1_i_18_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__1_i_19_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__1_i_1_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__1_i_20_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__1_i_21_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__1_i_22_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__1_i_23_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__1_i_24_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__1_i_2_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__1_i_3_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__1_i_4_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__1_i_5_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__1_i_6_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__1_i_7_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__1_i_8_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__1_i_9_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__1_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__1_n_1;
  wire icmp_ln31_1_fu_238_p2_carry__1_n_2;
  wire icmp_ln31_1_fu_238_p2_carry__1_n_3;
  wire icmp_ln31_1_fu_238_p2_carry__2_i_10_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__2_i_11_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__2_i_12_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__2_i_13_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__2_i_14_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__2_i_15_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__2_i_16_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__2_i_17_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__2_i_18_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__2_i_19_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__2_i_1_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__2_i_20_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__2_i_21_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__2_i_22_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__2_i_23_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__2_i_24_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__2_i_2_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__2_i_3_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__2_i_4_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__2_i_5_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__2_i_6_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__2_i_7_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__2_i_8_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__2_i_9_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__2_n_0;
  wire icmp_ln31_1_fu_238_p2_carry__2_n_1;
  wire icmp_ln31_1_fu_238_p2_carry__2_n_2;
  wire icmp_ln31_1_fu_238_p2_carry__2_n_3;
  wire icmp_ln31_1_fu_238_p2_carry_i_10_n_0;
  wire icmp_ln31_1_fu_238_p2_carry_i_11_n_0;
  wire icmp_ln31_1_fu_238_p2_carry_i_12_n_0;
  wire icmp_ln31_1_fu_238_p2_carry_i_13_n_0;
  wire icmp_ln31_1_fu_238_p2_carry_i_14_n_0;
  wire icmp_ln31_1_fu_238_p2_carry_i_15_n_0;
  wire icmp_ln31_1_fu_238_p2_carry_i_16_n_0;
  wire icmp_ln31_1_fu_238_p2_carry_i_17_n_0;
  wire icmp_ln31_1_fu_238_p2_carry_i_18_n_0;
  wire icmp_ln31_1_fu_238_p2_carry_i_19_n_0;
  wire icmp_ln31_1_fu_238_p2_carry_i_1_n_0;
  wire icmp_ln31_1_fu_238_p2_carry_i_20_n_0;
  wire icmp_ln31_1_fu_238_p2_carry_i_21_n_0;
  wire icmp_ln31_1_fu_238_p2_carry_i_22_n_0;
  wire icmp_ln31_1_fu_238_p2_carry_i_23_n_0;
  wire icmp_ln31_1_fu_238_p2_carry_i_24_n_0;
  wire icmp_ln31_1_fu_238_p2_carry_i_2_n_0;
  wire icmp_ln31_1_fu_238_p2_carry_i_3_n_0;
  wire icmp_ln31_1_fu_238_p2_carry_i_4_n_0;
  wire icmp_ln31_1_fu_238_p2_carry_i_5_n_0;
  wire icmp_ln31_1_fu_238_p2_carry_i_6_n_0;
  wire icmp_ln31_1_fu_238_p2_carry_i_7_n_0;
  wire icmp_ln31_1_fu_238_p2_carry_i_8_n_0;
  wire icmp_ln31_1_fu_238_p2_carry_i_9_n_0;
  wire icmp_ln31_1_fu_238_p2_carry_n_0;
  wire icmp_ln31_1_fu_238_p2_carry_n_1;
  wire icmp_ln31_1_fu_238_p2_carry_n_2;
  wire icmp_ln31_1_fu_238_p2_carry_n_3;
  wire icmp_ln31_2_fu_273_p2_carry__0_i_1_n_0;
  wire icmp_ln31_2_fu_273_p2_carry__0_i_2_n_0;
  wire icmp_ln31_2_fu_273_p2_carry__0_i_3_n_0;
  wire icmp_ln31_2_fu_273_p2_carry__0_i_4_n_0;
  wire icmp_ln31_2_fu_273_p2_carry__0_i_5_n_0;
  wire icmp_ln31_2_fu_273_p2_carry__0_i_6_n_0;
  wire icmp_ln31_2_fu_273_p2_carry__0_i_7_n_0;
  wire icmp_ln31_2_fu_273_p2_carry__0_i_8_n_0;
  wire icmp_ln31_2_fu_273_p2_carry__0_n_0;
  wire icmp_ln31_2_fu_273_p2_carry__0_n_1;
  wire icmp_ln31_2_fu_273_p2_carry__0_n_2;
  wire icmp_ln31_2_fu_273_p2_carry__0_n_3;
  wire icmp_ln31_2_fu_273_p2_carry__1_i_1_n_0;
  wire icmp_ln31_2_fu_273_p2_carry__1_i_2_n_0;
  wire icmp_ln31_2_fu_273_p2_carry__1_i_3_n_0;
  wire icmp_ln31_2_fu_273_p2_carry__1_i_4_n_0;
  wire icmp_ln31_2_fu_273_p2_carry__1_i_5_n_0;
  wire icmp_ln31_2_fu_273_p2_carry__1_i_6_n_0;
  wire icmp_ln31_2_fu_273_p2_carry__1_i_7_n_0;
  wire icmp_ln31_2_fu_273_p2_carry__1_i_8_n_0;
  wire icmp_ln31_2_fu_273_p2_carry__1_n_0;
  wire icmp_ln31_2_fu_273_p2_carry__1_n_1;
  wire icmp_ln31_2_fu_273_p2_carry__1_n_2;
  wire icmp_ln31_2_fu_273_p2_carry__1_n_3;
  wire icmp_ln31_2_fu_273_p2_carry__2_i_1_n_0;
  wire icmp_ln31_2_fu_273_p2_carry__2_i_2_n_0;
  wire icmp_ln31_2_fu_273_p2_carry__2_i_3_n_0;
  wire icmp_ln31_2_fu_273_p2_carry__2_i_4_n_0;
  wire icmp_ln31_2_fu_273_p2_carry__2_i_5_n_0;
  wire icmp_ln31_2_fu_273_p2_carry__2_i_6_n_0;
  wire icmp_ln31_2_fu_273_p2_carry__2_i_7_n_0;
  wire icmp_ln31_2_fu_273_p2_carry__2_i_8_n_0;
  wire icmp_ln31_2_fu_273_p2_carry__2_n_0;
  wire icmp_ln31_2_fu_273_p2_carry__2_n_1;
  wire icmp_ln31_2_fu_273_p2_carry__2_n_2;
  wire icmp_ln31_2_fu_273_p2_carry__2_n_3;
  wire icmp_ln31_2_fu_273_p2_carry_i_1_n_0;
  wire icmp_ln31_2_fu_273_p2_carry_i_2_n_0;
  wire icmp_ln31_2_fu_273_p2_carry_i_3_n_0;
  wire icmp_ln31_2_fu_273_p2_carry_i_4_n_0;
  wire icmp_ln31_2_fu_273_p2_carry_i_5_n_0;
  wire icmp_ln31_2_fu_273_p2_carry_i_6_n_0;
  wire icmp_ln31_2_fu_273_p2_carry_i_7_n_0;
  wire icmp_ln31_2_fu_273_p2_carry_i_8_n_0;
  wire icmp_ln31_2_fu_273_p2_carry_n_0;
  wire icmp_ln31_2_fu_273_p2_carry_n_1;
  wire icmp_ln31_2_fu_273_p2_carry_n_2;
  wire icmp_ln31_2_fu_273_p2_carry_n_3;
  wire icmp_ln31_3_fu_283_p2_carry__0_i_10_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__0_i_11_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__0_i_12_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__0_i_13_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__0_i_14_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__0_i_15_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__0_i_16_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__0_i_17_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__0_i_18_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__0_i_19_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__0_i_1_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__0_i_20_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__0_i_21_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__0_i_22_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__0_i_23_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__0_i_24_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__0_i_2_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__0_i_3_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__0_i_4_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__0_i_5_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__0_i_6_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__0_i_7_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__0_i_8_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__0_i_9_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__0_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__0_n_1;
  wire icmp_ln31_3_fu_283_p2_carry__0_n_2;
  wire icmp_ln31_3_fu_283_p2_carry__0_n_3;
  wire icmp_ln31_3_fu_283_p2_carry__1_i_10_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__1_i_11_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__1_i_12_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__1_i_13_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__1_i_14_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__1_i_15_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__1_i_16_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__1_i_17_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__1_i_18_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__1_i_19_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__1_i_1_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__1_i_20_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__1_i_21_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__1_i_22_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__1_i_23_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__1_i_24_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__1_i_2_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__1_i_3_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__1_i_4_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__1_i_5_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__1_i_6_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__1_i_7_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__1_i_8_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__1_i_9_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__1_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__1_n_1;
  wire icmp_ln31_3_fu_283_p2_carry__1_n_2;
  wire icmp_ln31_3_fu_283_p2_carry__1_n_3;
  wire icmp_ln31_3_fu_283_p2_carry__2_i_10_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__2_i_11_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__2_i_12_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__2_i_13_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__2_i_14_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__2_i_15_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__2_i_16_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__2_i_17_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__2_i_18_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__2_i_19_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__2_i_1_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__2_i_20_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__2_i_21_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__2_i_22_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__2_i_23_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__2_i_24_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__2_i_2_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__2_i_3_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__2_i_4_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__2_i_5_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__2_i_6_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__2_i_7_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__2_i_8_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__2_i_9_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__2_n_0;
  wire icmp_ln31_3_fu_283_p2_carry__2_n_1;
  wire icmp_ln31_3_fu_283_p2_carry__2_n_2;
  wire icmp_ln31_3_fu_283_p2_carry__2_n_3;
  wire icmp_ln31_3_fu_283_p2_carry_i_10_n_0;
  wire icmp_ln31_3_fu_283_p2_carry_i_11_n_0;
  wire icmp_ln31_3_fu_283_p2_carry_i_12_n_0;
  wire icmp_ln31_3_fu_283_p2_carry_i_13_n_0;
  wire icmp_ln31_3_fu_283_p2_carry_i_14_n_0;
  wire icmp_ln31_3_fu_283_p2_carry_i_15_n_0;
  wire icmp_ln31_3_fu_283_p2_carry_i_16_n_0;
  wire icmp_ln31_3_fu_283_p2_carry_i_17_n_0;
  wire icmp_ln31_3_fu_283_p2_carry_i_18_n_0;
  wire icmp_ln31_3_fu_283_p2_carry_i_19_n_0;
  wire icmp_ln31_3_fu_283_p2_carry_i_1_n_0;
  wire icmp_ln31_3_fu_283_p2_carry_i_20_n_0;
  wire icmp_ln31_3_fu_283_p2_carry_i_21_n_0;
  wire icmp_ln31_3_fu_283_p2_carry_i_22_n_0;
  wire icmp_ln31_3_fu_283_p2_carry_i_23_n_0;
  wire icmp_ln31_3_fu_283_p2_carry_i_24_n_0;
  wire icmp_ln31_3_fu_283_p2_carry_i_2_n_0;
  wire icmp_ln31_3_fu_283_p2_carry_i_3_n_0;
  wire icmp_ln31_3_fu_283_p2_carry_i_4_n_0;
  wire icmp_ln31_3_fu_283_p2_carry_i_5_n_0;
  wire icmp_ln31_3_fu_283_p2_carry_i_6_n_0;
  wire icmp_ln31_3_fu_283_p2_carry_i_7_n_0;
  wire icmp_ln31_3_fu_283_p2_carry_i_8_n_0;
  wire icmp_ln31_3_fu_283_p2_carry_i_9_n_0;
  wire icmp_ln31_3_fu_283_p2_carry_n_0;
  wire icmp_ln31_3_fu_283_p2_carry_n_1;
  wire icmp_ln31_3_fu_283_p2_carry_n_2;
  wire icmp_ln31_3_fu_283_p2_carry_n_3;
  wire icmp_ln31_4_fu_309_p2_carry__0_i_1_n_0;
  wire icmp_ln31_4_fu_309_p2_carry__0_i_2_n_0;
  wire icmp_ln31_4_fu_309_p2_carry__0_i_3_n_0;
  wire icmp_ln31_4_fu_309_p2_carry__0_i_4_n_0;
  wire icmp_ln31_4_fu_309_p2_carry__0_i_5_n_0;
  wire icmp_ln31_4_fu_309_p2_carry__0_i_6_n_0;
  wire icmp_ln31_4_fu_309_p2_carry__0_i_7_n_0;
  wire icmp_ln31_4_fu_309_p2_carry__0_i_8_n_0;
  wire icmp_ln31_4_fu_309_p2_carry__0_n_0;
  wire icmp_ln31_4_fu_309_p2_carry__0_n_1;
  wire icmp_ln31_4_fu_309_p2_carry__0_n_2;
  wire icmp_ln31_4_fu_309_p2_carry__0_n_3;
  wire icmp_ln31_4_fu_309_p2_carry__1_i_1_n_0;
  wire icmp_ln31_4_fu_309_p2_carry__1_i_2_n_0;
  wire icmp_ln31_4_fu_309_p2_carry__1_i_3_n_0;
  wire icmp_ln31_4_fu_309_p2_carry__1_i_4_n_0;
  wire icmp_ln31_4_fu_309_p2_carry__1_i_5_n_0;
  wire icmp_ln31_4_fu_309_p2_carry__1_i_6_n_0;
  wire icmp_ln31_4_fu_309_p2_carry__1_i_7_n_0;
  wire icmp_ln31_4_fu_309_p2_carry__1_i_8_n_0;
  wire icmp_ln31_4_fu_309_p2_carry__1_n_0;
  wire icmp_ln31_4_fu_309_p2_carry__1_n_1;
  wire icmp_ln31_4_fu_309_p2_carry__1_n_2;
  wire icmp_ln31_4_fu_309_p2_carry__1_n_3;
  wire icmp_ln31_4_fu_309_p2_carry__2_i_1_n_0;
  wire icmp_ln31_4_fu_309_p2_carry__2_i_2_n_0;
  wire icmp_ln31_4_fu_309_p2_carry__2_i_3_n_0;
  wire icmp_ln31_4_fu_309_p2_carry__2_i_4_n_0;
  wire icmp_ln31_4_fu_309_p2_carry__2_i_5_n_0;
  wire icmp_ln31_4_fu_309_p2_carry__2_i_6_n_0;
  wire icmp_ln31_4_fu_309_p2_carry__2_i_7_n_0;
  wire icmp_ln31_4_fu_309_p2_carry__2_i_8_n_0;
  wire icmp_ln31_4_fu_309_p2_carry__2_n_0;
  wire icmp_ln31_4_fu_309_p2_carry__2_n_1;
  wire icmp_ln31_4_fu_309_p2_carry__2_n_2;
  wire icmp_ln31_4_fu_309_p2_carry__2_n_3;
  wire icmp_ln31_4_fu_309_p2_carry_i_1_n_0;
  wire icmp_ln31_4_fu_309_p2_carry_i_2_n_0;
  wire icmp_ln31_4_fu_309_p2_carry_i_3_n_0;
  wire icmp_ln31_4_fu_309_p2_carry_i_4_n_0;
  wire icmp_ln31_4_fu_309_p2_carry_i_5_n_0;
  wire icmp_ln31_4_fu_309_p2_carry_i_6_n_0;
  wire icmp_ln31_4_fu_309_p2_carry_i_7_n_0;
  wire icmp_ln31_4_fu_309_p2_carry_i_8_n_0;
  wire icmp_ln31_4_fu_309_p2_carry_n_0;
  wire icmp_ln31_4_fu_309_p2_carry_n_1;
  wire icmp_ln31_4_fu_309_p2_carry_n_2;
  wire icmp_ln31_4_fu_309_p2_carry_n_3;
  wire icmp_ln31_5_fu_319_p2_carry__0_i_10_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__0_i_11_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__0_i_12_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__0_i_13_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__0_i_14_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__0_i_15_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__0_i_16_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__0_i_17_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__0_i_18_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__0_i_19_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__0_i_1_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__0_i_20_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__0_i_21_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__0_i_22_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__0_i_23_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__0_i_24_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__0_i_2_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__0_i_3_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__0_i_4_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__0_i_5_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__0_i_6_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__0_i_7_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__0_i_8_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__0_i_9_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__0_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__0_n_1;
  wire icmp_ln31_5_fu_319_p2_carry__0_n_2;
  wire icmp_ln31_5_fu_319_p2_carry__0_n_3;
  wire icmp_ln31_5_fu_319_p2_carry__1_i_10_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__1_i_11_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__1_i_12_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__1_i_13_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__1_i_14_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__1_i_15_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__1_i_16_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__1_i_17_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__1_i_18_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__1_i_19_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__1_i_1_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__1_i_20_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__1_i_21_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__1_i_22_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__1_i_23_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__1_i_24_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__1_i_2_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__1_i_3_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__1_i_4_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__1_i_5_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__1_i_6_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__1_i_7_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__1_i_8_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__1_i_9_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__1_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__1_n_1;
  wire icmp_ln31_5_fu_319_p2_carry__1_n_2;
  wire icmp_ln31_5_fu_319_p2_carry__1_n_3;
  wire icmp_ln31_5_fu_319_p2_carry__2_i_10_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__2_i_11_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__2_i_12_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__2_i_13_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__2_i_14_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__2_i_15_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__2_i_16_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__2_i_17_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__2_i_18_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__2_i_19_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__2_i_1_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__2_i_20_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__2_i_21_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__2_i_22_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__2_i_23_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__2_i_24_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__2_i_2_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__2_i_3_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__2_i_4_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__2_i_5_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__2_i_6_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__2_i_7_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__2_i_8_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__2_i_9_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__2_n_0;
  wire icmp_ln31_5_fu_319_p2_carry__2_n_1;
  wire icmp_ln31_5_fu_319_p2_carry__2_n_2;
  wire icmp_ln31_5_fu_319_p2_carry__2_n_3;
  wire icmp_ln31_5_fu_319_p2_carry_i_10_n_0;
  wire icmp_ln31_5_fu_319_p2_carry_i_11_n_0;
  wire icmp_ln31_5_fu_319_p2_carry_i_12_n_0;
  wire icmp_ln31_5_fu_319_p2_carry_i_13_n_0;
  wire icmp_ln31_5_fu_319_p2_carry_i_14_n_0;
  wire icmp_ln31_5_fu_319_p2_carry_i_15_n_0;
  wire icmp_ln31_5_fu_319_p2_carry_i_16_n_0;
  wire icmp_ln31_5_fu_319_p2_carry_i_17_n_0;
  wire icmp_ln31_5_fu_319_p2_carry_i_18_n_0;
  wire icmp_ln31_5_fu_319_p2_carry_i_19_n_0;
  wire icmp_ln31_5_fu_319_p2_carry_i_1_n_0;
  wire icmp_ln31_5_fu_319_p2_carry_i_20_n_0;
  wire icmp_ln31_5_fu_319_p2_carry_i_21_n_0;
  wire icmp_ln31_5_fu_319_p2_carry_i_22_n_0;
  wire icmp_ln31_5_fu_319_p2_carry_i_23_n_0;
  wire icmp_ln31_5_fu_319_p2_carry_i_24_n_0;
  wire icmp_ln31_5_fu_319_p2_carry_i_2_n_0;
  wire icmp_ln31_5_fu_319_p2_carry_i_3_n_0;
  wire icmp_ln31_5_fu_319_p2_carry_i_4_n_0;
  wire icmp_ln31_5_fu_319_p2_carry_i_5_n_0;
  wire icmp_ln31_5_fu_319_p2_carry_i_6_n_0;
  wire icmp_ln31_5_fu_319_p2_carry_i_7_n_0;
  wire icmp_ln31_5_fu_319_p2_carry_i_8_n_0;
  wire icmp_ln31_5_fu_319_p2_carry_i_9_n_0;
  wire icmp_ln31_5_fu_319_p2_carry_n_0;
  wire icmp_ln31_5_fu_319_p2_carry_n_1;
  wire icmp_ln31_5_fu_319_p2_carry_n_2;
  wire icmp_ln31_5_fu_319_p2_carry_n_3;
  wire icmp_ln31_6_fu_340_p2_carry__0_i_1_n_0;
  wire icmp_ln31_6_fu_340_p2_carry__0_i_2_n_0;
  wire icmp_ln31_6_fu_340_p2_carry__0_i_3_n_0;
  wire icmp_ln31_6_fu_340_p2_carry__0_i_4_n_0;
  wire icmp_ln31_6_fu_340_p2_carry__0_i_5_n_0;
  wire icmp_ln31_6_fu_340_p2_carry__0_i_6_n_0;
  wire icmp_ln31_6_fu_340_p2_carry__0_i_7_n_0;
  wire icmp_ln31_6_fu_340_p2_carry__0_i_8_n_0;
  wire icmp_ln31_6_fu_340_p2_carry__0_n_0;
  wire icmp_ln31_6_fu_340_p2_carry__0_n_1;
  wire icmp_ln31_6_fu_340_p2_carry__0_n_2;
  wire icmp_ln31_6_fu_340_p2_carry__0_n_3;
  wire icmp_ln31_6_fu_340_p2_carry__1_i_1_n_0;
  wire icmp_ln31_6_fu_340_p2_carry__1_i_2_n_0;
  wire icmp_ln31_6_fu_340_p2_carry__1_i_3_n_0;
  wire icmp_ln31_6_fu_340_p2_carry__1_i_4_n_0;
  wire icmp_ln31_6_fu_340_p2_carry__1_i_5_n_0;
  wire icmp_ln31_6_fu_340_p2_carry__1_i_6_n_0;
  wire icmp_ln31_6_fu_340_p2_carry__1_i_7_n_0;
  wire icmp_ln31_6_fu_340_p2_carry__1_i_8_n_0;
  wire icmp_ln31_6_fu_340_p2_carry__1_n_0;
  wire icmp_ln31_6_fu_340_p2_carry__1_n_1;
  wire icmp_ln31_6_fu_340_p2_carry__1_n_2;
  wire icmp_ln31_6_fu_340_p2_carry__1_n_3;
  wire icmp_ln31_6_fu_340_p2_carry__2_i_1_n_0;
  wire icmp_ln31_6_fu_340_p2_carry__2_i_2_n_0;
  wire icmp_ln31_6_fu_340_p2_carry__2_i_3_n_0;
  wire icmp_ln31_6_fu_340_p2_carry__2_i_4_n_0;
  wire icmp_ln31_6_fu_340_p2_carry__2_i_5_n_0;
  wire icmp_ln31_6_fu_340_p2_carry__2_i_6_n_0;
  wire icmp_ln31_6_fu_340_p2_carry__2_i_7_n_0;
  wire icmp_ln31_6_fu_340_p2_carry__2_i_8_n_0;
  wire icmp_ln31_6_fu_340_p2_carry__2_n_0;
  wire icmp_ln31_6_fu_340_p2_carry__2_n_1;
  wire icmp_ln31_6_fu_340_p2_carry__2_n_2;
  wire icmp_ln31_6_fu_340_p2_carry__2_n_3;
  wire icmp_ln31_6_fu_340_p2_carry_i_1_n_0;
  wire icmp_ln31_6_fu_340_p2_carry_i_2_n_0;
  wire icmp_ln31_6_fu_340_p2_carry_i_3_n_0;
  wire icmp_ln31_6_fu_340_p2_carry_i_4_n_0;
  wire icmp_ln31_6_fu_340_p2_carry_i_5_n_0;
  wire icmp_ln31_6_fu_340_p2_carry_i_6_n_0;
  wire icmp_ln31_6_fu_340_p2_carry_i_7_n_0;
  wire icmp_ln31_6_fu_340_p2_carry_i_8_n_0;
  wire icmp_ln31_6_fu_340_p2_carry_n_0;
  wire icmp_ln31_6_fu_340_p2_carry_n_1;
  wire icmp_ln31_6_fu_340_p2_carry_n_2;
  wire icmp_ln31_6_fu_340_p2_carry_n_3;
  wire icmp_ln31_fu_224_p2_carry__0_i_1_n_0;
  wire icmp_ln31_fu_224_p2_carry__0_i_2_n_0;
  wire icmp_ln31_fu_224_p2_carry__0_i_3_n_0;
  wire icmp_ln31_fu_224_p2_carry__0_i_4_n_0;
  wire icmp_ln31_fu_224_p2_carry__0_i_5_n_0;
  wire icmp_ln31_fu_224_p2_carry__0_i_6_n_0;
  wire icmp_ln31_fu_224_p2_carry__0_i_7_n_0;
  wire icmp_ln31_fu_224_p2_carry__0_i_8_n_0;
  wire icmp_ln31_fu_224_p2_carry__0_n_0;
  wire icmp_ln31_fu_224_p2_carry__0_n_1;
  wire icmp_ln31_fu_224_p2_carry__0_n_2;
  wire icmp_ln31_fu_224_p2_carry__0_n_3;
  wire icmp_ln31_fu_224_p2_carry__1_i_1_n_0;
  wire icmp_ln31_fu_224_p2_carry__1_i_2_n_0;
  wire icmp_ln31_fu_224_p2_carry__1_i_3_n_0;
  wire icmp_ln31_fu_224_p2_carry__1_i_4_n_0;
  wire icmp_ln31_fu_224_p2_carry__1_i_5_n_0;
  wire icmp_ln31_fu_224_p2_carry__1_i_6_n_0;
  wire icmp_ln31_fu_224_p2_carry__1_i_7_n_0;
  wire icmp_ln31_fu_224_p2_carry__1_i_8_n_0;
  wire icmp_ln31_fu_224_p2_carry__1_n_0;
  wire icmp_ln31_fu_224_p2_carry__1_n_1;
  wire icmp_ln31_fu_224_p2_carry__1_n_2;
  wire icmp_ln31_fu_224_p2_carry__1_n_3;
  wire icmp_ln31_fu_224_p2_carry__2_i_1_n_0;
  wire icmp_ln31_fu_224_p2_carry__2_i_2_n_0;
  wire icmp_ln31_fu_224_p2_carry__2_i_3_n_0;
  wire icmp_ln31_fu_224_p2_carry__2_i_4_n_0;
  wire icmp_ln31_fu_224_p2_carry__2_i_5_n_0;
  wire icmp_ln31_fu_224_p2_carry__2_i_6_n_0;
  wire icmp_ln31_fu_224_p2_carry__2_i_7_n_0;
  wire icmp_ln31_fu_224_p2_carry__2_i_8_n_0;
  wire icmp_ln31_fu_224_p2_carry__2_n_0;
  wire icmp_ln31_fu_224_p2_carry__2_n_1;
  wire icmp_ln31_fu_224_p2_carry__2_n_2;
  wire icmp_ln31_fu_224_p2_carry__2_n_3;
  wire icmp_ln31_fu_224_p2_carry_i_1_n_0;
  wire icmp_ln31_fu_224_p2_carry_i_2_n_0;
  wire icmp_ln31_fu_224_p2_carry_i_3_n_0;
  wire icmp_ln31_fu_224_p2_carry_i_4_n_0;
  wire icmp_ln31_fu_224_p2_carry_i_5_n_0;
  wire icmp_ln31_fu_224_p2_carry_i_6_n_0;
  wire icmp_ln31_fu_224_p2_carry_i_7_n_0;
  wire icmp_ln31_fu_224_p2_carry_i_8_n_0;
  wire icmp_ln31_fu_224_p2_carry_n_0;
  wire icmp_ln31_fu_224_p2_carry_n_1;
  wire icmp_ln31_fu_224_p2_carry_n_2;
  wire icmp_ln31_fu_224_p2_carry_n_3;
  wire [5:0]in_data_address0;
  wire [31:0]in_data_q0;
  wire [3:0]\k_fu_40_reg[3] ;
  wire [31:0]max_11_fu_58;
  wire \max_11_fu_58[30]_i_1_n_0 ;
  wire \max_11_fu_58[31]_i_1_n_0 ;
  wire [31:0]max_13_fu_50;
  wire \max_13_fu_50[30]_i_1_n_0 ;
  wire \max_13_fu_50[31]_i_1_n_0 ;
  wire [31:0]max_18_fu_244_p3;
  wire [31:0]max_18_reg_434;
  wire [31:0]max_19_reg_427;
  wire [31:0]max_1_fu_78;
  wire \max_1_fu_78[30]_i_1_n_0 ;
  wire \max_1_fu_78[31]_i_1_n_0 ;
  wire [31:0]max_22_fu_289_p3;
  wire [31:0]max_22_reg_447;
  wire [31:0]max_23_reg_440;
  wire [31:0]max_25_reg_453;
  wire [31:0]max_26_fu_325_p3;
  wire [31:0]max_26_reg_458;
  wire [31:0]max_3_fu_74;
  wire \max_3_fu_74[31]_i_1_n_0 ;
  wire [31:0]max_5_fu_70;
  wire \max_5_fu_70[31]_i_1_n_0 ;
  wire [0:0]max_5_fu_70_1;
  wire [31:0]max_7_fu_66;
  wire \max_7_fu_66[30]_i_1_n_0 ;
  wire \max_7_fu_66[31]_i_1_n_0 ;
  wire [31:0]max_9_fu_62;
  wire \max_9_fu_62[31]_i_1_n_0 ;
  wire [0:0]max_9_fu_62_0;
  wire n_fu_540;
  wire \n_fu_54[6]_i_3_n_0 ;
  wire \n_fu_54_reg_n_0_[0] ;
  wire \n_fu_54_reg_n_0_[1] ;
  wire \n_fu_54_reg_n_0_[2] ;
  wire \n_fu_54_reg_n_0_[3] ;
  wire \n_fu_54_reg_n_0_[4] ;
  wire \n_fu_54_reg_n_0_[5] ;
  wire \n_fu_54_reg_n_0_[6] ;
  wire [5:0]out_data_address0;
  wire out_data_ce0;
  wire [31:0]out_data_d0;
  wire \zext_ln17_reg_417_pp0_iter2_reg_reg[0]_srl2_n_0 ;
  wire \zext_ln17_reg_417_pp0_iter2_reg_reg[1]_srl3_n_0 ;
  wire \zext_ln17_reg_417_pp0_iter2_reg_reg[2]_srl2_n_0 ;
  wire \zext_ln17_reg_417_pp0_iter2_reg_reg[3]_srl2_n_0 ;
  wire \zext_ln17_reg_417_pp0_iter2_reg_reg[4]_srl2_n_0 ;
  wire \zext_ln17_reg_417_pp0_iter2_reg_reg[5]_srl2_n_0 ;
  wire [5:0]zext_ln17_reg_417_reg;
  wire [3:0]NLW_icmp_ln31_1_fu_238_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln31_1_fu_238_p2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln31_1_fu_238_p2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln31_1_fu_238_p2_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln31_2_fu_273_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln31_2_fu_273_p2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln31_2_fu_273_p2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln31_2_fu_273_p2_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln31_3_fu_283_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln31_3_fu_283_p2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln31_3_fu_283_p2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln31_3_fu_283_p2_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln31_4_fu_309_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln31_4_fu_309_p2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln31_4_fu_309_p2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln31_4_fu_309_p2_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln31_5_fu_319_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln31_5_fu_319_p2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln31_5_fu_319_p2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln31_5_fu_319_p2_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln31_6_fu_340_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln31_6_fu_340_p2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln31_6_fu_340_p2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln31_6_fu_340_p2_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln31_fu_224_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln31_fu_224_p2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln31_fu_224_p2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_icmp_ln31_fu_224_p2_carry__2_O_UNCONNECTED;

  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_reg_0),
        .Q(ap_enable_reg_pp0_iter1),
        .R(ap_rst));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter2_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1),
        .Q(ap_enable_reg_pp0_iter2),
        .R(ap_rst));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter3_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter2),
        .Q(ap_enable_reg_pp0_iter3),
        .R(ap_rst));
  LUT2 #(
    .INIT(4'h2)) 
    ap_enable_reg_pp0_iter4_i_1
       (.I0(ap_enable_reg_pp0_iter3),
        .I1(icmp_ln17_reg_413_pp0_iter2_reg),
        .O(ap_enable_reg_pp0_iter4_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter4_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter4_i_1_n_0),
        .Q(out_data_ce0),
        .R(ap_rst));
  (* srl_name = "inst/\\grp_moving_max_Pipeline_MAIN_LOOP_fu_44/ap_loop_exit_ready_pp0_iter2_reg_reg_srl2 " *) 
  SRL16E ap_loop_exit_ready_pp0_iter2_reg_reg_srl2
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(grp_moving_max_Pipeline_MAIN_LOOP_fu_44_ap_ready),
        .Q(ap_loop_exit_ready_pp0_iter2_reg_reg_srl2_n_0));
  FDRE ap_loop_exit_ready_pp0_iter3_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_exit_ready_pp0_iter2_reg_reg_srl2_n_0),
        .Q(ap_loop_exit_ready_pp0_iter3_reg),
        .R(1'b0));
  moving_max_0_moving_max_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U
       (.D(D),
        .E(E),
        .Q(Q),
        .add_ln17_fu_199_p2(add_ln17_fu_199_p2),
        .ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_enable_reg_pp0_iter2(ap_enable_reg_pp0_iter2),
        .ap_enable_reg_pp0_iter3(ap_enable_reg_pp0_iter3),
        .ap_enable_reg_pp0_iter4_reg(flow_control_loop_pipe_sequential_init_U_n_15),
        .ap_loop_exit_ready_pp0_iter3_reg(ap_loop_exit_ready_pp0_iter3_reg),
        .ap_loop_init_int(ap_loop_init_int),
        .ap_loop_init_int_reg_0(flow_control_loop_pipe_sequential_init_U_n_16),
        .ap_loop_init_int_reg_1(ap_loop_init_int_reg),
        .ap_loop_init_int_reg_2(ap_enable_reg_pp0_iter1_reg_0),
        .ap_rst(ap_rst),
        .ap_start(ap_start),
        .grp_moving_max_Pipeline_MAIN_LOOP_fu_44_ap_ready(grp_moving_max_Pipeline_MAIN_LOOP_fu_44_ap_ready),
        .grp_moving_max_Pipeline_MAIN_LOOP_fu_44_ap_start_reg_reg(flow_control_loop_pipe_sequential_init_U_n_8),
        .grp_moving_max_Pipeline_MAIN_LOOP_fu_44_ap_start_reg_reg_0(\icmp_ln17_reg_413[0]_i_1_n_0 ),
        .icmp_ln17_reg_413(icmp_ln17_reg_413),
        .icmp_ln17_reg_413_pp0_iter1_reg(icmp_ln17_reg_413_pp0_iter1_reg),
        .icmp_ln17_reg_413_pp0_iter2_reg(icmp_ln17_reg_413_pp0_iter2_reg),
        .in_data_address0(in_data_address0),
        .in_data_address0_5_sp_1(\n_fu_54_reg_n_0_[5] ),
        .\k_fu_40_reg[3] (\k_fu_40_reg[3] ),
        .max_5_fu_70_1(max_5_fu_70_1),
        .max_9_fu_62_0(max_9_fu_62_0),
        .n_fu_540(n_fu_540),
        .\n_fu_54_reg[4] (\n_fu_54_reg_n_0_[2] ),
        .\n_fu_54_reg[4]_0 (\n_fu_54_reg_n_0_[0] ),
        .\n_fu_54_reg[4]_1 (\n_fu_54_reg_n_0_[1] ),
        .\n_fu_54_reg[4]_2 (\n_fu_54_reg_n_0_[3] ),
        .\n_fu_54_reg[4]_3 (\n_fu_54_reg_n_0_[4] ),
        .\n_fu_54_reg[6] (\n_fu_54[6]_i_3_n_0 ),
        .\n_fu_54_reg[6]_0 (\n_fu_54_reg_n_0_[6] ),
        .out_data_ce0(out_data_ce0));
  LUT4 #(
    .INIT(16'h0001)) 
    \icmp_ln17_reg_413[0]_i_1 
       (.I0(\n_fu_54_reg_n_0_[4] ),
        .I1(\n_fu_54_reg_n_0_[2] ),
        .I2(\n_fu_54_reg_n_0_[1] ),
        .I3(\icmp_ln17_reg_413[0]_i_2_n_0 ),
        .O(\icmp_ln17_reg_413[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \icmp_ln17_reg_413[0]_i_2 
       (.I0(\n_fu_54_reg_n_0_[3] ),
        .I1(\n_fu_54_reg_n_0_[0] ),
        .I2(\n_fu_54_reg_n_0_[6] ),
        .I3(\n_fu_54_reg_n_0_[5] ),
        .O(\icmp_ln17_reg_413[0]_i_2_n_0 ));
  FDRE \icmp_ln17_reg_413_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(icmp_ln17_reg_413),
        .Q(icmp_ln17_reg_413_pp0_iter1_reg),
        .R(1'b0));
  FDRE \icmp_ln17_reg_413_pp0_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(icmp_ln17_reg_413_pp0_iter1_reg),
        .Q(icmp_ln17_reg_413_pp0_iter2_reg),
        .R(1'b0));
  FDRE \icmp_ln17_reg_413_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\icmp_ln17_reg_413[0]_i_1_n_0 ),
        .Q(icmp_ln17_reg_413),
        .R(flow_control_loop_pipe_sequential_init_U_n_8));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln31_1_fu_238_p2_carry
       (.CI(1'b0),
        .CO({icmp_ln31_1_fu_238_p2_carry_n_0,icmp_ln31_1_fu_238_p2_carry_n_1,icmp_ln31_1_fu_238_p2_carry_n_2,icmp_ln31_1_fu_238_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({icmp_ln31_1_fu_238_p2_carry_i_1_n_0,icmp_ln31_1_fu_238_p2_carry_i_2_n_0,icmp_ln31_1_fu_238_p2_carry_i_3_n_0,icmp_ln31_1_fu_238_p2_carry_i_4_n_0}),
        .O(NLW_icmp_ln31_1_fu_238_p2_carry_O_UNCONNECTED[3:0]),
        .S({icmp_ln31_1_fu_238_p2_carry_i_5_n_0,icmp_ln31_1_fu_238_p2_carry_i_6_n_0,icmp_ln31_1_fu_238_p2_carry_i_7_n_0,icmp_ln31_1_fu_238_p2_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln31_1_fu_238_p2_carry__0
       (.CI(icmp_ln31_1_fu_238_p2_carry_n_0),
        .CO({icmp_ln31_1_fu_238_p2_carry__0_n_0,icmp_ln31_1_fu_238_p2_carry__0_n_1,icmp_ln31_1_fu_238_p2_carry__0_n_2,icmp_ln31_1_fu_238_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({icmp_ln31_1_fu_238_p2_carry__0_i_1_n_0,icmp_ln31_1_fu_238_p2_carry__0_i_2_n_0,icmp_ln31_1_fu_238_p2_carry__0_i_3_n_0,icmp_ln31_1_fu_238_p2_carry__0_i_4_n_0}),
        .O(NLW_icmp_ln31_1_fu_238_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({icmp_ln31_1_fu_238_p2_carry__0_i_5_n_0,icmp_ln31_1_fu_238_p2_carry__0_i_6_n_0,icmp_ln31_1_fu_238_p2_carry__0_i_7_n_0,icmp_ln31_1_fu_238_p2_carry__0_i_8_n_0}));
  LUT6 #(
    .INIT(64'hDDF0DDFFCCF0CCF0)) 
    icmp_ln31_1_fu_238_p2_carry__0_i_1
       (.I0(max_1_fu_78[15]),
        .I1(icmp_ln31_1_fu_238_p2_carry__0_i_9_n_0),
        .I2(icmp_ln31_1_fu_238_p2_carry__0_i_10_n_0),
        .I3(icmp_ln31_fu_224_p2_carry__2_n_0),
        .I4(in_data_q0[15]),
        .I5(max_3_fu_74[15]),
        .O(icmp_ln31_1_fu_238_p2_carry__0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h00B0)) 
    icmp_ln31_1_fu_238_p2_carry__0_i_10
       (.I0(max_3_fu_74[15]),
        .I1(in_data_q0[15]),
        .I2(max_3_fu_74[14]),
        .I3(in_data_q0[14]),
        .O(icmp_ln31_1_fu_238_p2_carry__0_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h00D0)) 
    icmp_ln31_1_fu_238_p2_carry__0_i_11
       (.I0(max_1_fu_78[13]),
        .I1(max_3_fu_74[13]),
        .I2(max_3_fu_74[12]),
        .I3(max_1_fu_78[12]),
        .O(icmp_ln31_1_fu_238_p2_carry__0_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    icmp_ln31_1_fu_238_p2_carry__0_i_12
       (.I0(max_3_fu_74[13]),
        .I1(in_data_q0[13]),
        .I2(max_3_fu_74[12]),
        .I3(in_data_q0[12]),
        .O(icmp_ln31_1_fu_238_p2_carry__0_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h00D0)) 
    icmp_ln31_1_fu_238_p2_carry__0_i_13
       (.I0(max_1_fu_78[11]),
        .I1(max_3_fu_74[11]),
        .I2(max_3_fu_74[10]),
        .I3(max_1_fu_78[10]),
        .O(icmp_ln31_1_fu_238_p2_carry__0_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h00B0)) 
    icmp_ln31_1_fu_238_p2_carry__0_i_14
       (.I0(max_3_fu_74[11]),
        .I1(in_data_q0[11]),
        .I2(max_3_fu_74[10]),
        .I3(in_data_q0[10]),
        .O(icmp_ln31_1_fu_238_p2_carry__0_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h00D0)) 
    icmp_ln31_1_fu_238_p2_carry__0_i_15
       (.I0(max_1_fu_78[9]),
        .I1(max_3_fu_74[9]),
        .I2(max_3_fu_74[8]),
        .I3(max_1_fu_78[8]),
        .O(icmp_ln31_1_fu_238_p2_carry__0_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    icmp_ln31_1_fu_238_p2_carry__0_i_16
       (.I0(max_3_fu_74[9]),
        .I1(in_data_q0[9]),
        .I2(max_3_fu_74[8]),
        .I3(in_data_q0[8]),
        .O(icmp_ln31_1_fu_238_p2_carry__0_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'hD00D)) 
    icmp_ln31_1_fu_238_p2_carry__0_i_17
       (.I0(max_1_fu_78[15]),
        .I1(max_3_fu_74[15]),
        .I2(max_3_fu_74[14]),
        .I3(max_1_fu_78[14]),
        .O(icmp_ln31_1_fu_238_p2_carry__0_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h4FF4)) 
    icmp_ln31_1_fu_238_p2_carry__0_i_18
       (.I0(max_3_fu_74[15]),
        .I1(in_data_q0[15]),
        .I2(max_3_fu_74[14]),
        .I3(in_data_q0[14]),
        .O(icmp_ln31_1_fu_238_p2_carry__0_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'hD00D)) 
    icmp_ln31_1_fu_238_p2_carry__0_i_19
       (.I0(max_1_fu_78[13]),
        .I1(max_3_fu_74[13]),
        .I2(max_3_fu_74[12]),
        .I3(max_1_fu_78[12]),
        .O(icmp_ln31_1_fu_238_p2_carry__0_i_19_n_0));
  LUT6 #(
    .INIT(64'hD0DFC0C0DFDFCFCF)) 
    icmp_ln31_1_fu_238_p2_carry__0_i_2
       (.I0(max_1_fu_78[13]),
        .I1(icmp_ln31_1_fu_238_p2_carry__0_i_11_n_0),
        .I2(icmp_ln31_fu_224_p2_carry__2_n_0),
        .I3(in_data_q0[13]),
        .I4(max_3_fu_74[13]),
        .I5(icmp_ln31_1_fu_238_p2_carry__0_i_12_n_0),
        .O(icmp_ln31_1_fu_238_p2_carry__0_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'hB00B)) 
    icmp_ln31_1_fu_238_p2_carry__0_i_20
       (.I0(max_3_fu_74[13]),
        .I1(in_data_q0[13]),
        .I2(max_3_fu_74[12]),
        .I3(in_data_q0[12]),
        .O(icmp_ln31_1_fu_238_p2_carry__0_i_20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hD00D)) 
    icmp_ln31_1_fu_238_p2_carry__0_i_21
       (.I0(max_1_fu_78[11]),
        .I1(max_3_fu_74[11]),
        .I2(max_3_fu_74[10]),
        .I3(max_1_fu_78[10]),
        .O(icmp_ln31_1_fu_238_p2_carry__0_i_21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h4FF4)) 
    icmp_ln31_1_fu_238_p2_carry__0_i_22
       (.I0(max_3_fu_74[11]),
        .I1(in_data_q0[11]),
        .I2(max_3_fu_74[10]),
        .I3(in_data_q0[10]),
        .O(icmp_ln31_1_fu_238_p2_carry__0_i_22_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hD00D)) 
    icmp_ln31_1_fu_238_p2_carry__0_i_23
       (.I0(max_1_fu_78[9]),
        .I1(max_3_fu_74[9]),
        .I2(max_3_fu_74[8]),
        .I3(max_1_fu_78[8]),
        .O(icmp_ln31_1_fu_238_p2_carry__0_i_23_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hB00B)) 
    icmp_ln31_1_fu_238_p2_carry__0_i_24
       (.I0(max_3_fu_74[9]),
        .I1(in_data_q0[9]),
        .I2(max_3_fu_74[8]),
        .I3(in_data_q0[8]),
        .O(icmp_ln31_1_fu_238_p2_carry__0_i_24_n_0));
  LUT6 #(
    .INIT(64'hDDF0DDFFCCF0CCF0)) 
    icmp_ln31_1_fu_238_p2_carry__0_i_3
       (.I0(max_1_fu_78[11]),
        .I1(icmp_ln31_1_fu_238_p2_carry__0_i_13_n_0),
        .I2(icmp_ln31_1_fu_238_p2_carry__0_i_14_n_0),
        .I3(icmp_ln31_fu_224_p2_carry__2_n_0),
        .I4(in_data_q0[11]),
        .I5(max_3_fu_74[11]),
        .O(icmp_ln31_1_fu_238_p2_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'hD0DFC0C0DFDFCFCF)) 
    icmp_ln31_1_fu_238_p2_carry__0_i_4
       (.I0(max_1_fu_78[9]),
        .I1(icmp_ln31_1_fu_238_p2_carry__0_i_15_n_0),
        .I2(icmp_ln31_fu_224_p2_carry__2_n_0),
        .I3(in_data_q0[9]),
        .I4(max_3_fu_74[9]),
        .I5(icmp_ln31_1_fu_238_p2_carry__0_i_16_n_0),
        .O(icmp_ln31_1_fu_238_p2_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h880F8800CC0FCC0F)) 
    icmp_ln31_1_fu_238_p2_carry__0_i_5
       (.I0(max_1_fu_78[15]),
        .I1(icmp_ln31_1_fu_238_p2_carry__0_i_17_n_0),
        .I2(icmp_ln31_1_fu_238_p2_carry__0_i_18_n_0),
        .I3(icmp_ln31_fu_224_p2_carry__2_n_0),
        .I4(in_data_q0[15]),
        .I5(max_3_fu_74[15]),
        .O(icmp_ln31_1_fu_238_p2_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h8F80CFCF8080C0C0)) 
    icmp_ln31_1_fu_238_p2_carry__0_i_6
       (.I0(max_1_fu_78[13]),
        .I1(icmp_ln31_1_fu_238_p2_carry__0_i_19_n_0),
        .I2(icmp_ln31_fu_224_p2_carry__2_n_0),
        .I3(in_data_q0[13]),
        .I4(max_3_fu_74[13]),
        .I5(icmp_ln31_1_fu_238_p2_carry__0_i_20_n_0),
        .O(icmp_ln31_1_fu_238_p2_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h880F8800CC0FCC0F)) 
    icmp_ln31_1_fu_238_p2_carry__0_i_7
       (.I0(max_1_fu_78[11]),
        .I1(icmp_ln31_1_fu_238_p2_carry__0_i_21_n_0),
        .I2(icmp_ln31_1_fu_238_p2_carry__0_i_22_n_0),
        .I3(icmp_ln31_fu_224_p2_carry__2_n_0),
        .I4(in_data_q0[11]),
        .I5(max_3_fu_74[11]),
        .O(icmp_ln31_1_fu_238_p2_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h8F80CFCF8080C0C0)) 
    icmp_ln31_1_fu_238_p2_carry__0_i_8
       (.I0(max_1_fu_78[9]),
        .I1(icmp_ln31_1_fu_238_p2_carry__0_i_23_n_0),
        .I2(icmp_ln31_fu_224_p2_carry__2_n_0),
        .I3(in_data_q0[9]),
        .I4(max_3_fu_74[9]),
        .I5(icmp_ln31_1_fu_238_p2_carry__0_i_24_n_0),
        .O(icmp_ln31_1_fu_238_p2_carry__0_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'h00D0)) 
    icmp_ln31_1_fu_238_p2_carry__0_i_9
       (.I0(max_1_fu_78[15]),
        .I1(max_3_fu_74[15]),
        .I2(max_3_fu_74[14]),
        .I3(max_1_fu_78[14]),
        .O(icmp_ln31_1_fu_238_p2_carry__0_i_9_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln31_1_fu_238_p2_carry__1
       (.CI(icmp_ln31_1_fu_238_p2_carry__0_n_0),
        .CO({icmp_ln31_1_fu_238_p2_carry__1_n_0,icmp_ln31_1_fu_238_p2_carry__1_n_1,icmp_ln31_1_fu_238_p2_carry__1_n_2,icmp_ln31_1_fu_238_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({icmp_ln31_1_fu_238_p2_carry__1_i_1_n_0,icmp_ln31_1_fu_238_p2_carry__1_i_2_n_0,icmp_ln31_1_fu_238_p2_carry__1_i_3_n_0,icmp_ln31_1_fu_238_p2_carry__1_i_4_n_0}),
        .O(NLW_icmp_ln31_1_fu_238_p2_carry__1_O_UNCONNECTED[3:0]),
        .S({icmp_ln31_1_fu_238_p2_carry__1_i_5_n_0,icmp_ln31_1_fu_238_p2_carry__1_i_6_n_0,icmp_ln31_1_fu_238_p2_carry__1_i_7_n_0,icmp_ln31_1_fu_238_p2_carry__1_i_8_n_0}));
  LUT6 #(
    .INIT(64'hD0DFC0C0DFDFCFCF)) 
    icmp_ln31_1_fu_238_p2_carry__1_i_1
       (.I0(max_1_fu_78[23]),
        .I1(icmp_ln31_1_fu_238_p2_carry__1_i_9_n_0),
        .I2(icmp_ln31_fu_224_p2_carry__2_n_0),
        .I3(in_data_q0[23]),
        .I4(max_3_fu_74[23]),
        .I5(icmp_ln31_1_fu_238_p2_carry__1_i_10_n_0),
        .O(icmp_ln31_1_fu_238_p2_carry__1_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    icmp_ln31_1_fu_238_p2_carry__1_i_10
       (.I0(max_3_fu_74[23]),
        .I1(in_data_q0[23]),
        .I2(max_3_fu_74[22]),
        .I3(in_data_q0[22]),
        .O(icmp_ln31_1_fu_238_p2_carry__1_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'h00D0)) 
    icmp_ln31_1_fu_238_p2_carry__1_i_11
       (.I0(max_1_fu_78[21]),
        .I1(max_3_fu_74[21]),
        .I2(max_3_fu_74[20]),
        .I3(max_1_fu_78[20]),
        .O(icmp_ln31_1_fu_238_p2_carry__1_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    icmp_ln31_1_fu_238_p2_carry__1_i_12
       (.I0(max_3_fu_74[21]),
        .I1(in_data_q0[21]),
        .I2(max_3_fu_74[20]),
        .I3(in_data_q0[20]),
        .O(icmp_ln31_1_fu_238_p2_carry__1_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    icmp_ln31_1_fu_238_p2_carry__1_i_13
       (.I0(max_3_fu_74[19]),
        .I1(max_1_fu_78[19]),
        .I2(max_3_fu_74[18]),
        .I3(max_1_fu_78[18]),
        .O(icmp_ln31_1_fu_238_p2_carry__1_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h00B0)) 
    icmp_ln31_1_fu_238_p2_carry__1_i_14
       (.I0(max_3_fu_74[19]),
        .I1(in_data_q0[19]),
        .I2(max_3_fu_74[18]),
        .I3(in_data_q0[18]),
        .O(icmp_ln31_1_fu_238_p2_carry__1_i_14_n_0));
  LUT4 #(
    .INIT(16'h00D0)) 
    icmp_ln31_1_fu_238_p2_carry__1_i_15
       (.I0(max_1_fu_78[17]),
        .I1(max_3_fu_74[17]),
        .I2(max_3_fu_74[16]),
        .I3(max_1_fu_78[16]),
        .O(icmp_ln31_1_fu_238_p2_carry__1_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h00B0)) 
    icmp_ln31_1_fu_238_p2_carry__1_i_16
       (.I0(max_3_fu_74[17]),
        .I1(in_data_q0[17]),
        .I2(max_3_fu_74[16]),
        .I3(in_data_q0[16]),
        .O(icmp_ln31_1_fu_238_p2_carry__1_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'hB00B)) 
    icmp_ln31_1_fu_238_p2_carry__1_i_17
       (.I0(max_3_fu_74[23]),
        .I1(in_data_q0[23]),
        .I2(max_3_fu_74[22]),
        .I3(in_data_q0[22]),
        .O(icmp_ln31_1_fu_238_p2_carry__1_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'hD00D)) 
    icmp_ln31_1_fu_238_p2_carry__1_i_18
       (.I0(max_1_fu_78[23]),
        .I1(max_3_fu_74[23]),
        .I2(max_3_fu_74[22]),
        .I3(max_1_fu_78[22]),
        .O(icmp_ln31_1_fu_238_p2_carry__1_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'hD00D)) 
    icmp_ln31_1_fu_238_p2_carry__1_i_19
       (.I0(max_1_fu_78[21]),
        .I1(max_3_fu_74[21]),
        .I2(max_3_fu_74[20]),
        .I3(max_1_fu_78[20]),
        .O(icmp_ln31_1_fu_238_p2_carry__1_i_19_n_0));
  LUT6 #(
    .INIT(64'hD0DFC0C0DFDFCFCF)) 
    icmp_ln31_1_fu_238_p2_carry__1_i_2
       (.I0(max_1_fu_78[21]),
        .I1(icmp_ln31_1_fu_238_p2_carry__1_i_11_n_0),
        .I2(icmp_ln31_fu_224_p2_carry__2_n_0),
        .I3(in_data_q0[21]),
        .I4(max_3_fu_74[21]),
        .I5(icmp_ln31_1_fu_238_p2_carry__1_i_12_n_0),
        .O(icmp_ln31_1_fu_238_p2_carry__1_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'hB00B)) 
    icmp_ln31_1_fu_238_p2_carry__1_i_20
       (.I0(max_3_fu_74[21]),
        .I1(in_data_q0[21]),
        .I2(max_3_fu_74[20]),
        .I3(in_data_q0[20]),
        .O(icmp_ln31_1_fu_238_p2_carry__1_i_20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h4FF4)) 
    icmp_ln31_1_fu_238_p2_carry__1_i_21
       (.I0(max_3_fu_74[19]),
        .I1(in_data_q0[19]),
        .I2(max_3_fu_74[18]),
        .I3(in_data_q0[18]),
        .O(icmp_ln31_1_fu_238_p2_carry__1_i_21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h4FF4)) 
    icmp_ln31_1_fu_238_p2_carry__1_i_22
       (.I0(max_3_fu_74[19]),
        .I1(max_1_fu_78[19]),
        .I2(max_3_fu_74[18]),
        .I3(max_1_fu_78[18]),
        .O(icmp_ln31_1_fu_238_p2_carry__1_i_22_n_0));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h4FF4)) 
    icmp_ln31_1_fu_238_p2_carry__1_i_23
       (.I0(max_3_fu_74[17]),
        .I1(in_data_q0[17]),
        .I2(max_3_fu_74[16]),
        .I3(in_data_q0[16]),
        .O(icmp_ln31_1_fu_238_p2_carry__1_i_23_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    icmp_ln31_1_fu_238_p2_carry__1_i_24
       (.I0(max_1_fu_78[16]),
        .I1(max_3_fu_74[16]),
        .O(icmp_ln31_1_fu_238_p2_carry__1_i_24_n_0));
  LUT6 #(
    .INIT(64'h77F077FF33F033F0)) 
    icmp_ln31_1_fu_238_p2_carry__1_i_3
       (.I0(max_1_fu_78[19]),
        .I1(icmp_ln31_1_fu_238_p2_carry__1_i_13_n_0),
        .I2(icmp_ln31_1_fu_238_p2_carry__1_i_14_n_0),
        .I3(icmp_ln31_fu_224_p2_carry__2_n_0),
        .I4(in_data_q0[19]),
        .I5(max_3_fu_74[19]),
        .O(icmp_ln31_1_fu_238_p2_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'hDDF0DDFFCCF0CCF0)) 
    icmp_ln31_1_fu_238_p2_carry__1_i_4
       (.I0(max_1_fu_78[17]),
        .I1(icmp_ln31_1_fu_238_p2_carry__1_i_15_n_0),
        .I2(icmp_ln31_1_fu_238_p2_carry__1_i_16_n_0),
        .I3(icmp_ln31_fu_224_p2_carry__2_n_0),
        .I4(in_data_q0[17]),
        .I5(max_3_fu_74[17]),
        .O(icmp_ln31_1_fu_238_p2_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'hF0FF88CC000088CC)) 
    icmp_ln31_1_fu_238_p2_carry__1_i_5
       (.I0(in_data_q0[23]),
        .I1(icmp_ln31_1_fu_238_p2_carry__1_i_17_n_0),
        .I2(max_1_fu_78[23]),
        .I3(max_3_fu_74[23]),
        .I4(icmp_ln31_fu_224_p2_carry__2_n_0),
        .I5(icmp_ln31_1_fu_238_p2_carry__1_i_18_n_0),
        .O(icmp_ln31_1_fu_238_p2_carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'h8F80CFCF8080C0C0)) 
    icmp_ln31_1_fu_238_p2_carry__1_i_6
       (.I0(max_1_fu_78[21]),
        .I1(icmp_ln31_1_fu_238_p2_carry__1_i_19_n_0),
        .I2(icmp_ln31_fu_224_p2_carry__2_n_0),
        .I3(in_data_q0[21]),
        .I4(max_3_fu_74[21]),
        .I5(icmp_ln31_1_fu_238_p2_carry__1_i_20_n_0),
        .O(icmp_ln31_1_fu_238_p2_carry__1_i_6_n_0));
  LUT6 #(
    .INIT(64'h0F4400440F550F55)) 
    icmp_ln31_1_fu_238_p2_carry__1_i_7
       (.I0(icmp_ln31_1_fu_238_p2_carry__1_i_21_n_0),
        .I1(in_data_q0[19]),
        .I2(icmp_ln31_1_fu_238_p2_carry__1_i_22_n_0),
        .I3(icmp_ln31_fu_224_p2_carry__2_n_0),
        .I4(max_1_fu_78[19]),
        .I5(max_3_fu_74[19]),
        .O(icmp_ln31_1_fu_238_p2_carry__1_i_7_n_0));
  LUT6 #(
    .INIT(64'h0F44005500440F55)) 
    icmp_ln31_1_fu_238_p2_carry__1_i_8
       (.I0(icmp_ln31_1_fu_238_p2_carry__1_i_23_n_0),
        .I1(in_data_q0[17]),
        .I2(icmp_ln31_1_fu_238_p2_carry__1_i_24_n_0),
        .I3(icmp_ln31_fu_224_p2_carry__2_n_0),
        .I4(max_3_fu_74[17]),
        .I5(max_1_fu_78[17]),
        .O(icmp_ln31_1_fu_238_p2_carry__1_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'h00D0)) 
    icmp_ln31_1_fu_238_p2_carry__1_i_9
       (.I0(max_1_fu_78[23]),
        .I1(max_3_fu_74[23]),
        .I2(max_3_fu_74[22]),
        .I3(max_1_fu_78[22]),
        .O(icmp_ln31_1_fu_238_p2_carry__1_i_9_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln31_1_fu_238_p2_carry__2
       (.CI(icmp_ln31_1_fu_238_p2_carry__1_n_0),
        .CO({icmp_ln31_1_fu_238_p2_carry__2_n_0,icmp_ln31_1_fu_238_p2_carry__2_n_1,icmp_ln31_1_fu_238_p2_carry__2_n_2,icmp_ln31_1_fu_238_p2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({icmp_ln31_1_fu_238_p2_carry__2_i_1_n_0,icmp_ln31_1_fu_238_p2_carry__2_i_2_n_0,icmp_ln31_1_fu_238_p2_carry__2_i_3_n_0,icmp_ln31_1_fu_238_p2_carry__2_i_4_n_0}),
        .O(NLW_icmp_ln31_1_fu_238_p2_carry__2_O_UNCONNECTED[3:0]),
        .S({icmp_ln31_1_fu_238_p2_carry__2_i_5_n_0,icmp_ln31_1_fu_238_p2_carry__2_i_6_n_0,icmp_ln31_1_fu_238_p2_carry__2_i_7_n_0,icmp_ln31_1_fu_238_p2_carry__2_i_8_n_0}));
  LUT6 #(
    .INIT(64'hC0EFC0E0CFEFCFEF)) 
    icmp_ln31_1_fu_238_p2_carry__2_i_1
       (.I0(max_1_fu_78[31]),
        .I1(icmp_ln31_1_fu_238_p2_carry__2_i_9_n_0),
        .I2(icmp_ln31_fu_224_p2_carry__2_n_0),
        .I3(max_3_fu_74[31]),
        .I4(in_data_q0[31]),
        .I5(icmp_ln31_1_fu_238_p2_carry__2_i_10_n_0),
        .O(icmp_ln31_1_fu_238_p2_carry__2_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    icmp_ln31_1_fu_238_p2_carry__2_i_10
       (.I0(in_data_q0[31]),
        .I1(max_3_fu_74[31]),
        .I2(max_3_fu_74[30]),
        .I3(in_data_q0[30]),
        .O(icmp_ln31_1_fu_238_p2_carry__2_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'h00D0)) 
    icmp_ln31_1_fu_238_p2_carry__2_i_11
       (.I0(max_1_fu_78[29]),
        .I1(max_3_fu_74[29]),
        .I2(max_3_fu_74[28]),
        .I3(max_1_fu_78[28]),
        .O(icmp_ln31_1_fu_238_p2_carry__2_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    icmp_ln31_1_fu_238_p2_carry__2_i_12
       (.I0(max_3_fu_74[29]),
        .I1(in_data_q0[29]),
        .I2(max_3_fu_74[28]),
        .I3(in_data_q0[28]),
        .O(icmp_ln31_1_fu_238_p2_carry__2_i_12_n_0));
  LUT4 #(
    .INIT(16'h00D0)) 
    icmp_ln31_1_fu_238_p2_carry__2_i_13
       (.I0(max_1_fu_78[27]),
        .I1(max_3_fu_74[27]),
        .I2(max_3_fu_74[26]),
        .I3(max_1_fu_78[26]),
        .O(icmp_ln31_1_fu_238_p2_carry__2_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    icmp_ln31_1_fu_238_p2_carry__2_i_14
       (.I0(max_3_fu_74[27]),
        .I1(in_data_q0[27]),
        .I2(max_3_fu_74[26]),
        .I3(in_data_q0[26]),
        .O(icmp_ln31_1_fu_238_p2_carry__2_i_14_n_0));
  LUT4 #(
    .INIT(16'h00D0)) 
    icmp_ln31_1_fu_238_p2_carry__2_i_15
       (.I0(max_1_fu_78[25]),
        .I1(max_3_fu_74[25]),
        .I2(max_3_fu_74[24]),
        .I3(max_1_fu_78[24]),
        .O(icmp_ln31_1_fu_238_p2_carry__2_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    icmp_ln31_1_fu_238_p2_carry__2_i_16
       (.I0(max_3_fu_74[25]),
        .I1(in_data_q0[25]),
        .I2(max_3_fu_74[24]),
        .I3(in_data_q0[24]),
        .O(icmp_ln31_1_fu_238_p2_carry__2_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'hB00B)) 
    icmp_ln31_1_fu_238_p2_carry__2_i_17
       (.I0(in_data_q0[31]),
        .I1(max_3_fu_74[31]),
        .I2(max_3_fu_74[30]),
        .I3(in_data_q0[30]),
        .O(icmp_ln31_1_fu_238_p2_carry__2_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    icmp_ln31_1_fu_238_p2_carry__2_i_18
       (.I0(max_1_fu_78[30]),
        .I1(max_3_fu_74[30]),
        .O(icmp_ln31_1_fu_238_p2_carry__2_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'hD00D)) 
    icmp_ln31_1_fu_238_p2_carry__2_i_19
       (.I0(max_1_fu_78[29]),
        .I1(max_3_fu_74[29]),
        .I2(max_3_fu_74[28]),
        .I3(max_1_fu_78[28]),
        .O(icmp_ln31_1_fu_238_p2_carry__2_i_19_n_0));
  LUT6 #(
    .INIT(64'hD0DFC0C0DFDFCFCF)) 
    icmp_ln31_1_fu_238_p2_carry__2_i_2
       (.I0(max_1_fu_78[29]),
        .I1(icmp_ln31_1_fu_238_p2_carry__2_i_11_n_0),
        .I2(icmp_ln31_fu_224_p2_carry__2_n_0),
        .I3(in_data_q0[29]),
        .I4(max_3_fu_74[29]),
        .I5(icmp_ln31_1_fu_238_p2_carry__2_i_12_n_0),
        .O(icmp_ln31_1_fu_238_p2_carry__2_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'hB00B)) 
    icmp_ln31_1_fu_238_p2_carry__2_i_20
       (.I0(max_3_fu_74[29]),
        .I1(in_data_q0[29]),
        .I2(max_3_fu_74[28]),
        .I3(in_data_q0[28]),
        .O(icmp_ln31_1_fu_238_p2_carry__2_i_20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'hB00B)) 
    icmp_ln31_1_fu_238_p2_carry__2_i_21
       (.I0(max_3_fu_74[27]),
        .I1(in_data_q0[27]),
        .I2(max_3_fu_74[26]),
        .I3(in_data_q0[26]),
        .O(icmp_ln31_1_fu_238_p2_carry__2_i_21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    icmp_ln31_1_fu_238_p2_carry__2_i_22
       (.I0(max_1_fu_78[26]),
        .I1(max_3_fu_74[26]),
        .O(icmp_ln31_1_fu_238_p2_carry__2_i_22_n_0));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'hB00B)) 
    icmp_ln31_1_fu_238_p2_carry__2_i_23
       (.I0(max_3_fu_74[25]),
        .I1(in_data_q0[25]),
        .I2(max_3_fu_74[24]),
        .I3(in_data_q0[24]),
        .O(icmp_ln31_1_fu_238_p2_carry__2_i_23_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    icmp_ln31_1_fu_238_p2_carry__2_i_24
       (.I0(max_1_fu_78[24]),
        .I1(max_3_fu_74[24]),
        .O(icmp_ln31_1_fu_238_p2_carry__2_i_24_n_0));
  LUT6 #(
    .INIT(64'hD0DFC0C0DFDFCFCF)) 
    icmp_ln31_1_fu_238_p2_carry__2_i_3
       (.I0(max_1_fu_78[27]),
        .I1(icmp_ln31_1_fu_238_p2_carry__2_i_13_n_0),
        .I2(icmp_ln31_fu_224_p2_carry__2_n_0),
        .I3(in_data_q0[27]),
        .I4(max_3_fu_74[27]),
        .I5(icmp_ln31_1_fu_238_p2_carry__2_i_14_n_0),
        .O(icmp_ln31_1_fu_238_p2_carry__2_i_3_n_0));
  LUT6 #(
    .INIT(64'hD0DFC0C0DFDFCFCF)) 
    icmp_ln31_1_fu_238_p2_carry__2_i_4
       (.I0(max_1_fu_78[25]),
        .I1(icmp_ln31_1_fu_238_p2_carry__2_i_15_n_0),
        .I2(icmp_ln31_fu_224_p2_carry__2_n_0),
        .I3(in_data_q0[25]),
        .I4(max_3_fu_74[25]),
        .I5(icmp_ln31_1_fu_238_p2_carry__2_i_16_n_0),
        .O(icmp_ln31_1_fu_238_p2_carry__2_i_4_n_0));
  LUT6 #(
    .INIT(64'h0FCC004400CC0F44)) 
    icmp_ln31_1_fu_238_p2_carry__2_i_5
       (.I0(in_data_q0[31]),
        .I1(icmp_ln31_1_fu_238_p2_carry__2_i_17_n_0),
        .I2(icmp_ln31_1_fu_238_p2_carry__2_i_18_n_0),
        .I3(icmp_ln31_fu_224_p2_carry__2_n_0),
        .I4(max_3_fu_74[31]),
        .I5(max_1_fu_78[31]),
        .O(icmp_ln31_1_fu_238_p2_carry__2_i_5_n_0));
  LUT6 #(
    .INIT(64'h8F80CFCF8080C0C0)) 
    icmp_ln31_1_fu_238_p2_carry__2_i_6
       (.I0(max_1_fu_78[29]),
        .I1(icmp_ln31_1_fu_238_p2_carry__2_i_19_n_0),
        .I2(icmp_ln31_fu_224_p2_carry__2_n_0),
        .I3(in_data_q0[29]),
        .I4(max_3_fu_74[29]),
        .I5(icmp_ln31_1_fu_238_p2_carry__2_i_20_n_0),
        .O(icmp_ln31_1_fu_238_p2_carry__2_i_6_n_0));
  LUT6 #(
    .INIT(64'h0F8800CC00880FCC)) 
    icmp_ln31_1_fu_238_p2_carry__2_i_7
       (.I0(in_data_q0[27]),
        .I1(icmp_ln31_1_fu_238_p2_carry__2_i_21_n_0),
        .I2(icmp_ln31_1_fu_238_p2_carry__2_i_22_n_0),
        .I3(icmp_ln31_fu_224_p2_carry__2_n_0),
        .I4(max_3_fu_74[27]),
        .I5(max_1_fu_78[27]),
        .O(icmp_ln31_1_fu_238_p2_carry__2_i_7_n_0));
  LUT6 #(
    .INIT(64'h0F8800CC00880FCC)) 
    icmp_ln31_1_fu_238_p2_carry__2_i_8
       (.I0(in_data_q0[25]),
        .I1(icmp_ln31_1_fu_238_p2_carry__2_i_23_n_0),
        .I2(icmp_ln31_1_fu_238_p2_carry__2_i_24_n_0),
        .I3(icmp_ln31_fu_224_p2_carry__2_n_0),
        .I4(max_3_fu_74[25]),
        .I5(max_1_fu_78[25]),
        .O(icmp_ln31_1_fu_238_p2_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h00D0)) 
    icmp_ln31_1_fu_238_p2_carry__2_i_9
       (.I0(max_3_fu_74[31]),
        .I1(max_1_fu_78[31]),
        .I2(max_3_fu_74[30]),
        .I3(max_1_fu_78[30]),
        .O(icmp_ln31_1_fu_238_p2_carry__2_i_9_n_0));
  LUT6 #(
    .INIT(64'h707F30307F7F3F3F)) 
    icmp_ln31_1_fu_238_p2_carry_i_1
       (.I0(max_1_fu_78[7]),
        .I1(icmp_ln31_1_fu_238_p2_carry_i_9_n_0),
        .I2(icmp_ln31_fu_224_p2_carry__2_n_0),
        .I3(in_data_q0[7]),
        .I4(max_3_fu_74[7]),
        .I5(icmp_ln31_1_fu_238_p2_carry_i_10_n_0),
        .O(icmp_ln31_1_fu_238_p2_carry_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    icmp_ln31_1_fu_238_p2_carry_i_10
       (.I0(max_3_fu_74[7]),
        .I1(in_data_q0[7]),
        .I2(max_3_fu_74[6]),
        .I3(in_data_q0[6]),
        .O(icmp_ln31_1_fu_238_p2_carry_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h00D0)) 
    icmp_ln31_1_fu_238_p2_carry_i_11
       (.I0(max_1_fu_78[5]),
        .I1(max_3_fu_74[5]),
        .I2(max_3_fu_74[4]),
        .I3(max_1_fu_78[4]),
        .O(icmp_ln31_1_fu_238_p2_carry_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    icmp_ln31_1_fu_238_p2_carry_i_12
       (.I0(max_3_fu_74[5]),
        .I1(in_data_q0[5]),
        .I2(max_3_fu_74[4]),
        .I3(in_data_q0[4]),
        .O(icmp_ln31_1_fu_238_p2_carry_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    icmp_ln31_1_fu_238_p2_carry_i_13
       (.I0(max_3_fu_74[3]),
        .I1(max_1_fu_78[3]),
        .I2(max_3_fu_74[2]),
        .I3(max_1_fu_78[2]),
        .O(icmp_ln31_1_fu_238_p2_carry_i_13_n_0));
  LUT4 #(
    .INIT(16'hFF4F)) 
    icmp_ln31_1_fu_238_p2_carry_i_14
       (.I0(max_3_fu_74[3]),
        .I1(in_data_q0[3]),
        .I2(max_3_fu_74[2]),
        .I3(in_data_q0[2]),
        .O(icmp_ln31_1_fu_238_p2_carry_i_14_n_0));
  LUT4 #(
    .INIT(16'h00D0)) 
    icmp_ln31_1_fu_238_p2_carry_i_15
       (.I0(max_1_fu_78[1]),
        .I1(max_3_fu_74[1]),
        .I2(max_3_fu_74[0]),
        .I3(max_1_fu_78[0]),
        .O(icmp_ln31_1_fu_238_p2_carry_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    icmp_ln31_1_fu_238_p2_carry_i_16
       (.I0(max_3_fu_74[1]),
        .I1(in_data_q0[1]),
        .I2(max_3_fu_74[0]),
        .I3(in_data_q0[0]),
        .O(icmp_ln31_1_fu_238_p2_carry_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hB00B)) 
    icmp_ln31_1_fu_238_p2_carry_i_17
       (.I0(max_3_fu_74[7]),
        .I1(in_data_q0[7]),
        .I2(max_3_fu_74[6]),
        .I3(in_data_q0[6]),
        .O(icmp_ln31_1_fu_238_p2_carry_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h4FF4)) 
    icmp_ln31_1_fu_238_p2_carry_i_18
       (.I0(max_3_fu_74[7]),
        .I1(max_1_fu_78[7]),
        .I2(max_3_fu_74[6]),
        .I3(max_1_fu_78[6]),
        .O(icmp_ln31_1_fu_238_p2_carry_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hD00D)) 
    icmp_ln31_1_fu_238_p2_carry_i_19
       (.I0(max_1_fu_78[5]),
        .I1(max_3_fu_74[5]),
        .I2(max_3_fu_74[4]),
        .I3(max_1_fu_78[4]),
        .O(icmp_ln31_1_fu_238_p2_carry_i_19_n_0));
  LUT6 #(
    .INIT(64'hD0DFC0C0DFDFCFCF)) 
    icmp_ln31_1_fu_238_p2_carry_i_2
       (.I0(max_1_fu_78[5]),
        .I1(icmp_ln31_1_fu_238_p2_carry_i_11_n_0),
        .I2(icmp_ln31_fu_224_p2_carry__2_n_0),
        .I3(in_data_q0[5]),
        .I4(max_3_fu_74[5]),
        .I5(icmp_ln31_1_fu_238_p2_carry_i_12_n_0),
        .O(icmp_ln31_1_fu_238_p2_carry_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hB00B)) 
    icmp_ln31_1_fu_238_p2_carry_i_20
       (.I0(max_3_fu_74[5]),
        .I1(in_data_q0[5]),
        .I2(max_3_fu_74[4]),
        .I3(in_data_q0[4]),
        .O(icmp_ln31_1_fu_238_p2_carry_i_20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    icmp_ln31_1_fu_238_p2_carry_i_21
       (.I0(in_data_q0[2]),
        .I1(max_3_fu_74[2]),
        .O(icmp_ln31_1_fu_238_p2_carry_i_21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h4FF4)) 
    icmp_ln31_1_fu_238_p2_carry_i_22
       (.I0(max_3_fu_74[3]),
        .I1(max_1_fu_78[3]),
        .I2(max_3_fu_74[2]),
        .I3(max_1_fu_78[2]),
        .O(icmp_ln31_1_fu_238_p2_carry_i_22_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    icmp_ln31_1_fu_238_p2_carry_i_23
       (.I0(max_1_fu_78[0]),
        .I1(max_3_fu_74[0]),
        .O(icmp_ln31_1_fu_238_p2_carry_i_23_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h6)) 
    icmp_ln31_1_fu_238_p2_carry_i_24
       (.I0(in_data_q0[0]),
        .I1(max_3_fu_74[0]),
        .O(icmp_ln31_1_fu_238_p2_carry_i_24_n_0));
  LUT6 #(
    .INIT(64'h707F30307F7F3F3F)) 
    icmp_ln31_1_fu_238_p2_carry_i_3
       (.I0(max_1_fu_78[3]),
        .I1(icmp_ln31_1_fu_238_p2_carry_i_13_n_0),
        .I2(icmp_ln31_fu_224_p2_carry__2_n_0),
        .I3(in_data_q0[3]),
        .I4(max_3_fu_74[3]),
        .I5(icmp_ln31_1_fu_238_p2_carry_i_14_n_0),
        .O(icmp_ln31_1_fu_238_p2_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'hD0DFC0C0DFDFCFCF)) 
    icmp_ln31_1_fu_238_p2_carry_i_4
       (.I0(max_1_fu_78[1]),
        .I1(icmp_ln31_1_fu_238_p2_carry_i_15_n_0),
        .I2(icmp_ln31_fu_224_p2_carry__2_n_0),
        .I3(in_data_q0[1]),
        .I4(max_3_fu_74[1]),
        .I5(icmp_ln31_1_fu_238_p2_carry_i_16_n_0),
        .O(icmp_ln31_1_fu_238_p2_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h0F8800880FCC0FCC)) 
    icmp_ln31_1_fu_238_p2_carry_i_5
       (.I0(in_data_q0[7]),
        .I1(icmp_ln31_1_fu_238_p2_carry_i_17_n_0),
        .I2(icmp_ln31_1_fu_238_p2_carry_i_18_n_0),
        .I3(icmp_ln31_fu_224_p2_carry__2_n_0),
        .I4(max_1_fu_78[7]),
        .I5(max_3_fu_74[7]),
        .O(icmp_ln31_1_fu_238_p2_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h8F80CFCF8080C0C0)) 
    icmp_ln31_1_fu_238_p2_carry_i_6
       (.I0(max_1_fu_78[5]),
        .I1(icmp_ln31_1_fu_238_p2_carry_i_19_n_0),
        .I2(icmp_ln31_fu_224_p2_carry__2_n_0),
        .I3(in_data_q0[5]),
        .I4(max_3_fu_74[5]),
        .I5(icmp_ln31_1_fu_238_p2_carry_i_20_n_0),
        .O(icmp_ln31_1_fu_238_p2_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h0F4400440F110F11)) 
    icmp_ln31_1_fu_238_p2_carry_i_7
       (.I0(icmp_ln31_1_fu_238_p2_carry_i_21_n_0),
        .I1(in_data_q0[3]),
        .I2(icmp_ln31_1_fu_238_p2_carry_i_22_n_0),
        .I3(icmp_ln31_fu_224_p2_carry__2_n_0),
        .I4(max_1_fu_78[3]),
        .I5(max_3_fu_74[3]),
        .O(icmp_ln31_1_fu_238_p2_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h440F11004400110F)) 
    icmp_ln31_1_fu_238_p2_carry_i_8
       (.I0(icmp_ln31_1_fu_238_p2_carry_i_23_n_0),
        .I1(max_1_fu_78[1]),
        .I2(icmp_ln31_1_fu_238_p2_carry_i_24_n_0),
        .I3(icmp_ln31_fu_224_p2_carry__2_n_0),
        .I4(max_3_fu_74[1]),
        .I5(in_data_q0[1]),
        .O(icmp_ln31_1_fu_238_p2_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    icmp_ln31_1_fu_238_p2_carry_i_9
       (.I0(max_3_fu_74[7]),
        .I1(max_1_fu_78[7]),
        .I2(max_3_fu_74[6]),
        .I3(max_1_fu_78[6]),
        .O(icmp_ln31_1_fu_238_p2_carry_i_9_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln31_2_fu_273_p2_carry
       (.CI(1'b0),
        .CO({icmp_ln31_2_fu_273_p2_carry_n_0,icmp_ln31_2_fu_273_p2_carry_n_1,icmp_ln31_2_fu_273_p2_carry_n_2,icmp_ln31_2_fu_273_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({icmp_ln31_2_fu_273_p2_carry_i_1_n_0,icmp_ln31_2_fu_273_p2_carry_i_2_n_0,icmp_ln31_2_fu_273_p2_carry_i_3_n_0,icmp_ln31_2_fu_273_p2_carry_i_4_n_0}),
        .O(NLW_icmp_ln31_2_fu_273_p2_carry_O_UNCONNECTED[3:0]),
        .S({icmp_ln31_2_fu_273_p2_carry_i_5_n_0,icmp_ln31_2_fu_273_p2_carry_i_6_n_0,icmp_ln31_2_fu_273_p2_carry_i_7_n_0,icmp_ln31_2_fu_273_p2_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln31_2_fu_273_p2_carry__0
       (.CI(icmp_ln31_2_fu_273_p2_carry_n_0),
        .CO({icmp_ln31_2_fu_273_p2_carry__0_n_0,icmp_ln31_2_fu_273_p2_carry__0_n_1,icmp_ln31_2_fu_273_p2_carry__0_n_2,icmp_ln31_2_fu_273_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({icmp_ln31_2_fu_273_p2_carry__0_i_1_n_0,icmp_ln31_2_fu_273_p2_carry__0_i_2_n_0,icmp_ln31_2_fu_273_p2_carry__0_i_3_n_0,icmp_ln31_2_fu_273_p2_carry__0_i_4_n_0}),
        .O(NLW_icmp_ln31_2_fu_273_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({icmp_ln31_2_fu_273_p2_carry__0_i_5_n_0,icmp_ln31_2_fu_273_p2_carry__0_i_6_n_0,icmp_ln31_2_fu_273_p2_carry__0_i_7_n_0,icmp_ln31_2_fu_273_p2_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_2_fu_273_p2_carry__0_i_1
       (.I0(max_19_reg_427[14]),
        .I1(max_18_reg_434[14]),
        .I2(max_18_reg_434[15]),
        .I3(max_19_reg_427[15]),
        .O(icmp_ln31_2_fu_273_p2_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_2_fu_273_p2_carry__0_i_2
       (.I0(max_19_reg_427[12]),
        .I1(max_18_reg_434[12]),
        .I2(max_18_reg_434[13]),
        .I3(max_19_reg_427[13]),
        .O(icmp_ln31_2_fu_273_p2_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_2_fu_273_p2_carry__0_i_3
       (.I0(max_19_reg_427[10]),
        .I1(max_18_reg_434[10]),
        .I2(max_18_reg_434[11]),
        .I3(max_19_reg_427[11]),
        .O(icmp_ln31_2_fu_273_p2_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_2_fu_273_p2_carry__0_i_4
       (.I0(max_19_reg_427[8]),
        .I1(max_18_reg_434[8]),
        .I2(max_18_reg_434[9]),
        .I3(max_19_reg_427[9]),
        .O(icmp_ln31_2_fu_273_p2_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_2_fu_273_p2_carry__0_i_5
       (.I0(max_18_reg_434[14]),
        .I1(max_19_reg_427[14]),
        .I2(max_18_reg_434[15]),
        .I3(max_19_reg_427[15]),
        .O(icmp_ln31_2_fu_273_p2_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_2_fu_273_p2_carry__0_i_6
       (.I0(max_18_reg_434[12]),
        .I1(max_19_reg_427[12]),
        .I2(max_18_reg_434[13]),
        .I3(max_19_reg_427[13]),
        .O(icmp_ln31_2_fu_273_p2_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_2_fu_273_p2_carry__0_i_7
       (.I0(max_18_reg_434[10]),
        .I1(max_19_reg_427[10]),
        .I2(max_18_reg_434[11]),
        .I3(max_19_reg_427[11]),
        .O(icmp_ln31_2_fu_273_p2_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_2_fu_273_p2_carry__0_i_8
       (.I0(max_18_reg_434[8]),
        .I1(max_19_reg_427[8]),
        .I2(max_18_reg_434[9]),
        .I3(max_19_reg_427[9]),
        .O(icmp_ln31_2_fu_273_p2_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln31_2_fu_273_p2_carry__1
       (.CI(icmp_ln31_2_fu_273_p2_carry__0_n_0),
        .CO({icmp_ln31_2_fu_273_p2_carry__1_n_0,icmp_ln31_2_fu_273_p2_carry__1_n_1,icmp_ln31_2_fu_273_p2_carry__1_n_2,icmp_ln31_2_fu_273_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({icmp_ln31_2_fu_273_p2_carry__1_i_1_n_0,icmp_ln31_2_fu_273_p2_carry__1_i_2_n_0,icmp_ln31_2_fu_273_p2_carry__1_i_3_n_0,icmp_ln31_2_fu_273_p2_carry__1_i_4_n_0}),
        .O(NLW_icmp_ln31_2_fu_273_p2_carry__1_O_UNCONNECTED[3:0]),
        .S({icmp_ln31_2_fu_273_p2_carry__1_i_5_n_0,icmp_ln31_2_fu_273_p2_carry__1_i_6_n_0,icmp_ln31_2_fu_273_p2_carry__1_i_7_n_0,icmp_ln31_2_fu_273_p2_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_2_fu_273_p2_carry__1_i_1
       (.I0(max_19_reg_427[22]),
        .I1(max_18_reg_434[22]),
        .I2(max_18_reg_434[23]),
        .I3(max_19_reg_427[23]),
        .O(icmp_ln31_2_fu_273_p2_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_2_fu_273_p2_carry__1_i_2
       (.I0(max_19_reg_427[20]),
        .I1(max_18_reg_434[20]),
        .I2(max_18_reg_434[21]),
        .I3(max_19_reg_427[21]),
        .O(icmp_ln31_2_fu_273_p2_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_2_fu_273_p2_carry__1_i_3
       (.I0(max_19_reg_427[18]),
        .I1(max_18_reg_434[18]),
        .I2(max_18_reg_434[19]),
        .I3(max_19_reg_427[19]),
        .O(icmp_ln31_2_fu_273_p2_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_2_fu_273_p2_carry__1_i_4
       (.I0(max_19_reg_427[16]),
        .I1(max_18_reg_434[16]),
        .I2(max_18_reg_434[17]),
        .I3(max_19_reg_427[17]),
        .O(icmp_ln31_2_fu_273_p2_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_2_fu_273_p2_carry__1_i_5
       (.I0(max_18_reg_434[22]),
        .I1(max_19_reg_427[22]),
        .I2(max_18_reg_434[23]),
        .I3(max_19_reg_427[23]),
        .O(icmp_ln31_2_fu_273_p2_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_2_fu_273_p2_carry__1_i_6
       (.I0(max_18_reg_434[20]),
        .I1(max_19_reg_427[20]),
        .I2(max_18_reg_434[21]),
        .I3(max_19_reg_427[21]),
        .O(icmp_ln31_2_fu_273_p2_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_2_fu_273_p2_carry__1_i_7
       (.I0(max_18_reg_434[18]),
        .I1(max_19_reg_427[18]),
        .I2(max_18_reg_434[19]),
        .I3(max_19_reg_427[19]),
        .O(icmp_ln31_2_fu_273_p2_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_2_fu_273_p2_carry__1_i_8
       (.I0(max_18_reg_434[16]),
        .I1(max_19_reg_427[16]),
        .I2(max_18_reg_434[17]),
        .I3(max_19_reg_427[17]),
        .O(icmp_ln31_2_fu_273_p2_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln31_2_fu_273_p2_carry__2
       (.CI(icmp_ln31_2_fu_273_p2_carry__1_n_0),
        .CO({icmp_ln31_2_fu_273_p2_carry__2_n_0,icmp_ln31_2_fu_273_p2_carry__2_n_1,icmp_ln31_2_fu_273_p2_carry__2_n_2,icmp_ln31_2_fu_273_p2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({icmp_ln31_2_fu_273_p2_carry__2_i_1_n_0,icmp_ln31_2_fu_273_p2_carry__2_i_2_n_0,icmp_ln31_2_fu_273_p2_carry__2_i_3_n_0,icmp_ln31_2_fu_273_p2_carry__2_i_4_n_0}),
        .O(NLW_icmp_ln31_2_fu_273_p2_carry__2_O_UNCONNECTED[3:0]),
        .S({icmp_ln31_2_fu_273_p2_carry__2_i_5_n_0,icmp_ln31_2_fu_273_p2_carry__2_i_6_n_0,icmp_ln31_2_fu_273_p2_carry__2_i_7_n_0,icmp_ln31_2_fu_273_p2_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_2_fu_273_p2_carry__2_i_1
       (.I0(max_19_reg_427[30]),
        .I1(max_18_reg_434[30]),
        .I2(max_19_reg_427[31]),
        .I3(max_18_reg_434[31]),
        .O(icmp_ln31_2_fu_273_p2_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_2_fu_273_p2_carry__2_i_2
       (.I0(max_19_reg_427[28]),
        .I1(max_18_reg_434[28]),
        .I2(max_18_reg_434[29]),
        .I3(max_19_reg_427[29]),
        .O(icmp_ln31_2_fu_273_p2_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_2_fu_273_p2_carry__2_i_3
       (.I0(max_19_reg_427[26]),
        .I1(max_18_reg_434[26]),
        .I2(max_18_reg_434[27]),
        .I3(max_19_reg_427[27]),
        .O(icmp_ln31_2_fu_273_p2_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_2_fu_273_p2_carry__2_i_4
       (.I0(max_19_reg_427[24]),
        .I1(max_18_reg_434[24]),
        .I2(max_18_reg_434[25]),
        .I3(max_19_reg_427[25]),
        .O(icmp_ln31_2_fu_273_p2_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_2_fu_273_p2_carry__2_i_5
       (.I0(max_18_reg_434[30]),
        .I1(max_19_reg_427[30]),
        .I2(max_19_reg_427[31]),
        .I3(max_18_reg_434[31]),
        .O(icmp_ln31_2_fu_273_p2_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_2_fu_273_p2_carry__2_i_6
       (.I0(max_18_reg_434[28]),
        .I1(max_19_reg_427[28]),
        .I2(max_18_reg_434[29]),
        .I3(max_19_reg_427[29]),
        .O(icmp_ln31_2_fu_273_p2_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_2_fu_273_p2_carry__2_i_7
       (.I0(max_18_reg_434[26]),
        .I1(max_19_reg_427[26]),
        .I2(max_18_reg_434[27]),
        .I3(max_19_reg_427[27]),
        .O(icmp_ln31_2_fu_273_p2_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_2_fu_273_p2_carry__2_i_8
       (.I0(max_18_reg_434[24]),
        .I1(max_19_reg_427[24]),
        .I2(max_18_reg_434[25]),
        .I3(max_19_reg_427[25]),
        .O(icmp_ln31_2_fu_273_p2_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_2_fu_273_p2_carry_i_1
       (.I0(max_19_reg_427[6]),
        .I1(max_18_reg_434[6]),
        .I2(max_18_reg_434[7]),
        .I3(max_19_reg_427[7]),
        .O(icmp_ln31_2_fu_273_p2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_2_fu_273_p2_carry_i_2
       (.I0(max_19_reg_427[4]),
        .I1(max_18_reg_434[4]),
        .I2(max_18_reg_434[5]),
        .I3(max_19_reg_427[5]),
        .O(icmp_ln31_2_fu_273_p2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_2_fu_273_p2_carry_i_3
       (.I0(max_19_reg_427[2]),
        .I1(max_18_reg_434[2]),
        .I2(max_18_reg_434[3]),
        .I3(max_19_reg_427[3]),
        .O(icmp_ln31_2_fu_273_p2_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_2_fu_273_p2_carry_i_4
       (.I0(max_19_reg_427[0]),
        .I1(max_18_reg_434[0]),
        .I2(max_18_reg_434[1]),
        .I3(max_19_reg_427[1]),
        .O(icmp_ln31_2_fu_273_p2_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_2_fu_273_p2_carry_i_5
       (.I0(max_18_reg_434[6]),
        .I1(max_19_reg_427[6]),
        .I2(max_18_reg_434[7]),
        .I3(max_19_reg_427[7]),
        .O(icmp_ln31_2_fu_273_p2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_2_fu_273_p2_carry_i_6
       (.I0(max_18_reg_434[4]),
        .I1(max_19_reg_427[4]),
        .I2(max_18_reg_434[5]),
        .I3(max_19_reg_427[5]),
        .O(icmp_ln31_2_fu_273_p2_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_2_fu_273_p2_carry_i_7
       (.I0(max_18_reg_434[2]),
        .I1(max_19_reg_427[2]),
        .I2(max_18_reg_434[3]),
        .I3(max_19_reg_427[3]),
        .O(icmp_ln31_2_fu_273_p2_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_2_fu_273_p2_carry_i_8
       (.I0(max_18_reg_434[0]),
        .I1(max_19_reg_427[0]),
        .I2(max_18_reg_434[1]),
        .I3(max_19_reg_427[1]),
        .O(icmp_ln31_2_fu_273_p2_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln31_3_fu_283_p2_carry
       (.CI(1'b0),
        .CO({icmp_ln31_3_fu_283_p2_carry_n_0,icmp_ln31_3_fu_283_p2_carry_n_1,icmp_ln31_3_fu_283_p2_carry_n_2,icmp_ln31_3_fu_283_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({icmp_ln31_3_fu_283_p2_carry_i_1_n_0,icmp_ln31_3_fu_283_p2_carry_i_2_n_0,icmp_ln31_3_fu_283_p2_carry_i_3_n_0,icmp_ln31_3_fu_283_p2_carry_i_4_n_0}),
        .O(NLW_icmp_ln31_3_fu_283_p2_carry_O_UNCONNECTED[3:0]),
        .S({icmp_ln31_3_fu_283_p2_carry_i_5_n_0,icmp_ln31_3_fu_283_p2_carry_i_6_n_0,icmp_ln31_3_fu_283_p2_carry_i_7_n_0,icmp_ln31_3_fu_283_p2_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln31_3_fu_283_p2_carry__0
       (.CI(icmp_ln31_3_fu_283_p2_carry_n_0),
        .CO({icmp_ln31_3_fu_283_p2_carry__0_n_0,icmp_ln31_3_fu_283_p2_carry__0_n_1,icmp_ln31_3_fu_283_p2_carry__0_n_2,icmp_ln31_3_fu_283_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({icmp_ln31_3_fu_283_p2_carry__0_i_1_n_0,icmp_ln31_3_fu_283_p2_carry__0_i_2_n_0,icmp_ln31_3_fu_283_p2_carry__0_i_3_n_0,icmp_ln31_3_fu_283_p2_carry__0_i_4_n_0}),
        .O(NLW_icmp_ln31_3_fu_283_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({icmp_ln31_3_fu_283_p2_carry__0_i_5_n_0,icmp_ln31_3_fu_283_p2_carry__0_i_6_n_0,icmp_ln31_3_fu_283_p2_carry__0_i_7_n_0,icmp_ln31_3_fu_283_p2_carry__0_i_8_n_0}));
  LUT6 #(
    .INIT(64'hDDF0DDFFCCF0CCF0)) 
    icmp_ln31_3_fu_283_p2_carry__0_i_1
       (.I0(max_19_reg_427[15]),
        .I1(icmp_ln31_3_fu_283_p2_carry__0_i_9_n_0),
        .I2(icmp_ln31_3_fu_283_p2_carry__0_i_10_n_0),
        .I3(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .I4(max_18_reg_434[15]),
        .I5(max_7_fu_66[15]),
        .O(icmp_ln31_3_fu_283_p2_carry__0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h00B0)) 
    icmp_ln31_3_fu_283_p2_carry__0_i_10
       (.I0(max_7_fu_66[15]),
        .I1(max_18_reg_434[15]),
        .I2(max_7_fu_66[14]),
        .I3(max_18_reg_434[14]),
        .O(icmp_ln31_3_fu_283_p2_carry__0_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'h00D0)) 
    icmp_ln31_3_fu_283_p2_carry__0_i_11
       (.I0(max_19_reg_427[13]),
        .I1(max_7_fu_66[13]),
        .I2(max_7_fu_66[12]),
        .I3(max_19_reg_427[12]),
        .O(icmp_ln31_3_fu_283_p2_carry__0_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    icmp_ln31_3_fu_283_p2_carry__0_i_12
       (.I0(max_7_fu_66[13]),
        .I1(max_18_reg_434[13]),
        .I2(max_7_fu_66[12]),
        .I3(max_18_reg_434[12]),
        .O(icmp_ln31_3_fu_283_p2_carry__0_i_12_n_0));
  LUT4 #(
    .INIT(16'h00D0)) 
    icmp_ln31_3_fu_283_p2_carry__0_i_13
       (.I0(max_19_reg_427[11]),
        .I1(max_7_fu_66[11]),
        .I2(max_7_fu_66[10]),
        .I3(max_19_reg_427[10]),
        .O(icmp_ln31_3_fu_283_p2_carry__0_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    icmp_ln31_3_fu_283_p2_carry__0_i_14
       (.I0(max_7_fu_66[11]),
        .I1(max_18_reg_434[11]),
        .I2(max_7_fu_66[10]),
        .I3(max_18_reg_434[10]),
        .O(icmp_ln31_3_fu_283_p2_carry__0_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    icmp_ln31_3_fu_283_p2_carry__0_i_15
       (.I0(max_7_fu_66[9]),
        .I1(max_19_reg_427[9]),
        .I2(max_7_fu_66[8]),
        .I3(max_19_reg_427[8]),
        .O(icmp_ln31_3_fu_283_p2_carry__0_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    icmp_ln31_3_fu_283_p2_carry__0_i_16
       (.I0(max_7_fu_66[9]),
        .I1(max_18_reg_434[9]),
        .I2(max_7_fu_66[8]),
        .I3(max_18_reg_434[8]),
        .O(icmp_ln31_3_fu_283_p2_carry__0_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'hD00D)) 
    icmp_ln31_3_fu_283_p2_carry__0_i_17
       (.I0(max_19_reg_427[15]),
        .I1(max_7_fu_66[15]),
        .I2(max_7_fu_66[14]),
        .I3(max_19_reg_427[14]),
        .O(icmp_ln31_3_fu_283_p2_carry__0_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h4FF4)) 
    icmp_ln31_3_fu_283_p2_carry__0_i_18
       (.I0(max_7_fu_66[15]),
        .I1(max_18_reg_434[15]),
        .I2(max_7_fu_66[14]),
        .I3(max_18_reg_434[14]),
        .O(icmp_ln31_3_fu_283_p2_carry__0_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'hD00D)) 
    icmp_ln31_3_fu_283_p2_carry__0_i_19
       (.I0(max_19_reg_427[13]),
        .I1(max_7_fu_66[13]),
        .I2(max_7_fu_66[12]),
        .I3(max_19_reg_427[12]),
        .O(icmp_ln31_3_fu_283_p2_carry__0_i_19_n_0));
  LUT6 #(
    .INIT(64'hD0DFC0C0DFDFCFCF)) 
    icmp_ln31_3_fu_283_p2_carry__0_i_2
       (.I0(max_19_reg_427[13]),
        .I1(icmp_ln31_3_fu_283_p2_carry__0_i_11_n_0),
        .I2(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .I3(max_18_reg_434[13]),
        .I4(max_7_fu_66[13]),
        .I5(icmp_ln31_3_fu_283_p2_carry__0_i_12_n_0),
        .O(icmp_ln31_3_fu_283_p2_carry__0_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'hB00B)) 
    icmp_ln31_3_fu_283_p2_carry__0_i_20
       (.I0(max_7_fu_66[13]),
        .I1(max_18_reg_434[13]),
        .I2(max_7_fu_66[12]),
        .I3(max_18_reg_434[12]),
        .O(icmp_ln31_3_fu_283_p2_carry__0_i_20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hB00B)) 
    icmp_ln31_3_fu_283_p2_carry__0_i_21
       (.I0(max_7_fu_66[11]),
        .I1(max_18_reg_434[11]),
        .I2(max_7_fu_66[10]),
        .I3(max_18_reg_434[10]),
        .O(icmp_ln31_3_fu_283_p2_carry__0_i_21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    icmp_ln31_3_fu_283_p2_carry__0_i_22
       (.I0(max_19_reg_427[10]),
        .I1(max_7_fu_66[10]),
        .O(icmp_ln31_3_fu_283_p2_carry__0_i_22_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hB00B)) 
    icmp_ln31_3_fu_283_p2_carry__0_i_23
       (.I0(max_7_fu_66[9]),
        .I1(max_18_reg_434[9]),
        .I2(max_7_fu_66[8]),
        .I3(max_18_reg_434[8]),
        .O(icmp_ln31_3_fu_283_p2_carry__0_i_23_n_0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h4FF4)) 
    icmp_ln31_3_fu_283_p2_carry__0_i_24
       (.I0(max_7_fu_66[9]),
        .I1(max_19_reg_427[9]),
        .I2(max_7_fu_66[8]),
        .I3(max_19_reg_427[8]),
        .O(icmp_ln31_3_fu_283_p2_carry__0_i_24_n_0));
  LUT6 #(
    .INIT(64'hD0DFC0C0DFDFCFCF)) 
    icmp_ln31_3_fu_283_p2_carry__0_i_3
       (.I0(max_19_reg_427[11]),
        .I1(icmp_ln31_3_fu_283_p2_carry__0_i_13_n_0),
        .I2(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .I3(max_18_reg_434[11]),
        .I4(max_7_fu_66[11]),
        .I5(icmp_ln31_3_fu_283_p2_carry__0_i_14_n_0),
        .O(icmp_ln31_3_fu_283_p2_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h707F30307F7F3F3F)) 
    icmp_ln31_3_fu_283_p2_carry__0_i_4
       (.I0(max_19_reg_427[9]),
        .I1(icmp_ln31_3_fu_283_p2_carry__0_i_15_n_0),
        .I2(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .I3(max_18_reg_434[9]),
        .I4(max_7_fu_66[9]),
        .I5(icmp_ln31_3_fu_283_p2_carry__0_i_16_n_0),
        .O(icmp_ln31_3_fu_283_p2_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h880F8800CC0FCC0F)) 
    icmp_ln31_3_fu_283_p2_carry__0_i_5
       (.I0(max_19_reg_427[15]),
        .I1(icmp_ln31_3_fu_283_p2_carry__0_i_17_n_0),
        .I2(icmp_ln31_3_fu_283_p2_carry__0_i_18_n_0),
        .I3(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .I4(max_18_reg_434[15]),
        .I5(max_7_fu_66[15]),
        .O(icmp_ln31_3_fu_283_p2_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h8F80CFCF8080C0C0)) 
    icmp_ln31_3_fu_283_p2_carry__0_i_6
       (.I0(max_19_reg_427[13]),
        .I1(icmp_ln31_3_fu_283_p2_carry__0_i_19_n_0),
        .I2(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .I3(max_18_reg_434[13]),
        .I4(max_7_fu_66[13]),
        .I5(icmp_ln31_3_fu_283_p2_carry__0_i_20_n_0),
        .O(icmp_ln31_3_fu_283_p2_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h0F8800CC00880FCC)) 
    icmp_ln31_3_fu_283_p2_carry__0_i_7
       (.I0(max_18_reg_434[11]),
        .I1(icmp_ln31_3_fu_283_p2_carry__0_i_21_n_0),
        .I2(icmp_ln31_3_fu_283_p2_carry__0_i_22_n_0),
        .I3(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .I4(max_7_fu_66[11]),
        .I5(max_19_reg_427[11]),
        .O(icmp_ln31_3_fu_283_p2_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h0F8800880FCC0FCC)) 
    icmp_ln31_3_fu_283_p2_carry__0_i_8
       (.I0(max_18_reg_434[9]),
        .I1(icmp_ln31_3_fu_283_p2_carry__0_i_23_n_0),
        .I2(icmp_ln31_3_fu_283_p2_carry__0_i_24_n_0),
        .I3(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .I4(max_19_reg_427[9]),
        .I5(max_7_fu_66[9]),
        .O(icmp_ln31_3_fu_283_p2_carry__0_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h00D0)) 
    icmp_ln31_3_fu_283_p2_carry__0_i_9
       (.I0(max_19_reg_427[15]),
        .I1(max_7_fu_66[15]),
        .I2(max_7_fu_66[14]),
        .I3(max_19_reg_427[14]),
        .O(icmp_ln31_3_fu_283_p2_carry__0_i_9_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln31_3_fu_283_p2_carry__1
       (.CI(icmp_ln31_3_fu_283_p2_carry__0_n_0),
        .CO({icmp_ln31_3_fu_283_p2_carry__1_n_0,icmp_ln31_3_fu_283_p2_carry__1_n_1,icmp_ln31_3_fu_283_p2_carry__1_n_2,icmp_ln31_3_fu_283_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({icmp_ln31_3_fu_283_p2_carry__1_i_1_n_0,icmp_ln31_3_fu_283_p2_carry__1_i_2_n_0,icmp_ln31_3_fu_283_p2_carry__1_i_3_n_0,icmp_ln31_3_fu_283_p2_carry__1_i_4_n_0}),
        .O(NLW_icmp_ln31_3_fu_283_p2_carry__1_O_UNCONNECTED[3:0]),
        .S({icmp_ln31_3_fu_283_p2_carry__1_i_5_n_0,icmp_ln31_3_fu_283_p2_carry__1_i_6_n_0,icmp_ln31_3_fu_283_p2_carry__1_i_7_n_0,icmp_ln31_3_fu_283_p2_carry__1_i_8_n_0}));
  LUT6 #(
    .INIT(64'h707F30307F7F3F3F)) 
    icmp_ln31_3_fu_283_p2_carry__1_i_1
       (.I0(max_19_reg_427[23]),
        .I1(icmp_ln31_3_fu_283_p2_carry__1_i_9_n_0),
        .I2(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .I3(max_18_reg_434[23]),
        .I4(max_7_fu_66[23]),
        .I5(icmp_ln31_3_fu_283_p2_carry__1_i_10_n_0),
        .O(icmp_ln31_3_fu_283_p2_carry__1_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    icmp_ln31_3_fu_283_p2_carry__1_i_10
       (.I0(max_7_fu_66[23]),
        .I1(max_18_reg_434[23]),
        .I2(max_7_fu_66[22]),
        .I3(max_18_reg_434[22]),
        .O(icmp_ln31_3_fu_283_p2_carry__1_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'h00D0)) 
    icmp_ln31_3_fu_283_p2_carry__1_i_11
       (.I0(max_19_reg_427[21]),
        .I1(max_7_fu_66[21]),
        .I2(max_7_fu_66[20]),
        .I3(max_19_reg_427[20]),
        .O(icmp_ln31_3_fu_283_p2_carry__1_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    icmp_ln31_3_fu_283_p2_carry__1_i_12
       (.I0(max_7_fu_66[21]),
        .I1(max_18_reg_434[21]),
        .I2(max_7_fu_66[20]),
        .I3(max_18_reg_434[20]),
        .O(icmp_ln31_3_fu_283_p2_carry__1_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    icmp_ln31_3_fu_283_p2_carry__1_i_13
       (.I0(max_7_fu_66[19]),
        .I1(max_19_reg_427[19]),
        .I2(max_7_fu_66[18]),
        .I3(max_19_reg_427[18]),
        .O(icmp_ln31_3_fu_283_p2_carry__1_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    icmp_ln31_3_fu_283_p2_carry__1_i_14
       (.I0(max_7_fu_66[19]),
        .I1(max_18_reg_434[19]),
        .I2(max_7_fu_66[18]),
        .I3(max_18_reg_434[18]),
        .O(icmp_ln31_3_fu_283_p2_carry__1_i_14_n_0));
  LUT4 #(
    .INIT(16'h00D0)) 
    icmp_ln31_3_fu_283_p2_carry__1_i_15
       (.I0(max_19_reg_427[17]),
        .I1(max_7_fu_66[17]),
        .I2(max_7_fu_66[16]),
        .I3(max_19_reg_427[16]),
        .O(icmp_ln31_3_fu_283_p2_carry__1_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h00B0)) 
    icmp_ln31_3_fu_283_p2_carry__1_i_16
       (.I0(max_7_fu_66[17]),
        .I1(max_18_reg_434[17]),
        .I2(max_7_fu_66[16]),
        .I3(max_18_reg_434[16]),
        .O(icmp_ln31_3_fu_283_p2_carry__1_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'h4FF4)) 
    icmp_ln31_3_fu_283_p2_carry__1_i_17
       (.I0(max_7_fu_66[23]),
        .I1(max_19_reg_427[23]),
        .I2(max_7_fu_66[22]),
        .I3(max_19_reg_427[22]),
        .O(icmp_ln31_3_fu_283_p2_carry__1_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'hB00B)) 
    icmp_ln31_3_fu_283_p2_carry__1_i_18
       (.I0(max_7_fu_66[23]),
        .I1(max_18_reg_434[23]),
        .I2(max_7_fu_66[22]),
        .I3(max_18_reg_434[22]),
        .O(icmp_ln31_3_fu_283_p2_carry__1_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'hD00D)) 
    icmp_ln31_3_fu_283_p2_carry__1_i_19
       (.I0(max_19_reg_427[21]),
        .I1(max_7_fu_66[21]),
        .I2(max_7_fu_66[20]),
        .I3(max_19_reg_427[20]),
        .O(icmp_ln31_3_fu_283_p2_carry__1_i_19_n_0));
  LUT6 #(
    .INIT(64'hD0DFC0C0DFDFCFCF)) 
    icmp_ln31_3_fu_283_p2_carry__1_i_2
       (.I0(max_19_reg_427[21]),
        .I1(icmp_ln31_3_fu_283_p2_carry__1_i_11_n_0),
        .I2(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .I3(max_18_reg_434[21]),
        .I4(max_7_fu_66[21]),
        .I5(icmp_ln31_3_fu_283_p2_carry__1_i_12_n_0),
        .O(icmp_ln31_3_fu_283_p2_carry__1_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'hB00B)) 
    icmp_ln31_3_fu_283_p2_carry__1_i_20
       (.I0(max_7_fu_66[21]),
        .I1(max_18_reg_434[21]),
        .I2(max_7_fu_66[20]),
        .I3(max_18_reg_434[20]),
        .O(icmp_ln31_3_fu_283_p2_carry__1_i_20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hB00B)) 
    icmp_ln31_3_fu_283_p2_carry__1_i_21
       (.I0(max_7_fu_66[19]),
        .I1(max_18_reg_434[19]),
        .I2(max_7_fu_66[18]),
        .I3(max_18_reg_434[18]),
        .O(icmp_ln31_3_fu_283_p2_carry__1_i_21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h4FF4)) 
    icmp_ln31_3_fu_283_p2_carry__1_i_22
       (.I0(max_7_fu_66[19]),
        .I1(max_19_reg_427[19]),
        .I2(max_7_fu_66[18]),
        .I3(max_19_reg_427[18]),
        .O(icmp_ln31_3_fu_283_p2_carry__1_i_22_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    icmp_ln31_3_fu_283_p2_carry__1_i_23
       (.I0(max_19_reg_427[16]),
        .I1(max_7_fu_66[16]),
        .O(icmp_ln31_3_fu_283_p2_carry__1_i_23_n_0));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h4FF4)) 
    icmp_ln31_3_fu_283_p2_carry__1_i_24
       (.I0(max_7_fu_66[17]),
        .I1(max_18_reg_434[17]),
        .I2(max_7_fu_66[16]),
        .I3(max_18_reg_434[16]),
        .O(icmp_ln31_3_fu_283_p2_carry__1_i_24_n_0));
  LUT6 #(
    .INIT(64'h707F30307F7F3F3F)) 
    icmp_ln31_3_fu_283_p2_carry__1_i_3
       (.I0(max_19_reg_427[19]),
        .I1(icmp_ln31_3_fu_283_p2_carry__1_i_13_n_0),
        .I2(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .I3(max_18_reg_434[19]),
        .I4(max_7_fu_66[19]),
        .I5(icmp_ln31_3_fu_283_p2_carry__1_i_14_n_0),
        .O(icmp_ln31_3_fu_283_p2_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'hDDF0DDFFCCF0CCF0)) 
    icmp_ln31_3_fu_283_p2_carry__1_i_4
       (.I0(max_19_reg_427[17]),
        .I1(icmp_ln31_3_fu_283_p2_carry__1_i_15_n_0),
        .I2(icmp_ln31_3_fu_283_p2_carry__1_i_16_n_0),
        .I3(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .I4(max_18_reg_434[17]),
        .I5(max_7_fu_66[17]),
        .O(icmp_ln31_3_fu_283_p2_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'h4F405F5F40405050)) 
    icmp_ln31_3_fu_283_p2_carry__1_i_5
       (.I0(icmp_ln31_3_fu_283_p2_carry__1_i_17_n_0),
        .I1(max_19_reg_427[23]),
        .I2(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .I3(max_18_reg_434[23]),
        .I4(max_7_fu_66[23]),
        .I5(icmp_ln31_3_fu_283_p2_carry__1_i_18_n_0),
        .O(icmp_ln31_3_fu_283_p2_carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'h8F80CFCF8080C0C0)) 
    icmp_ln31_3_fu_283_p2_carry__1_i_6
       (.I0(max_19_reg_427[21]),
        .I1(icmp_ln31_3_fu_283_p2_carry__1_i_19_n_0),
        .I2(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .I3(max_18_reg_434[21]),
        .I4(max_7_fu_66[21]),
        .I5(icmp_ln31_3_fu_283_p2_carry__1_i_20_n_0),
        .O(icmp_ln31_3_fu_283_p2_carry__1_i_6_n_0));
  LUT6 #(
    .INIT(64'h0F8800880FCC0FCC)) 
    icmp_ln31_3_fu_283_p2_carry__1_i_7
       (.I0(max_18_reg_434[19]),
        .I1(icmp_ln31_3_fu_283_p2_carry__1_i_21_n_0),
        .I2(icmp_ln31_3_fu_283_p2_carry__1_i_22_n_0),
        .I3(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .I4(max_19_reg_427[19]),
        .I5(max_7_fu_66[19]),
        .O(icmp_ln31_3_fu_283_p2_carry__1_i_7_n_0));
  LUT6 #(
    .INIT(64'h440F4400110F110F)) 
    icmp_ln31_3_fu_283_p2_carry__1_i_8
       (.I0(icmp_ln31_3_fu_283_p2_carry__1_i_23_n_0),
        .I1(max_19_reg_427[17]),
        .I2(icmp_ln31_3_fu_283_p2_carry__1_i_24_n_0),
        .I3(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .I4(max_18_reg_434[17]),
        .I5(max_7_fu_66[17]),
        .O(icmp_ln31_3_fu_283_p2_carry__1_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    icmp_ln31_3_fu_283_p2_carry__1_i_9
       (.I0(max_7_fu_66[23]),
        .I1(max_19_reg_427[23]),
        .I2(max_7_fu_66[22]),
        .I3(max_19_reg_427[22]),
        .O(icmp_ln31_3_fu_283_p2_carry__1_i_9_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln31_3_fu_283_p2_carry__2
       (.CI(icmp_ln31_3_fu_283_p2_carry__1_n_0),
        .CO({icmp_ln31_3_fu_283_p2_carry__2_n_0,icmp_ln31_3_fu_283_p2_carry__2_n_1,icmp_ln31_3_fu_283_p2_carry__2_n_2,icmp_ln31_3_fu_283_p2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({icmp_ln31_3_fu_283_p2_carry__2_i_1_n_0,icmp_ln31_3_fu_283_p2_carry__2_i_2_n_0,icmp_ln31_3_fu_283_p2_carry__2_i_3_n_0,icmp_ln31_3_fu_283_p2_carry__2_i_4_n_0}),
        .O(NLW_icmp_ln31_3_fu_283_p2_carry__2_O_UNCONNECTED[3:0]),
        .S({icmp_ln31_3_fu_283_p2_carry__2_i_5_n_0,icmp_ln31_3_fu_283_p2_carry__2_i_6_n_0,icmp_ln31_3_fu_283_p2_carry__2_i_7_n_0,icmp_ln31_3_fu_283_p2_carry__2_i_8_n_0}));
  LUT6 #(
    .INIT(64'hCCF0EEFFCCF0EEF0)) 
    icmp_ln31_3_fu_283_p2_carry__2_i_1
       (.I0(max_19_reg_427[31]),
        .I1(icmp_ln31_3_fu_283_p2_carry__2_i_9_n_0),
        .I2(icmp_ln31_3_fu_283_p2_carry__2_i_10_n_0),
        .I3(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .I4(max_7_fu_66[31]),
        .I5(max_18_reg_434[31]),
        .O(icmp_ln31_3_fu_283_p2_carry__2_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'h00B0)) 
    icmp_ln31_3_fu_283_p2_carry__2_i_10
       (.I0(max_18_reg_434[31]),
        .I1(max_7_fu_66[31]),
        .I2(max_7_fu_66[30]),
        .I3(max_18_reg_434[30]),
        .O(icmp_ln31_3_fu_283_p2_carry__2_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'h00D0)) 
    icmp_ln31_3_fu_283_p2_carry__2_i_11
       (.I0(max_19_reg_427[29]),
        .I1(max_7_fu_66[29]),
        .I2(max_7_fu_66[28]),
        .I3(max_19_reg_427[28]),
        .O(icmp_ln31_3_fu_283_p2_carry__2_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    icmp_ln31_3_fu_283_p2_carry__2_i_12
       (.I0(max_7_fu_66[29]),
        .I1(max_18_reg_434[29]),
        .I2(max_7_fu_66[28]),
        .I3(max_18_reg_434[28]),
        .O(icmp_ln31_3_fu_283_p2_carry__2_i_12_n_0));
  LUT4 #(
    .INIT(16'h00D0)) 
    icmp_ln31_3_fu_283_p2_carry__2_i_13
       (.I0(max_19_reg_427[27]),
        .I1(max_7_fu_66[27]),
        .I2(max_7_fu_66[26]),
        .I3(max_19_reg_427[26]),
        .O(icmp_ln31_3_fu_283_p2_carry__2_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    icmp_ln31_3_fu_283_p2_carry__2_i_14
       (.I0(max_7_fu_66[27]),
        .I1(max_18_reg_434[27]),
        .I2(max_7_fu_66[26]),
        .I3(max_18_reg_434[26]),
        .O(icmp_ln31_3_fu_283_p2_carry__2_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'h00D0)) 
    icmp_ln31_3_fu_283_p2_carry__2_i_15
       (.I0(max_19_reg_427[25]),
        .I1(max_7_fu_66[25]),
        .I2(max_7_fu_66[24]),
        .I3(max_19_reg_427[24]),
        .O(icmp_ln31_3_fu_283_p2_carry__2_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h00B0)) 
    icmp_ln31_3_fu_283_p2_carry__2_i_16
       (.I0(max_7_fu_66[25]),
        .I1(max_18_reg_434[25]),
        .I2(max_7_fu_66[24]),
        .I3(max_18_reg_434[24]),
        .O(icmp_ln31_3_fu_283_p2_carry__2_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'h4FF4)) 
    icmp_ln31_3_fu_283_p2_carry__2_i_17
       (.I0(max_18_reg_434[31]),
        .I1(max_7_fu_66[31]),
        .I2(max_7_fu_66[30]),
        .I3(max_18_reg_434[30]),
        .O(icmp_ln31_3_fu_283_p2_carry__2_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    icmp_ln31_3_fu_283_p2_carry__2_i_18
       (.I0(max_19_reg_427[30]),
        .I1(max_7_fu_66[30]),
        .O(icmp_ln31_3_fu_283_p2_carry__2_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'hD00D)) 
    icmp_ln31_3_fu_283_p2_carry__2_i_19
       (.I0(max_19_reg_427[29]),
        .I1(max_7_fu_66[29]),
        .I2(max_7_fu_66[28]),
        .I3(max_19_reg_427[28]),
        .O(icmp_ln31_3_fu_283_p2_carry__2_i_19_n_0));
  LUT6 #(
    .INIT(64'hD0DFC0C0DFDFCFCF)) 
    icmp_ln31_3_fu_283_p2_carry__2_i_2
       (.I0(max_19_reg_427[29]),
        .I1(icmp_ln31_3_fu_283_p2_carry__2_i_11_n_0),
        .I2(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .I3(max_18_reg_434[29]),
        .I4(max_7_fu_66[29]),
        .I5(icmp_ln31_3_fu_283_p2_carry__2_i_12_n_0),
        .O(icmp_ln31_3_fu_283_p2_carry__2_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'hB00B)) 
    icmp_ln31_3_fu_283_p2_carry__2_i_20
       (.I0(max_7_fu_66[29]),
        .I1(max_18_reg_434[29]),
        .I2(max_7_fu_66[28]),
        .I3(max_18_reg_434[28]),
        .O(icmp_ln31_3_fu_283_p2_carry__2_i_20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'hB00B)) 
    icmp_ln31_3_fu_283_p2_carry__2_i_21
       (.I0(max_7_fu_66[27]),
        .I1(max_18_reg_434[27]),
        .I2(max_7_fu_66[26]),
        .I3(max_18_reg_434[26]),
        .O(icmp_ln31_3_fu_283_p2_carry__2_i_21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    icmp_ln31_3_fu_283_p2_carry__2_i_22
       (.I0(max_19_reg_427[26]),
        .I1(max_7_fu_66[26]),
        .O(icmp_ln31_3_fu_283_p2_carry__2_i_22_n_0));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'hD00D)) 
    icmp_ln31_3_fu_283_p2_carry__2_i_23
       (.I0(max_19_reg_427[25]),
        .I1(max_7_fu_66[25]),
        .I2(max_7_fu_66[24]),
        .I3(max_19_reg_427[24]),
        .O(icmp_ln31_3_fu_283_p2_carry__2_i_23_n_0));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h4FF4)) 
    icmp_ln31_3_fu_283_p2_carry__2_i_24
       (.I0(max_7_fu_66[25]),
        .I1(max_18_reg_434[25]),
        .I2(max_7_fu_66[24]),
        .I3(max_18_reg_434[24]),
        .O(icmp_ln31_3_fu_283_p2_carry__2_i_24_n_0));
  LUT6 #(
    .INIT(64'hD0DFC0C0DFDFCFCF)) 
    icmp_ln31_3_fu_283_p2_carry__2_i_3
       (.I0(max_19_reg_427[27]),
        .I1(icmp_ln31_3_fu_283_p2_carry__2_i_13_n_0),
        .I2(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .I3(max_18_reg_434[27]),
        .I4(max_7_fu_66[27]),
        .I5(icmp_ln31_3_fu_283_p2_carry__2_i_14_n_0),
        .O(icmp_ln31_3_fu_283_p2_carry__2_i_3_n_0));
  LUT6 #(
    .INIT(64'hDDF0DDFFCCF0CCF0)) 
    icmp_ln31_3_fu_283_p2_carry__2_i_4
       (.I0(max_19_reg_427[25]),
        .I1(icmp_ln31_3_fu_283_p2_carry__2_i_15_n_0),
        .I2(icmp_ln31_3_fu_283_p2_carry__2_i_16_n_0),
        .I3(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .I4(max_18_reg_434[25]),
        .I5(max_7_fu_66[25]),
        .O(icmp_ln31_3_fu_283_p2_carry__2_i_4_n_0));
  LUT6 #(
    .INIT(64'h0F55001100550F11)) 
    icmp_ln31_3_fu_283_p2_carry__2_i_5
       (.I0(icmp_ln31_3_fu_283_p2_carry__2_i_17_n_0),
        .I1(max_18_reg_434[31]),
        .I2(icmp_ln31_3_fu_283_p2_carry__2_i_18_n_0),
        .I3(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .I4(max_7_fu_66[31]),
        .I5(max_19_reg_427[31]),
        .O(icmp_ln31_3_fu_283_p2_carry__2_i_5_n_0));
  LUT6 #(
    .INIT(64'h8F80CFCF8080C0C0)) 
    icmp_ln31_3_fu_283_p2_carry__2_i_6
       (.I0(max_19_reg_427[29]),
        .I1(icmp_ln31_3_fu_283_p2_carry__2_i_19_n_0),
        .I2(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .I3(max_18_reg_434[29]),
        .I4(max_7_fu_66[29]),
        .I5(icmp_ln31_3_fu_283_p2_carry__2_i_20_n_0),
        .O(icmp_ln31_3_fu_283_p2_carry__2_i_6_n_0));
  LUT6 #(
    .INIT(64'h0F8800CC00880FCC)) 
    icmp_ln31_3_fu_283_p2_carry__2_i_7
       (.I0(max_18_reg_434[27]),
        .I1(icmp_ln31_3_fu_283_p2_carry__2_i_21_n_0),
        .I2(icmp_ln31_3_fu_283_p2_carry__2_i_22_n_0),
        .I3(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .I4(max_7_fu_66[27]),
        .I5(max_19_reg_427[27]),
        .O(icmp_ln31_3_fu_283_p2_carry__2_i_7_n_0));
  LUT6 #(
    .INIT(64'h880F8800CC0FCC0F)) 
    icmp_ln31_3_fu_283_p2_carry__2_i_8
       (.I0(max_19_reg_427[25]),
        .I1(icmp_ln31_3_fu_283_p2_carry__2_i_23_n_0),
        .I2(icmp_ln31_3_fu_283_p2_carry__2_i_24_n_0),
        .I3(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .I4(max_18_reg_434[25]),
        .I5(max_7_fu_66[25]),
        .O(icmp_ln31_3_fu_283_p2_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h00D0)) 
    icmp_ln31_3_fu_283_p2_carry__2_i_9
       (.I0(max_7_fu_66[31]),
        .I1(max_19_reg_427[31]),
        .I2(max_7_fu_66[30]),
        .I3(max_19_reg_427[30]),
        .O(icmp_ln31_3_fu_283_p2_carry__2_i_9_n_0));
  LUT6 #(
    .INIT(64'h707F30307F7F3F3F)) 
    icmp_ln31_3_fu_283_p2_carry_i_1
       (.I0(max_19_reg_427[7]),
        .I1(icmp_ln31_3_fu_283_p2_carry_i_9_n_0),
        .I2(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .I3(max_18_reg_434[7]),
        .I4(max_7_fu_66[7]),
        .I5(icmp_ln31_3_fu_283_p2_carry_i_10_n_0),
        .O(icmp_ln31_3_fu_283_p2_carry_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    icmp_ln31_3_fu_283_p2_carry_i_10
       (.I0(max_7_fu_66[7]),
        .I1(max_18_reg_434[7]),
        .I2(max_7_fu_66[6]),
        .I3(max_18_reg_434[6]),
        .O(icmp_ln31_3_fu_283_p2_carry_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    icmp_ln31_3_fu_283_p2_carry_i_11
       (.I0(max_7_fu_66[5]),
        .I1(max_19_reg_427[5]),
        .I2(max_7_fu_66[4]),
        .I3(max_19_reg_427[4]),
        .O(icmp_ln31_3_fu_283_p2_carry_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    icmp_ln31_3_fu_283_p2_carry_i_12
       (.I0(max_7_fu_66[5]),
        .I1(max_18_reg_434[5]),
        .I2(max_7_fu_66[4]),
        .I3(max_18_reg_434[4]),
        .O(icmp_ln31_3_fu_283_p2_carry_i_12_n_0));
  LUT4 #(
    .INIT(16'h00D0)) 
    icmp_ln31_3_fu_283_p2_carry_i_13
       (.I0(max_19_reg_427[3]),
        .I1(max_7_fu_66[3]),
        .I2(max_7_fu_66[2]),
        .I3(max_19_reg_427[2]),
        .O(icmp_ln31_3_fu_283_p2_carry_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    icmp_ln31_3_fu_283_p2_carry_i_14
       (.I0(max_7_fu_66[3]),
        .I1(max_18_reg_434[3]),
        .I2(max_7_fu_66[2]),
        .I3(max_18_reg_434[2]),
        .O(icmp_ln31_3_fu_283_p2_carry_i_14_n_0));
  LUT4 #(
    .INIT(16'h00D0)) 
    icmp_ln31_3_fu_283_p2_carry_i_15
       (.I0(max_19_reg_427[1]),
        .I1(max_7_fu_66[1]),
        .I2(max_7_fu_66[0]),
        .I3(max_19_reg_427[0]),
        .O(icmp_ln31_3_fu_283_p2_carry_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    icmp_ln31_3_fu_283_p2_carry_i_16
       (.I0(max_7_fu_66[1]),
        .I1(max_18_reg_434[1]),
        .I2(max_7_fu_66[0]),
        .I3(max_18_reg_434[0]),
        .O(icmp_ln31_3_fu_283_p2_carry_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h4FF4)) 
    icmp_ln31_3_fu_283_p2_carry_i_17
       (.I0(max_7_fu_66[7]),
        .I1(max_19_reg_427[7]),
        .I2(max_7_fu_66[6]),
        .I3(max_19_reg_427[6]),
        .O(icmp_ln31_3_fu_283_p2_carry_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hB00B)) 
    icmp_ln31_3_fu_283_p2_carry_i_18
       (.I0(max_7_fu_66[7]),
        .I1(max_18_reg_434[7]),
        .I2(max_7_fu_66[6]),
        .I3(max_18_reg_434[6]),
        .O(icmp_ln31_3_fu_283_p2_carry_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hB00B)) 
    icmp_ln31_3_fu_283_p2_carry_i_19
       (.I0(max_7_fu_66[5]),
        .I1(max_18_reg_434[5]),
        .I2(max_7_fu_66[4]),
        .I3(max_18_reg_434[4]),
        .O(icmp_ln31_3_fu_283_p2_carry_i_19_n_0));
  LUT6 #(
    .INIT(64'h707F30307F7F3F3F)) 
    icmp_ln31_3_fu_283_p2_carry_i_2
       (.I0(max_19_reg_427[5]),
        .I1(icmp_ln31_3_fu_283_p2_carry_i_11_n_0),
        .I2(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .I3(max_18_reg_434[5]),
        .I4(max_7_fu_66[5]),
        .I5(icmp_ln31_3_fu_283_p2_carry_i_12_n_0),
        .O(icmp_ln31_3_fu_283_p2_carry_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h4FF4)) 
    icmp_ln31_3_fu_283_p2_carry_i_20
       (.I0(max_7_fu_66[5]),
        .I1(max_19_reg_427[5]),
        .I2(max_7_fu_66[4]),
        .I3(max_19_reg_427[4]),
        .O(icmp_ln31_3_fu_283_p2_carry_i_20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h6)) 
    icmp_ln31_3_fu_283_p2_carry_i_21
       (.I0(max_18_reg_434[2]),
        .I1(max_7_fu_66[2]),
        .O(icmp_ln31_3_fu_283_p2_carry_i_21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    icmp_ln31_3_fu_283_p2_carry_i_22
       (.I0(max_19_reg_427[2]),
        .I1(max_7_fu_66[2]),
        .O(icmp_ln31_3_fu_283_p2_carry_i_22_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    icmp_ln31_3_fu_283_p2_carry_i_23
       (.I0(max_19_reg_427[0]),
        .I1(max_7_fu_66[0]),
        .O(icmp_ln31_3_fu_283_p2_carry_i_23_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h6)) 
    icmp_ln31_3_fu_283_p2_carry_i_24
       (.I0(max_18_reg_434[0]),
        .I1(max_7_fu_66[0]),
        .O(icmp_ln31_3_fu_283_p2_carry_i_24_n_0));
  LUT6 #(
    .INIT(64'hD0DFC0C0DFDFCFCF)) 
    icmp_ln31_3_fu_283_p2_carry_i_3
       (.I0(max_19_reg_427[3]),
        .I1(icmp_ln31_3_fu_283_p2_carry_i_13_n_0),
        .I2(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .I3(max_18_reg_434[3]),
        .I4(max_7_fu_66[3]),
        .I5(icmp_ln31_3_fu_283_p2_carry_i_14_n_0),
        .O(icmp_ln31_3_fu_283_p2_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'hD0DFC0C0DFDFCFCF)) 
    icmp_ln31_3_fu_283_p2_carry_i_4
       (.I0(max_19_reg_427[1]),
        .I1(icmp_ln31_3_fu_283_p2_carry_i_15_n_0),
        .I2(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .I3(max_18_reg_434[1]),
        .I4(max_7_fu_66[1]),
        .I5(icmp_ln31_3_fu_283_p2_carry_i_16_n_0),
        .O(icmp_ln31_3_fu_283_p2_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h4F405F5F40405050)) 
    icmp_ln31_3_fu_283_p2_carry_i_5
       (.I0(icmp_ln31_3_fu_283_p2_carry_i_17_n_0),
        .I1(max_19_reg_427[7]),
        .I2(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .I3(max_18_reg_434[7]),
        .I4(max_7_fu_66[7]),
        .I5(icmp_ln31_3_fu_283_p2_carry_i_18_n_0),
        .O(icmp_ln31_3_fu_283_p2_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h0F8800880FCC0FCC)) 
    icmp_ln31_3_fu_283_p2_carry_i_6
       (.I0(max_18_reg_434[5]),
        .I1(icmp_ln31_3_fu_283_p2_carry_i_19_n_0),
        .I2(icmp_ln31_3_fu_283_p2_carry_i_20_n_0),
        .I3(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .I4(max_19_reg_427[5]),
        .I5(max_7_fu_66[5]),
        .O(icmp_ln31_3_fu_283_p2_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h0F44001100440F11)) 
    icmp_ln31_3_fu_283_p2_carry_i_7
       (.I0(icmp_ln31_3_fu_283_p2_carry_i_21_n_0),
        .I1(max_18_reg_434[3]),
        .I2(icmp_ln31_3_fu_283_p2_carry_i_22_n_0),
        .I3(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .I4(max_7_fu_66[3]),
        .I5(max_19_reg_427[3]),
        .O(icmp_ln31_3_fu_283_p2_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h440F11004400110F)) 
    icmp_ln31_3_fu_283_p2_carry_i_8
       (.I0(icmp_ln31_3_fu_283_p2_carry_i_23_n_0),
        .I1(max_19_reg_427[1]),
        .I2(icmp_ln31_3_fu_283_p2_carry_i_24_n_0),
        .I3(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .I4(max_7_fu_66[1]),
        .I5(max_18_reg_434[1]),
        .O(icmp_ln31_3_fu_283_p2_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    icmp_ln31_3_fu_283_p2_carry_i_9
       (.I0(max_7_fu_66[7]),
        .I1(max_19_reg_427[7]),
        .I2(max_7_fu_66[6]),
        .I3(max_19_reg_427[6]),
        .O(icmp_ln31_3_fu_283_p2_carry_i_9_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln31_4_fu_309_p2_carry
       (.CI(1'b0),
        .CO({icmp_ln31_4_fu_309_p2_carry_n_0,icmp_ln31_4_fu_309_p2_carry_n_1,icmp_ln31_4_fu_309_p2_carry_n_2,icmp_ln31_4_fu_309_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({icmp_ln31_4_fu_309_p2_carry_i_1_n_0,icmp_ln31_4_fu_309_p2_carry_i_2_n_0,icmp_ln31_4_fu_309_p2_carry_i_3_n_0,icmp_ln31_4_fu_309_p2_carry_i_4_n_0}),
        .O(NLW_icmp_ln31_4_fu_309_p2_carry_O_UNCONNECTED[3:0]),
        .S({icmp_ln31_4_fu_309_p2_carry_i_5_n_0,icmp_ln31_4_fu_309_p2_carry_i_6_n_0,icmp_ln31_4_fu_309_p2_carry_i_7_n_0,icmp_ln31_4_fu_309_p2_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln31_4_fu_309_p2_carry__0
       (.CI(icmp_ln31_4_fu_309_p2_carry_n_0),
        .CO({icmp_ln31_4_fu_309_p2_carry__0_n_0,icmp_ln31_4_fu_309_p2_carry__0_n_1,icmp_ln31_4_fu_309_p2_carry__0_n_2,icmp_ln31_4_fu_309_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({icmp_ln31_4_fu_309_p2_carry__0_i_1_n_0,icmp_ln31_4_fu_309_p2_carry__0_i_2_n_0,icmp_ln31_4_fu_309_p2_carry__0_i_3_n_0,icmp_ln31_4_fu_309_p2_carry__0_i_4_n_0}),
        .O(NLW_icmp_ln31_4_fu_309_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({icmp_ln31_4_fu_309_p2_carry__0_i_5_n_0,icmp_ln31_4_fu_309_p2_carry__0_i_6_n_0,icmp_ln31_4_fu_309_p2_carry__0_i_7_n_0,icmp_ln31_4_fu_309_p2_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_4_fu_309_p2_carry__0_i_1
       (.I0(max_23_reg_440[14]),
        .I1(max_22_reg_447[14]),
        .I2(max_22_reg_447[15]),
        .I3(max_23_reg_440[15]),
        .O(icmp_ln31_4_fu_309_p2_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_4_fu_309_p2_carry__0_i_2
       (.I0(max_23_reg_440[12]),
        .I1(max_22_reg_447[12]),
        .I2(max_22_reg_447[13]),
        .I3(max_23_reg_440[13]),
        .O(icmp_ln31_4_fu_309_p2_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_4_fu_309_p2_carry__0_i_3
       (.I0(max_23_reg_440[10]),
        .I1(max_22_reg_447[10]),
        .I2(max_22_reg_447[11]),
        .I3(max_23_reg_440[11]),
        .O(icmp_ln31_4_fu_309_p2_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_4_fu_309_p2_carry__0_i_4
       (.I0(max_23_reg_440[8]),
        .I1(max_22_reg_447[8]),
        .I2(max_22_reg_447[9]),
        .I3(max_23_reg_440[9]),
        .O(icmp_ln31_4_fu_309_p2_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_4_fu_309_p2_carry__0_i_5
       (.I0(max_22_reg_447[14]),
        .I1(max_23_reg_440[14]),
        .I2(max_22_reg_447[15]),
        .I3(max_23_reg_440[15]),
        .O(icmp_ln31_4_fu_309_p2_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_4_fu_309_p2_carry__0_i_6
       (.I0(max_22_reg_447[12]),
        .I1(max_23_reg_440[12]),
        .I2(max_22_reg_447[13]),
        .I3(max_23_reg_440[13]),
        .O(icmp_ln31_4_fu_309_p2_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_4_fu_309_p2_carry__0_i_7
       (.I0(max_22_reg_447[10]),
        .I1(max_23_reg_440[10]),
        .I2(max_22_reg_447[11]),
        .I3(max_23_reg_440[11]),
        .O(icmp_ln31_4_fu_309_p2_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_4_fu_309_p2_carry__0_i_8
       (.I0(max_22_reg_447[8]),
        .I1(max_23_reg_440[8]),
        .I2(max_22_reg_447[9]),
        .I3(max_23_reg_440[9]),
        .O(icmp_ln31_4_fu_309_p2_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln31_4_fu_309_p2_carry__1
       (.CI(icmp_ln31_4_fu_309_p2_carry__0_n_0),
        .CO({icmp_ln31_4_fu_309_p2_carry__1_n_0,icmp_ln31_4_fu_309_p2_carry__1_n_1,icmp_ln31_4_fu_309_p2_carry__1_n_2,icmp_ln31_4_fu_309_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({icmp_ln31_4_fu_309_p2_carry__1_i_1_n_0,icmp_ln31_4_fu_309_p2_carry__1_i_2_n_0,icmp_ln31_4_fu_309_p2_carry__1_i_3_n_0,icmp_ln31_4_fu_309_p2_carry__1_i_4_n_0}),
        .O(NLW_icmp_ln31_4_fu_309_p2_carry__1_O_UNCONNECTED[3:0]),
        .S({icmp_ln31_4_fu_309_p2_carry__1_i_5_n_0,icmp_ln31_4_fu_309_p2_carry__1_i_6_n_0,icmp_ln31_4_fu_309_p2_carry__1_i_7_n_0,icmp_ln31_4_fu_309_p2_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_4_fu_309_p2_carry__1_i_1
       (.I0(max_23_reg_440[22]),
        .I1(max_22_reg_447[22]),
        .I2(max_22_reg_447[23]),
        .I3(max_23_reg_440[23]),
        .O(icmp_ln31_4_fu_309_p2_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_4_fu_309_p2_carry__1_i_2
       (.I0(max_23_reg_440[20]),
        .I1(max_22_reg_447[20]),
        .I2(max_22_reg_447[21]),
        .I3(max_23_reg_440[21]),
        .O(icmp_ln31_4_fu_309_p2_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_4_fu_309_p2_carry__1_i_3
       (.I0(max_23_reg_440[18]),
        .I1(max_22_reg_447[18]),
        .I2(max_22_reg_447[19]),
        .I3(max_23_reg_440[19]),
        .O(icmp_ln31_4_fu_309_p2_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_4_fu_309_p2_carry__1_i_4
       (.I0(max_23_reg_440[16]),
        .I1(max_22_reg_447[16]),
        .I2(max_22_reg_447[17]),
        .I3(max_23_reg_440[17]),
        .O(icmp_ln31_4_fu_309_p2_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_4_fu_309_p2_carry__1_i_5
       (.I0(max_22_reg_447[22]),
        .I1(max_23_reg_440[22]),
        .I2(max_22_reg_447[23]),
        .I3(max_23_reg_440[23]),
        .O(icmp_ln31_4_fu_309_p2_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_4_fu_309_p2_carry__1_i_6
       (.I0(max_22_reg_447[20]),
        .I1(max_23_reg_440[20]),
        .I2(max_22_reg_447[21]),
        .I3(max_23_reg_440[21]),
        .O(icmp_ln31_4_fu_309_p2_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_4_fu_309_p2_carry__1_i_7
       (.I0(max_22_reg_447[18]),
        .I1(max_23_reg_440[18]),
        .I2(max_22_reg_447[19]),
        .I3(max_23_reg_440[19]),
        .O(icmp_ln31_4_fu_309_p2_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_4_fu_309_p2_carry__1_i_8
       (.I0(max_22_reg_447[16]),
        .I1(max_23_reg_440[16]),
        .I2(max_22_reg_447[17]),
        .I3(max_23_reg_440[17]),
        .O(icmp_ln31_4_fu_309_p2_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln31_4_fu_309_p2_carry__2
       (.CI(icmp_ln31_4_fu_309_p2_carry__1_n_0),
        .CO({icmp_ln31_4_fu_309_p2_carry__2_n_0,icmp_ln31_4_fu_309_p2_carry__2_n_1,icmp_ln31_4_fu_309_p2_carry__2_n_2,icmp_ln31_4_fu_309_p2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({icmp_ln31_4_fu_309_p2_carry__2_i_1_n_0,icmp_ln31_4_fu_309_p2_carry__2_i_2_n_0,icmp_ln31_4_fu_309_p2_carry__2_i_3_n_0,icmp_ln31_4_fu_309_p2_carry__2_i_4_n_0}),
        .O(NLW_icmp_ln31_4_fu_309_p2_carry__2_O_UNCONNECTED[3:0]),
        .S({icmp_ln31_4_fu_309_p2_carry__2_i_5_n_0,icmp_ln31_4_fu_309_p2_carry__2_i_6_n_0,icmp_ln31_4_fu_309_p2_carry__2_i_7_n_0,icmp_ln31_4_fu_309_p2_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_4_fu_309_p2_carry__2_i_1
       (.I0(max_23_reg_440[30]),
        .I1(max_22_reg_447[30]),
        .I2(max_23_reg_440[31]),
        .I3(max_22_reg_447[31]),
        .O(icmp_ln31_4_fu_309_p2_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_4_fu_309_p2_carry__2_i_2
       (.I0(max_23_reg_440[28]),
        .I1(max_22_reg_447[28]),
        .I2(max_22_reg_447[29]),
        .I3(max_23_reg_440[29]),
        .O(icmp_ln31_4_fu_309_p2_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_4_fu_309_p2_carry__2_i_3
       (.I0(max_23_reg_440[26]),
        .I1(max_22_reg_447[26]),
        .I2(max_22_reg_447[27]),
        .I3(max_23_reg_440[27]),
        .O(icmp_ln31_4_fu_309_p2_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_4_fu_309_p2_carry__2_i_4
       (.I0(max_23_reg_440[24]),
        .I1(max_22_reg_447[24]),
        .I2(max_22_reg_447[25]),
        .I3(max_23_reg_440[25]),
        .O(icmp_ln31_4_fu_309_p2_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_4_fu_309_p2_carry__2_i_5
       (.I0(max_22_reg_447[30]),
        .I1(max_23_reg_440[30]),
        .I2(max_23_reg_440[31]),
        .I3(max_22_reg_447[31]),
        .O(icmp_ln31_4_fu_309_p2_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_4_fu_309_p2_carry__2_i_6
       (.I0(max_22_reg_447[28]),
        .I1(max_23_reg_440[28]),
        .I2(max_22_reg_447[29]),
        .I3(max_23_reg_440[29]),
        .O(icmp_ln31_4_fu_309_p2_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_4_fu_309_p2_carry__2_i_7
       (.I0(max_22_reg_447[26]),
        .I1(max_23_reg_440[26]),
        .I2(max_22_reg_447[27]),
        .I3(max_23_reg_440[27]),
        .O(icmp_ln31_4_fu_309_p2_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_4_fu_309_p2_carry__2_i_8
       (.I0(max_22_reg_447[24]),
        .I1(max_23_reg_440[24]),
        .I2(max_22_reg_447[25]),
        .I3(max_23_reg_440[25]),
        .O(icmp_ln31_4_fu_309_p2_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_4_fu_309_p2_carry_i_1
       (.I0(max_23_reg_440[6]),
        .I1(max_22_reg_447[6]),
        .I2(max_22_reg_447[7]),
        .I3(max_23_reg_440[7]),
        .O(icmp_ln31_4_fu_309_p2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_4_fu_309_p2_carry_i_2
       (.I0(max_23_reg_440[4]),
        .I1(max_22_reg_447[4]),
        .I2(max_22_reg_447[5]),
        .I3(max_23_reg_440[5]),
        .O(icmp_ln31_4_fu_309_p2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_4_fu_309_p2_carry_i_3
       (.I0(max_23_reg_440[2]),
        .I1(max_22_reg_447[2]),
        .I2(max_22_reg_447[3]),
        .I3(max_23_reg_440[3]),
        .O(icmp_ln31_4_fu_309_p2_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_4_fu_309_p2_carry_i_4
       (.I0(max_23_reg_440[0]),
        .I1(max_22_reg_447[0]),
        .I2(max_22_reg_447[1]),
        .I3(max_23_reg_440[1]),
        .O(icmp_ln31_4_fu_309_p2_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_4_fu_309_p2_carry_i_5
       (.I0(max_22_reg_447[6]),
        .I1(max_23_reg_440[6]),
        .I2(max_22_reg_447[7]),
        .I3(max_23_reg_440[7]),
        .O(icmp_ln31_4_fu_309_p2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_4_fu_309_p2_carry_i_6
       (.I0(max_22_reg_447[4]),
        .I1(max_23_reg_440[4]),
        .I2(max_22_reg_447[5]),
        .I3(max_23_reg_440[5]),
        .O(icmp_ln31_4_fu_309_p2_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_4_fu_309_p2_carry_i_7
       (.I0(max_22_reg_447[2]),
        .I1(max_23_reg_440[2]),
        .I2(max_22_reg_447[3]),
        .I3(max_23_reg_440[3]),
        .O(icmp_ln31_4_fu_309_p2_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_4_fu_309_p2_carry_i_8
       (.I0(max_22_reg_447[0]),
        .I1(max_23_reg_440[0]),
        .I2(max_22_reg_447[1]),
        .I3(max_23_reg_440[1]),
        .O(icmp_ln31_4_fu_309_p2_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln31_5_fu_319_p2_carry
       (.CI(1'b0),
        .CO({icmp_ln31_5_fu_319_p2_carry_n_0,icmp_ln31_5_fu_319_p2_carry_n_1,icmp_ln31_5_fu_319_p2_carry_n_2,icmp_ln31_5_fu_319_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({icmp_ln31_5_fu_319_p2_carry_i_1_n_0,icmp_ln31_5_fu_319_p2_carry_i_2_n_0,icmp_ln31_5_fu_319_p2_carry_i_3_n_0,icmp_ln31_5_fu_319_p2_carry_i_4_n_0}),
        .O(NLW_icmp_ln31_5_fu_319_p2_carry_O_UNCONNECTED[3:0]),
        .S({icmp_ln31_5_fu_319_p2_carry_i_5_n_0,icmp_ln31_5_fu_319_p2_carry_i_6_n_0,icmp_ln31_5_fu_319_p2_carry_i_7_n_0,icmp_ln31_5_fu_319_p2_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln31_5_fu_319_p2_carry__0
       (.CI(icmp_ln31_5_fu_319_p2_carry_n_0),
        .CO({icmp_ln31_5_fu_319_p2_carry__0_n_0,icmp_ln31_5_fu_319_p2_carry__0_n_1,icmp_ln31_5_fu_319_p2_carry__0_n_2,icmp_ln31_5_fu_319_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({icmp_ln31_5_fu_319_p2_carry__0_i_1_n_0,icmp_ln31_5_fu_319_p2_carry__0_i_2_n_0,icmp_ln31_5_fu_319_p2_carry__0_i_3_n_0,icmp_ln31_5_fu_319_p2_carry__0_i_4_n_0}),
        .O(NLW_icmp_ln31_5_fu_319_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({icmp_ln31_5_fu_319_p2_carry__0_i_5_n_0,icmp_ln31_5_fu_319_p2_carry__0_i_6_n_0,icmp_ln31_5_fu_319_p2_carry__0_i_7_n_0,icmp_ln31_5_fu_319_p2_carry__0_i_8_n_0}));
  LUT6 #(
    .INIT(64'hDDF0DDFFCCF0CCF0)) 
    icmp_ln31_5_fu_319_p2_carry__0_i_1
       (.I0(max_23_reg_440[15]),
        .I1(icmp_ln31_5_fu_319_p2_carry__0_i_9_n_0),
        .I2(icmp_ln31_5_fu_319_p2_carry__0_i_10_n_0),
        .I3(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .I4(max_22_reg_447[15]),
        .I5(max_11_fu_58[15]),
        .O(icmp_ln31_5_fu_319_p2_carry__0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h00B0)) 
    icmp_ln31_5_fu_319_p2_carry__0_i_10
       (.I0(max_11_fu_58[15]),
        .I1(max_22_reg_447[15]),
        .I2(max_11_fu_58[14]),
        .I3(max_22_reg_447[14]),
        .O(icmp_ln31_5_fu_319_p2_carry__0_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h00D0)) 
    icmp_ln31_5_fu_319_p2_carry__0_i_11
       (.I0(max_23_reg_440[13]),
        .I1(max_11_fu_58[13]),
        .I2(max_11_fu_58[12]),
        .I3(max_23_reg_440[12]),
        .O(icmp_ln31_5_fu_319_p2_carry__0_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h00B0)) 
    icmp_ln31_5_fu_319_p2_carry__0_i_12
       (.I0(max_11_fu_58[13]),
        .I1(max_22_reg_447[13]),
        .I2(max_11_fu_58[12]),
        .I3(max_22_reg_447[12]),
        .O(icmp_ln31_5_fu_319_p2_carry__0_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h00D0)) 
    icmp_ln31_5_fu_319_p2_carry__0_i_13
       (.I0(max_23_reg_440[11]),
        .I1(max_11_fu_58[11]),
        .I2(max_11_fu_58[10]),
        .I3(max_23_reg_440[10]),
        .O(icmp_ln31_5_fu_319_p2_carry__0_i_13_n_0));
  LUT4 #(
    .INIT(16'hFF4F)) 
    icmp_ln31_5_fu_319_p2_carry__0_i_14
       (.I0(max_11_fu_58[11]),
        .I1(max_22_reg_447[11]),
        .I2(max_11_fu_58[10]),
        .I3(max_22_reg_447[10]),
        .O(icmp_ln31_5_fu_319_p2_carry__0_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h00D0)) 
    icmp_ln31_5_fu_319_p2_carry__0_i_15
       (.I0(max_23_reg_440[9]),
        .I1(max_11_fu_58[9]),
        .I2(max_11_fu_58[8]),
        .I3(max_23_reg_440[8]),
        .O(icmp_ln31_5_fu_319_p2_carry__0_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h00B0)) 
    icmp_ln31_5_fu_319_p2_carry__0_i_16
       (.I0(max_11_fu_58[9]),
        .I1(max_22_reg_447[9]),
        .I2(max_11_fu_58[8]),
        .I3(max_22_reg_447[8]),
        .O(icmp_ln31_5_fu_319_p2_carry__0_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'hD00D)) 
    icmp_ln31_5_fu_319_p2_carry__0_i_17
       (.I0(max_23_reg_440[15]),
        .I1(max_11_fu_58[15]),
        .I2(max_11_fu_58[14]),
        .I3(max_23_reg_440[14]),
        .O(icmp_ln31_5_fu_319_p2_carry__0_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h4FF4)) 
    icmp_ln31_5_fu_319_p2_carry__0_i_18
       (.I0(max_11_fu_58[15]),
        .I1(max_22_reg_447[15]),
        .I2(max_11_fu_58[14]),
        .I3(max_22_reg_447[14]),
        .O(icmp_ln31_5_fu_319_p2_carry__0_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'hD00D)) 
    icmp_ln31_5_fu_319_p2_carry__0_i_19
       (.I0(max_23_reg_440[13]),
        .I1(max_11_fu_58[13]),
        .I2(max_11_fu_58[12]),
        .I3(max_23_reg_440[12]),
        .O(icmp_ln31_5_fu_319_p2_carry__0_i_19_n_0));
  LUT6 #(
    .INIT(64'hDDF0DDFFCCF0CCF0)) 
    icmp_ln31_5_fu_319_p2_carry__0_i_2
       (.I0(max_23_reg_440[13]),
        .I1(icmp_ln31_5_fu_319_p2_carry__0_i_11_n_0),
        .I2(icmp_ln31_5_fu_319_p2_carry__0_i_12_n_0),
        .I3(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .I4(max_22_reg_447[13]),
        .I5(max_11_fu_58[13]),
        .O(icmp_ln31_5_fu_319_p2_carry__0_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h4FF4)) 
    icmp_ln31_5_fu_319_p2_carry__0_i_20
       (.I0(max_11_fu_58[13]),
        .I1(max_22_reg_447[13]),
        .I2(max_11_fu_58[12]),
        .I3(max_22_reg_447[12]),
        .O(icmp_ln31_5_fu_319_p2_carry__0_i_20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hD00D)) 
    icmp_ln31_5_fu_319_p2_carry__0_i_21
       (.I0(max_23_reg_440[11]),
        .I1(max_11_fu_58[11]),
        .I2(max_11_fu_58[10]),
        .I3(max_23_reg_440[10]),
        .O(icmp_ln31_5_fu_319_p2_carry__0_i_21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    icmp_ln31_5_fu_319_p2_carry__0_i_22
       (.I0(max_22_reg_447[10]),
        .I1(max_11_fu_58[10]),
        .O(icmp_ln31_5_fu_319_p2_carry__0_i_22_n_0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hD00D)) 
    icmp_ln31_5_fu_319_p2_carry__0_i_23
       (.I0(max_23_reg_440[9]),
        .I1(max_11_fu_58[9]),
        .I2(max_11_fu_58[8]),
        .I3(max_23_reg_440[8]),
        .O(icmp_ln31_5_fu_319_p2_carry__0_i_23_n_0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h4FF4)) 
    icmp_ln31_5_fu_319_p2_carry__0_i_24
       (.I0(max_11_fu_58[9]),
        .I1(max_22_reg_447[9]),
        .I2(max_11_fu_58[8]),
        .I3(max_22_reg_447[8]),
        .O(icmp_ln31_5_fu_319_p2_carry__0_i_24_n_0));
  LUT6 #(
    .INIT(64'hD0DFC0C0DFDFCFCF)) 
    icmp_ln31_5_fu_319_p2_carry__0_i_3
       (.I0(max_23_reg_440[11]),
        .I1(icmp_ln31_5_fu_319_p2_carry__0_i_13_n_0),
        .I2(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .I3(max_22_reg_447[11]),
        .I4(max_11_fu_58[11]),
        .I5(icmp_ln31_5_fu_319_p2_carry__0_i_14_n_0),
        .O(icmp_ln31_5_fu_319_p2_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'hDDF0DDFFCCF0CCF0)) 
    icmp_ln31_5_fu_319_p2_carry__0_i_4
       (.I0(max_23_reg_440[9]),
        .I1(icmp_ln31_5_fu_319_p2_carry__0_i_15_n_0),
        .I2(icmp_ln31_5_fu_319_p2_carry__0_i_16_n_0),
        .I3(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .I4(max_22_reg_447[9]),
        .I5(max_11_fu_58[9]),
        .O(icmp_ln31_5_fu_319_p2_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h880F8800CC0FCC0F)) 
    icmp_ln31_5_fu_319_p2_carry__0_i_5
       (.I0(max_23_reg_440[15]),
        .I1(icmp_ln31_5_fu_319_p2_carry__0_i_17_n_0),
        .I2(icmp_ln31_5_fu_319_p2_carry__0_i_18_n_0),
        .I3(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .I4(max_22_reg_447[15]),
        .I5(max_11_fu_58[15]),
        .O(icmp_ln31_5_fu_319_p2_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h880F8800CC0FCC0F)) 
    icmp_ln31_5_fu_319_p2_carry__0_i_6
       (.I0(max_23_reg_440[13]),
        .I1(icmp_ln31_5_fu_319_p2_carry__0_i_19_n_0),
        .I2(icmp_ln31_5_fu_319_p2_carry__0_i_20_n_0),
        .I3(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .I4(max_22_reg_447[13]),
        .I5(max_11_fu_58[13]),
        .O(icmp_ln31_5_fu_319_p2_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h880FCC008800CC0F)) 
    icmp_ln31_5_fu_319_p2_carry__0_i_7
       (.I0(max_23_reg_440[11]),
        .I1(icmp_ln31_5_fu_319_p2_carry__0_i_21_n_0),
        .I2(icmp_ln31_5_fu_319_p2_carry__0_i_22_n_0),
        .I3(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .I4(max_11_fu_58[11]),
        .I5(max_22_reg_447[11]),
        .O(icmp_ln31_5_fu_319_p2_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h880F8800CC0FCC0F)) 
    icmp_ln31_5_fu_319_p2_carry__0_i_8
       (.I0(max_23_reg_440[9]),
        .I1(icmp_ln31_5_fu_319_p2_carry__0_i_23_n_0),
        .I2(icmp_ln31_5_fu_319_p2_carry__0_i_24_n_0),
        .I3(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .I4(max_22_reg_447[9]),
        .I5(max_11_fu_58[9]),
        .O(icmp_ln31_5_fu_319_p2_carry__0_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h00D0)) 
    icmp_ln31_5_fu_319_p2_carry__0_i_9
       (.I0(max_23_reg_440[15]),
        .I1(max_11_fu_58[15]),
        .I2(max_11_fu_58[14]),
        .I3(max_23_reg_440[14]),
        .O(icmp_ln31_5_fu_319_p2_carry__0_i_9_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln31_5_fu_319_p2_carry__1
       (.CI(icmp_ln31_5_fu_319_p2_carry__0_n_0),
        .CO({icmp_ln31_5_fu_319_p2_carry__1_n_0,icmp_ln31_5_fu_319_p2_carry__1_n_1,icmp_ln31_5_fu_319_p2_carry__1_n_2,icmp_ln31_5_fu_319_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({icmp_ln31_5_fu_319_p2_carry__1_i_1_n_0,icmp_ln31_5_fu_319_p2_carry__1_i_2_n_0,icmp_ln31_5_fu_319_p2_carry__1_i_3_n_0,icmp_ln31_5_fu_319_p2_carry__1_i_4_n_0}),
        .O(NLW_icmp_ln31_5_fu_319_p2_carry__1_O_UNCONNECTED[3:0]),
        .S({icmp_ln31_5_fu_319_p2_carry__1_i_5_n_0,icmp_ln31_5_fu_319_p2_carry__1_i_6_n_0,icmp_ln31_5_fu_319_p2_carry__1_i_7_n_0,icmp_ln31_5_fu_319_p2_carry__1_i_8_n_0}));
  LUT6 #(
    .INIT(64'hD0DFC0C0DFDFCFCF)) 
    icmp_ln31_5_fu_319_p2_carry__1_i_1
       (.I0(max_23_reg_440[23]),
        .I1(icmp_ln31_5_fu_319_p2_carry__1_i_9_n_0),
        .I2(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .I3(max_22_reg_447[23]),
        .I4(max_11_fu_58[23]),
        .I5(icmp_ln31_5_fu_319_p2_carry__1_i_10_n_0),
        .O(icmp_ln31_5_fu_319_p2_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'hFF4F)) 
    icmp_ln31_5_fu_319_p2_carry__1_i_10
       (.I0(max_11_fu_58[23]),
        .I1(max_22_reg_447[23]),
        .I2(max_11_fu_58[22]),
        .I3(max_22_reg_447[22]),
        .O(icmp_ln31_5_fu_319_p2_carry__1_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    icmp_ln31_5_fu_319_p2_carry__1_i_11
       (.I0(max_11_fu_58[21]),
        .I1(max_23_reg_440[21]),
        .I2(max_11_fu_58[20]),
        .I3(max_23_reg_440[20]),
        .O(icmp_ln31_5_fu_319_p2_carry__1_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h00B0)) 
    icmp_ln31_5_fu_319_p2_carry__1_i_12
       (.I0(max_11_fu_58[21]),
        .I1(max_22_reg_447[21]),
        .I2(max_11_fu_58[20]),
        .I3(max_22_reg_447[20]),
        .O(icmp_ln31_5_fu_319_p2_carry__1_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h00D0)) 
    icmp_ln31_5_fu_319_p2_carry__1_i_13
       (.I0(max_23_reg_440[19]),
        .I1(max_11_fu_58[19]),
        .I2(max_11_fu_58[18]),
        .I3(max_23_reg_440[18]),
        .O(icmp_ln31_5_fu_319_p2_carry__1_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    icmp_ln31_5_fu_319_p2_carry__1_i_14
       (.I0(max_11_fu_58[19]),
        .I1(max_22_reg_447[19]),
        .I2(max_11_fu_58[18]),
        .I3(max_22_reg_447[18]),
        .O(icmp_ln31_5_fu_319_p2_carry__1_i_14_n_0));
  LUT4 #(
    .INIT(16'h00D0)) 
    icmp_ln31_5_fu_319_p2_carry__1_i_15
       (.I0(max_23_reg_440[17]),
        .I1(max_11_fu_58[17]),
        .I2(max_11_fu_58[16]),
        .I3(max_23_reg_440[16]),
        .O(icmp_ln31_5_fu_319_p2_carry__1_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    icmp_ln31_5_fu_319_p2_carry__1_i_16
       (.I0(max_11_fu_58[17]),
        .I1(max_22_reg_447[17]),
        .I2(max_11_fu_58[16]),
        .I3(max_22_reg_447[16]),
        .O(icmp_ln31_5_fu_319_p2_carry__1_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'hD00D)) 
    icmp_ln31_5_fu_319_p2_carry__1_i_17
       (.I0(max_23_reg_440[23]),
        .I1(max_11_fu_58[23]),
        .I2(max_11_fu_58[22]),
        .I3(max_23_reg_440[22]),
        .O(icmp_ln31_5_fu_319_p2_carry__1_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    icmp_ln31_5_fu_319_p2_carry__1_i_18
       (.I0(max_22_reg_447[22]),
        .I1(max_11_fu_58[22]),
        .O(icmp_ln31_5_fu_319_p2_carry__1_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'h4FF4)) 
    icmp_ln31_5_fu_319_p2_carry__1_i_19
       (.I0(max_11_fu_58[21]),
        .I1(max_23_reg_440[21]),
        .I2(max_11_fu_58[20]),
        .I3(max_23_reg_440[20]),
        .O(icmp_ln31_5_fu_319_p2_carry__1_i_19_n_0));
  LUT6 #(
    .INIT(64'h77F077FF33F033F0)) 
    icmp_ln31_5_fu_319_p2_carry__1_i_2
       (.I0(max_23_reg_440[21]),
        .I1(icmp_ln31_5_fu_319_p2_carry__1_i_11_n_0),
        .I2(icmp_ln31_5_fu_319_p2_carry__1_i_12_n_0),
        .I3(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .I4(max_22_reg_447[21]),
        .I5(max_11_fu_58[21]),
        .O(icmp_ln31_5_fu_319_p2_carry__1_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h4FF4)) 
    icmp_ln31_5_fu_319_p2_carry__1_i_20
       (.I0(max_11_fu_58[21]),
        .I1(max_22_reg_447[21]),
        .I2(max_11_fu_58[20]),
        .I3(max_22_reg_447[20]),
        .O(icmp_ln31_5_fu_319_p2_carry__1_i_20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hD00D)) 
    icmp_ln31_5_fu_319_p2_carry__1_i_21
       (.I0(max_23_reg_440[19]),
        .I1(max_11_fu_58[19]),
        .I2(max_11_fu_58[18]),
        .I3(max_23_reg_440[18]),
        .O(icmp_ln31_5_fu_319_p2_carry__1_i_21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hB00B)) 
    icmp_ln31_5_fu_319_p2_carry__1_i_22
       (.I0(max_11_fu_58[19]),
        .I1(max_22_reg_447[19]),
        .I2(max_11_fu_58[18]),
        .I3(max_22_reg_447[18]),
        .O(icmp_ln31_5_fu_319_p2_carry__1_i_22_n_0));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'hB00B)) 
    icmp_ln31_5_fu_319_p2_carry__1_i_23
       (.I0(max_11_fu_58[17]),
        .I1(max_22_reg_447[17]),
        .I2(max_11_fu_58[16]),
        .I3(max_22_reg_447[16]),
        .O(icmp_ln31_5_fu_319_p2_carry__1_i_23_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    icmp_ln31_5_fu_319_p2_carry__1_i_24
       (.I0(max_23_reg_440[16]),
        .I1(max_11_fu_58[16]),
        .O(icmp_ln31_5_fu_319_p2_carry__1_i_24_n_0));
  LUT6 #(
    .INIT(64'hD0DFC0C0DFDFCFCF)) 
    icmp_ln31_5_fu_319_p2_carry__1_i_3
       (.I0(max_23_reg_440[19]),
        .I1(icmp_ln31_5_fu_319_p2_carry__1_i_13_n_0),
        .I2(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .I3(max_22_reg_447[19]),
        .I4(max_11_fu_58[19]),
        .I5(icmp_ln31_5_fu_319_p2_carry__1_i_14_n_0),
        .O(icmp_ln31_5_fu_319_p2_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'hD0DFC0C0DFDFCFCF)) 
    icmp_ln31_5_fu_319_p2_carry__1_i_4
       (.I0(max_23_reg_440[17]),
        .I1(icmp_ln31_5_fu_319_p2_carry__1_i_15_n_0),
        .I2(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .I3(max_22_reg_447[17]),
        .I4(max_11_fu_58[17]),
        .I5(icmp_ln31_5_fu_319_p2_carry__1_i_16_n_0),
        .O(icmp_ln31_5_fu_319_p2_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'h880FCC008800CC0F)) 
    icmp_ln31_5_fu_319_p2_carry__1_i_5
       (.I0(max_23_reg_440[23]),
        .I1(icmp_ln31_5_fu_319_p2_carry__1_i_17_n_0),
        .I2(icmp_ln31_5_fu_319_p2_carry__1_i_18_n_0),
        .I3(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .I4(max_11_fu_58[23]),
        .I5(max_22_reg_447[23]),
        .O(icmp_ln31_5_fu_319_p2_carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'h440F4400550F550F)) 
    icmp_ln31_5_fu_319_p2_carry__1_i_6
       (.I0(icmp_ln31_5_fu_319_p2_carry__1_i_19_n_0),
        .I1(max_23_reg_440[21]),
        .I2(icmp_ln31_5_fu_319_p2_carry__1_i_20_n_0),
        .I3(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .I4(max_22_reg_447[21]),
        .I5(max_11_fu_58[21]),
        .O(icmp_ln31_5_fu_319_p2_carry__1_i_6_n_0));
  LUT6 #(
    .INIT(64'h8F80CFCF8080C0C0)) 
    icmp_ln31_5_fu_319_p2_carry__1_i_7
       (.I0(max_23_reg_440[19]),
        .I1(icmp_ln31_5_fu_319_p2_carry__1_i_21_n_0),
        .I2(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .I3(max_22_reg_447[19]),
        .I4(max_11_fu_58[19]),
        .I5(icmp_ln31_5_fu_319_p2_carry__1_i_22_n_0),
        .O(icmp_ln31_5_fu_319_p2_carry__1_i_7_n_0));
  LUT6 #(
    .INIT(64'h0F8800CC00880FCC)) 
    icmp_ln31_5_fu_319_p2_carry__1_i_8
       (.I0(max_22_reg_447[17]),
        .I1(icmp_ln31_5_fu_319_p2_carry__1_i_23_n_0),
        .I2(icmp_ln31_5_fu_319_p2_carry__1_i_24_n_0),
        .I3(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .I4(max_11_fu_58[17]),
        .I5(max_23_reg_440[17]),
        .O(icmp_ln31_5_fu_319_p2_carry__1_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'h00D0)) 
    icmp_ln31_5_fu_319_p2_carry__1_i_9
       (.I0(max_23_reg_440[23]),
        .I1(max_11_fu_58[23]),
        .I2(max_11_fu_58[22]),
        .I3(max_23_reg_440[22]),
        .O(icmp_ln31_5_fu_319_p2_carry__1_i_9_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln31_5_fu_319_p2_carry__2
       (.CI(icmp_ln31_5_fu_319_p2_carry__1_n_0),
        .CO({icmp_ln31_5_fu_319_p2_carry__2_n_0,icmp_ln31_5_fu_319_p2_carry__2_n_1,icmp_ln31_5_fu_319_p2_carry__2_n_2,icmp_ln31_5_fu_319_p2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({icmp_ln31_5_fu_319_p2_carry__2_i_1_n_0,icmp_ln31_5_fu_319_p2_carry__2_i_2_n_0,icmp_ln31_5_fu_319_p2_carry__2_i_3_n_0,icmp_ln31_5_fu_319_p2_carry__2_i_4_n_0}),
        .O(NLW_icmp_ln31_5_fu_319_p2_carry__2_O_UNCONNECTED[3:0]),
        .S({icmp_ln31_5_fu_319_p2_carry__2_i_5_n_0,icmp_ln31_5_fu_319_p2_carry__2_i_6_n_0,icmp_ln31_5_fu_319_p2_carry__2_i_7_n_0,icmp_ln31_5_fu_319_p2_carry__2_i_8_n_0}));
  LUT6 #(
    .INIT(64'hC0EFC0E0CFEFCFEF)) 
    icmp_ln31_5_fu_319_p2_carry__2_i_1
       (.I0(max_23_reg_440[31]),
        .I1(icmp_ln31_5_fu_319_p2_carry__2_i_9_n_0),
        .I2(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .I3(max_11_fu_58[31]),
        .I4(max_22_reg_447[31]),
        .I5(icmp_ln31_5_fu_319_p2_carry__2_i_10_n_0),
        .O(icmp_ln31_5_fu_319_p2_carry__2_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    icmp_ln31_5_fu_319_p2_carry__2_i_10
       (.I0(max_22_reg_447[31]),
        .I1(max_11_fu_58[31]),
        .I2(max_11_fu_58[30]),
        .I3(max_22_reg_447[30]),
        .O(icmp_ln31_5_fu_319_p2_carry__2_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'h00D0)) 
    icmp_ln31_5_fu_319_p2_carry__2_i_11
       (.I0(max_23_reg_440[29]),
        .I1(max_11_fu_58[29]),
        .I2(max_11_fu_58[28]),
        .I3(max_23_reg_440[28]),
        .O(icmp_ln31_5_fu_319_p2_carry__2_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    icmp_ln31_5_fu_319_p2_carry__2_i_12
       (.I0(max_11_fu_58[29]),
        .I1(max_22_reg_447[29]),
        .I2(max_11_fu_58[28]),
        .I3(max_22_reg_447[28]),
        .O(icmp_ln31_5_fu_319_p2_carry__2_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h00D0)) 
    icmp_ln31_5_fu_319_p2_carry__2_i_13
       (.I0(max_23_reg_440[27]),
        .I1(max_11_fu_58[27]),
        .I2(max_11_fu_58[26]),
        .I3(max_23_reg_440[26]),
        .O(icmp_ln31_5_fu_319_p2_carry__2_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h00B0)) 
    icmp_ln31_5_fu_319_p2_carry__2_i_14
       (.I0(max_11_fu_58[27]),
        .I1(max_22_reg_447[27]),
        .I2(max_11_fu_58[26]),
        .I3(max_22_reg_447[26]),
        .O(icmp_ln31_5_fu_319_p2_carry__2_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'h00D0)) 
    icmp_ln31_5_fu_319_p2_carry__2_i_15
       (.I0(max_23_reg_440[25]),
        .I1(max_11_fu_58[25]),
        .I2(max_11_fu_58[24]),
        .I3(max_23_reg_440[24]),
        .O(icmp_ln31_5_fu_319_p2_carry__2_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    icmp_ln31_5_fu_319_p2_carry__2_i_16
       (.I0(max_11_fu_58[25]),
        .I1(max_22_reg_447[25]),
        .I2(max_11_fu_58[24]),
        .I3(max_22_reg_447[24]),
        .O(icmp_ln31_5_fu_319_p2_carry__2_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'hB00B)) 
    icmp_ln31_5_fu_319_p2_carry__2_i_17
       (.I0(max_22_reg_447[31]),
        .I1(max_11_fu_58[31]),
        .I2(max_11_fu_58[30]),
        .I3(max_22_reg_447[30]),
        .O(icmp_ln31_5_fu_319_p2_carry__2_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    icmp_ln31_5_fu_319_p2_carry__2_i_18
       (.I0(max_23_reg_440[30]),
        .I1(max_11_fu_58[30]),
        .O(icmp_ln31_5_fu_319_p2_carry__2_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'hD00D)) 
    icmp_ln31_5_fu_319_p2_carry__2_i_19
       (.I0(max_23_reg_440[29]),
        .I1(max_11_fu_58[29]),
        .I2(max_11_fu_58[28]),
        .I3(max_23_reg_440[28]),
        .O(icmp_ln31_5_fu_319_p2_carry__2_i_19_n_0));
  LUT6 #(
    .INIT(64'hD0DFC0C0DFDFCFCF)) 
    icmp_ln31_5_fu_319_p2_carry__2_i_2
       (.I0(max_23_reg_440[29]),
        .I1(icmp_ln31_5_fu_319_p2_carry__2_i_11_n_0),
        .I2(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .I3(max_22_reg_447[29]),
        .I4(max_11_fu_58[29]),
        .I5(icmp_ln31_5_fu_319_p2_carry__2_i_12_n_0),
        .O(icmp_ln31_5_fu_319_p2_carry__2_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'hB00B)) 
    icmp_ln31_5_fu_319_p2_carry__2_i_20
       (.I0(max_11_fu_58[29]),
        .I1(max_22_reg_447[29]),
        .I2(max_11_fu_58[28]),
        .I3(max_22_reg_447[28]),
        .O(icmp_ln31_5_fu_319_p2_carry__2_i_20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'hD00D)) 
    icmp_ln31_5_fu_319_p2_carry__2_i_21
       (.I0(max_23_reg_440[27]),
        .I1(max_11_fu_58[27]),
        .I2(max_11_fu_58[26]),
        .I3(max_23_reg_440[26]),
        .O(icmp_ln31_5_fu_319_p2_carry__2_i_21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h4FF4)) 
    icmp_ln31_5_fu_319_p2_carry__2_i_22
       (.I0(max_11_fu_58[27]),
        .I1(max_22_reg_447[27]),
        .I2(max_11_fu_58[26]),
        .I3(max_22_reg_447[26]),
        .O(icmp_ln31_5_fu_319_p2_carry__2_i_22_n_0));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'hD00D)) 
    icmp_ln31_5_fu_319_p2_carry__2_i_23
       (.I0(max_23_reg_440[25]),
        .I1(max_11_fu_58[25]),
        .I2(max_11_fu_58[24]),
        .I3(max_23_reg_440[24]),
        .O(icmp_ln31_5_fu_319_p2_carry__2_i_23_n_0));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'hB00B)) 
    icmp_ln31_5_fu_319_p2_carry__2_i_24
       (.I0(max_11_fu_58[25]),
        .I1(max_22_reg_447[25]),
        .I2(max_11_fu_58[24]),
        .I3(max_22_reg_447[24]),
        .O(icmp_ln31_5_fu_319_p2_carry__2_i_24_n_0));
  LUT6 #(
    .INIT(64'hDDF0DDFFCCF0CCF0)) 
    icmp_ln31_5_fu_319_p2_carry__2_i_3
       (.I0(max_23_reg_440[27]),
        .I1(icmp_ln31_5_fu_319_p2_carry__2_i_13_n_0),
        .I2(icmp_ln31_5_fu_319_p2_carry__2_i_14_n_0),
        .I3(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .I4(max_22_reg_447[27]),
        .I5(max_11_fu_58[27]),
        .O(icmp_ln31_5_fu_319_p2_carry__2_i_3_n_0));
  LUT6 #(
    .INIT(64'hD0DFC0C0DFDFCFCF)) 
    icmp_ln31_5_fu_319_p2_carry__2_i_4
       (.I0(max_23_reg_440[25]),
        .I1(icmp_ln31_5_fu_319_p2_carry__2_i_15_n_0),
        .I2(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .I3(max_22_reg_447[25]),
        .I4(max_11_fu_58[25]),
        .I5(icmp_ln31_5_fu_319_p2_carry__2_i_16_n_0),
        .O(icmp_ln31_5_fu_319_p2_carry__2_i_4_n_0));
  LUT6 #(
    .INIT(64'h0FCC004400CC0F44)) 
    icmp_ln31_5_fu_319_p2_carry__2_i_5
       (.I0(max_22_reg_447[31]),
        .I1(icmp_ln31_5_fu_319_p2_carry__2_i_17_n_0),
        .I2(icmp_ln31_5_fu_319_p2_carry__2_i_18_n_0),
        .I3(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .I4(max_11_fu_58[31]),
        .I5(max_23_reg_440[31]),
        .O(icmp_ln31_5_fu_319_p2_carry__2_i_5_n_0));
  LUT6 #(
    .INIT(64'h8F80CFCF8080C0C0)) 
    icmp_ln31_5_fu_319_p2_carry__2_i_6
       (.I0(max_23_reg_440[29]),
        .I1(icmp_ln31_5_fu_319_p2_carry__2_i_19_n_0),
        .I2(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .I3(max_22_reg_447[29]),
        .I4(max_11_fu_58[29]),
        .I5(icmp_ln31_5_fu_319_p2_carry__2_i_20_n_0),
        .O(icmp_ln31_5_fu_319_p2_carry__2_i_6_n_0));
  LUT6 #(
    .INIT(64'h880F8800CC0FCC0F)) 
    icmp_ln31_5_fu_319_p2_carry__2_i_7
       (.I0(max_23_reg_440[27]),
        .I1(icmp_ln31_5_fu_319_p2_carry__2_i_21_n_0),
        .I2(icmp_ln31_5_fu_319_p2_carry__2_i_22_n_0),
        .I3(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .I4(max_22_reg_447[27]),
        .I5(max_11_fu_58[27]),
        .O(icmp_ln31_5_fu_319_p2_carry__2_i_7_n_0));
  LUT6 #(
    .INIT(64'h8F80CFCF8080C0C0)) 
    icmp_ln31_5_fu_319_p2_carry__2_i_8
       (.I0(max_23_reg_440[25]),
        .I1(icmp_ln31_5_fu_319_p2_carry__2_i_23_n_0),
        .I2(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .I3(max_22_reg_447[25]),
        .I4(max_11_fu_58[25]),
        .I5(icmp_ln31_5_fu_319_p2_carry__2_i_24_n_0),
        .O(icmp_ln31_5_fu_319_p2_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h00D0)) 
    icmp_ln31_5_fu_319_p2_carry__2_i_9
       (.I0(max_11_fu_58[31]),
        .I1(max_23_reg_440[31]),
        .I2(max_11_fu_58[30]),
        .I3(max_23_reg_440[30]),
        .O(icmp_ln31_5_fu_319_p2_carry__2_i_9_n_0));
  LUT6 #(
    .INIT(64'hDDF0DDFFCCF0CCF0)) 
    icmp_ln31_5_fu_319_p2_carry_i_1
       (.I0(max_23_reg_440[7]),
        .I1(icmp_ln31_5_fu_319_p2_carry_i_9_n_0),
        .I2(icmp_ln31_5_fu_319_p2_carry_i_10_n_0),
        .I3(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .I4(max_22_reg_447[7]),
        .I5(max_11_fu_58[7]),
        .O(icmp_ln31_5_fu_319_p2_carry_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h00B0)) 
    icmp_ln31_5_fu_319_p2_carry_i_10
       (.I0(max_11_fu_58[7]),
        .I1(max_22_reg_447[7]),
        .I2(max_11_fu_58[6]),
        .I3(max_22_reg_447[6]),
        .O(icmp_ln31_5_fu_319_p2_carry_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h00D0)) 
    icmp_ln31_5_fu_319_p2_carry_i_11
       (.I0(max_23_reg_440[5]),
        .I1(max_11_fu_58[5]),
        .I2(max_11_fu_58[4]),
        .I3(max_23_reg_440[4]),
        .O(icmp_ln31_5_fu_319_p2_carry_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h00B0)) 
    icmp_ln31_5_fu_319_p2_carry_i_12
       (.I0(max_11_fu_58[5]),
        .I1(max_22_reg_447[5]),
        .I2(max_11_fu_58[4]),
        .I3(max_22_reg_447[4]),
        .O(icmp_ln31_5_fu_319_p2_carry_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h00D0)) 
    icmp_ln31_5_fu_319_p2_carry_i_13
       (.I0(max_23_reg_440[3]),
        .I1(max_11_fu_58[3]),
        .I2(max_11_fu_58[2]),
        .I3(max_23_reg_440[2]),
        .O(icmp_ln31_5_fu_319_p2_carry_i_13_n_0));
  LUT4 #(
    .INIT(16'hFF4F)) 
    icmp_ln31_5_fu_319_p2_carry_i_14
       (.I0(max_11_fu_58[3]),
        .I1(max_22_reg_447[3]),
        .I2(max_11_fu_58[2]),
        .I3(max_22_reg_447[2]),
        .O(icmp_ln31_5_fu_319_p2_carry_i_14_n_0));
  LUT4 #(
    .INIT(16'h00D0)) 
    icmp_ln31_5_fu_319_p2_carry_i_15
       (.I0(max_23_reg_440[1]),
        .I1(max_11_fu_58[1]),
        .I2(max_11_fu_58[0]),
        .I3(max_23_reg_440[0]),
        .O(icmp_ln31_5_fu_319_p2_carry_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    icmp_ln31_5_fu_319_p2_carry_i_16
       (.I0(max_11_fu_58[1]),
        .I1(max_22_reg_447[1]),
        .I2(max_11_fu_58[0]),
        .I3(max_22_reg_447[0]),
        .O(icmp_ln31_5_fu_319_p2_carry_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hD00D)) 
    icmp_ln31_5_fu_319_p2_carry_i_17
       (.I0(max_23_reg_440[7]),
        .I1(max_11_fu_58[7]),
        .I2(max_11_fu_58[6]),
        .I3(max_23_reg_440[6]),
        .O(icmp_ln31_5_fu_319_p2_carry_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h4FF4)) 
    icmp_ln31_5_fu_319_p2_carry_i_18
       (.I0(max_11_fu_58[7]),
        .I1(max_22_reg_447[7]),
        .I2(max_11_fu_58[6]),
        .I3(max_22_reg_447[6]),
        .O(icmp_ln31_5_fu_319_p2_carry_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hD00D)) 
    icmp_ln31_5_fu_319_p2_carry_i_19
       (.I0(max_23_reg_440[5]),
        .I1(max_11_fu_58[5]),
        .I2(max_11_fu_58[4]),
        .I3(max_23_reg_440[4]),
        .O(icmp_ln31_5_fu_319_p2_carry_i_19_n_0));
  LUT6 #(
    .INIT(64'hDDF0DDFFCCF0CCF0)) 
    icmp_ln31_5_fu_319_p2_carry_i_2
       (.I0(max_23_reg_440[5]),
        .I1(icmp_ln31_5_fu_319_p2_carry_i_11_n_0),
        .I2(icmp_ln31_5_fu_319_p2_carry_i_12_n_0),
        .I3(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .I4(max_22_reg_447[5]),
        .I5(max_11_fu_58[5]),
        .O(icmp_ln31_5_fu_319_p2_carry_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h4FF4)) 
    icmp_ln31_5_fu_319_p2_carry_i_20
       (.I0(max_11_fu_58[5]),
        .I1(max_22_reg_447[5]),
        .I2(max_11_fu_58[4]),
        .I3(max_22_reg_447[4]),
        .O(icmp_ln31_5_fu_319_p2_carry_i_20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hD00D)) 
    icmp_ln31_5_fu_319_p2_carry_i_21
       (.I0(max_23_reg_440[3]),
        .I1(max_11_fu_58[3]),
        .I2(max_11_fu_58[2]),
        .I3(max_23_reg_440[2]),
        .O(icmp_ln31_5_fu_319_p2_carry_i_21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    icmp_ln31_5_fu_319_p2_carry_i_22
       (.I0(max_22_reg_447[2]),
        .I1(max_11_fu_58[2]),
        .O(icmp_ln31_5_fu_319_p2_carry_i_22_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    icmp_ln31_5_fu_319_p2_carry_i_23
       (.I0(max_23_reg_440[0]),
        .I1(max_11_fu_58[0]),
        .O(icmp_ln31_5_fu_319_p2_carry_i_23_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h6)) 
    icmp_ln31_5_fu_319_p2_carry_i_24
       (.I0(max_22_reg_447[0]),
        .I1(max_11_fu_58[0]),
        .O(icmp_ln31_5_fu_319_p2_carry_i_24_n_0));
  LUT6 #(
    .INIT(64'hD0DFC0C0DFDFCFCF)) 
    icmp_ln31_5_fu_319_p2_carry_i_3
       (.I0(max_23_reg_440[3]),
        .I1(icmp_ln31_5_fu_319_p2_carry_i_13_n_0),
        .I2(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .I3(max_22_reg_447[3]),
        .I4(max_11_fu_58[3]),
        .I5(icmp_ln31_5_fu_319_p2_carry_i_14_n_0),
        .O(icmp_ln31_5_fu_319_p2_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'hD0DFC0C0DFDFCFCF)) 
    icmp_ln31_5_fu_319_p2_carry_i_4
       (.I0(max_23_reg_440[1]),
        .I1(icmp_ln31_5_fu_319_p2_carry_i_15_n_0),
        .I2(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .I3(max_22_reg_447[1]),
        .I4(max_11_fu_58[1]),
        .I5(icmp_ln31_5_fu_319_p2_carry_i_16_n_0),
        .O(icmp_ln31_5_fu_319_p2_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h880F8800CC0FCC0F)) 
    icmp_ln31_5_fu_319_p2_carry_i_5
       (.I0(max_23_reg_440[7]),
        .I1(icmp_ln31_5_fu_319_p2_carry_i_17_n_0),
        .I2(icmp_ln31_5_fu_319_p2_carry_i_18_n_0),
        .I3(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .I4(max_22_reg_447[7]),
        .I5(max_11_fu_58[7]),
        .O(icmp_ln31_5_fu_319_p2_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h880F8800CC0FCC0F)) 
    icmp_ln31_5_fu_319_p2_carry_i_6
       (.I0(max_23_reg_440[5]),
        .I1(icmp_ln31_5_fu_319_p2_carry_i_19_n_0),
        .I2(icmp_ln31_5_fu_319_p2_carry_i_20_n_0),
        .I3(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .I4(max_22_reg_447[5]),
        .I5(max_11_fu_58[5]),
        .O(icmp_ln31_5_fu_319_p2_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h880FCC008800CC0F)) 
    icmp_ln31_5_fu_319_p2_carry_i_7
       (.I0(max_23_reg_440[3]),
        .I1(icmp_ln31_5_fu_319_p2_carry_i_21_n_0),
        .I2(icmp_ln31_5_fu_319_p2_carry_i_22_n_0),
        .I3(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .I4(max_11_fu_58[3]),
        .I5(max_22_reg_447[3]),
        .O(icmp_ln31_5_fu_319_p2_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h440F11004400110F)) 
    icmp_ln31_5_fu_319_p2_carry_i_8
       (.I0(icmp_ln31_5_fu_319_p2_carry_i_23_n_0),
        .I1(max_23_reg_440[1]),
        .I2(icmp_ln31_5_fu_319_p2_carry_i_24_n_0),
        .I3(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .I4(max_11_fu_58[1]),
        .I5(max_22_reg_447[1]),
        .O(icmp_ln31_5_fu_319_p2_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h00D0)) 
    icmp_ln31_5_fu_319_p2_carry_i_9
       (.I0(max_23_reg_440[7]),
        .I1(max_11_fu_58[7]),
        .I2(max_11_fu_58[6]),
        .I3(max_23_reg_440[6]),
        .O(icmp_ln31_5_fu_319_p2_carry_i_9_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln31_6_fu_340_p2_carry
       (.CI(1'b0),
        .CO({icmp_ln31_6_fu_340_p2_carry_n_0,icmp_ln31_6_fu_340_p2_carry_n_1,icmp_ln31_6_fu_340_p2_carry_n_2,icmp_ln31_6_fu_340_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({icmp_ln31_6_fu_340_p2_carry_i_1_n_0,icmp_ln31_6_fu_340_p2_carry_i_2_n_0,icmp_ln31_6_fu_340_p2_carry_i_3_n_0,icmp_ln31_6_fu_340_p2_carry_i_4_n_0}),
        .O(NLW_icmp_ln31_6_fu_340_p2_carry_O_UNCONNECTED[3:0]),
        .S({icmp_ln31_6_fu_340_p2_carry_i_5_n_0,icmp_ln31_6_fu_340_p2_carry_i_6_n_0,icmp_ln31_6_fu_340_p2_carry_i_7_n_0,icmp_ln31_6_fu_340_p2_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln31_6_fu_340_p2_carry__0
       (.CI(icmp_ln31_6_fu_340_p2_carry_n_0),
        .CO({icmp_ln31_6_fu_340_p2_carry__0_n_0,icmp_ln31_6_fu_340_p2_carry__0_n_1,icmp_ln31_6_fu_340_p2_carry__0_n_2,icmp_ln31_6_fu_340_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({icmp_ln31_6_fu_340_p2_carry__0_i_1_n_0,icmp_ln31_6_fu_340_p2_carry__0_i_2_n_0,icmp_ln31_6_fu_340_p2_carry__0_i_3_n_0,icmp_ln31_6_fu_340_p2_carry__0_i_4_n_0}),
        .O(NLW_icmp_ln31_6_fu_340_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({icmp_ln31_6_fu_340_p2_carry__0_i_5_n_0,icmp_ln31_6_fu_340_p2_carry__0_i_6_n_0,icmp_ln31_6_fu_340_p2_carry__0_i_7_n_0,icmp_ln31_6_fu_340_p2_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_6_fu_340_p2_carry__0_i_1
       (.I0(max_13_fu_50[14]),
        .I1(max_26_reg_458[14]),
        .I2(max_26_reg_458[15]),
        .I3(max_13_fu_50[15]),
        .O(icmp_ln31_6_fu_340_p2_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_6_fu_340_p2_carry__0_i_2
       (.I0(max_13_fu_50[12]),
        .I1(max_26_reg_458[12]),
        .I2(max_26_reg_458[13]),
        .I3(max_13_fu_50[13]),
        .O(icmp_ln31_6_fu_340_p2_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_6_fu_340_p2_carry__0_i_3
       (.I0(max_13_fu_50[10]),
        .I1(max_26_reg_458[10]),
        .I2(max_26_reg_458[11]),
        .I3(max_13_fu_50[11]),
        .O(icmp_ln31_6_fu_340_p2_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_6_fu_340_p2_carry__0_i_4
       (.I0(max_13_fu_50[8]),
        .I1(max_26_reg_458[8]),
        .I2(max_26_reg_458[9]),
        .I3(max_13_fu_50[9]),
        .O(icmp_ln31_6_fu_340_p2_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_6_fu_340_p2_carry__0_i_5
       (.I0(max_13_fu_50[14]),
        .I1(max_26_reg_458[14]),
        .I2(max_13_fu_50[15]),
        .I3(max_26_reg_458[15]),
        .O(icmp_ln31_6_fu_340_p2_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_6_fu_340_p2_carry__0_i_6
       (.I0(max_13_fu_50[12]),
        .I1(max_26_reg_458[12]),
        .I2(max_13_fu_50[13]),
        .I3(max_26_reg_458[13]),
        .O(icmp_ln31_6_fu_340_p2_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_6_fu_340_p2_carry__0_i_7
       (.I0(max_13_fu_50[10]),
        .I1(max_26_reg_458[10]),
        .I2(max_13_fu_50[11]),
        .I3(max_26_reg_458[11]),
        .O(icmp_ln31_6_fu_340_p2_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_6_fu_340_p2_carry__0_i_8
       (.I0(max_13_fu_50[8]),
        .I1(max_26_reg_458[8]),
        .I2(max_13_fu_50[9]),
        .I3(max_26_reg_458[9]),
        .O(icmp_ln31_6_fu_340_p2_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln31_6_fu_340_p2_carry__1
       (.CI(icmp_ln31_6_fu_340_p2_carry__0_n_0),
        .CO({icmp_ln31_6_fu_340_p2_carry__1_n_0,icmp_ln31_6_fu_340_p2_carry__1_n_1,icmp_ln31_6_fu_340_p2_carry__1_n_2,icmp_ln31_6_fu_340_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({icmp_ln31_6_fu_340_p2_carry__1_i_1_n_0,icmp_ln31_6_fu_340_p2_carry__1_i_2_n_0,icmp_ln31_6_fu_340_p2_carry__1_i_3_n_0,icmp_ln31_6_fu_340_p2_carry__1_i_4_n_0}),
        .O(NLW_icmp_ln31_6_fu_340_p2_carry__1_O_UNCONNECTED[3:0]),
        .S({icmp_ln31_6_fu_340_p2_carry__1_i_5_n_0,icmp_ln31_6_fu_340_p2_carry__1_i_6_n_0,icmp_ln31_6_fu_340_p2_carry__1_i_7_n_0,icmp_ln31_6_fu_340_p2_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_6_fu_340_p2_carry__1_i_1
       (.I0(max_13_fu_50[22]),
        .I1(max_26_reg_458[22]),
        .I2(max_26_reg_458[23]),
        .I3(max_13_fu_50[23]),
        .O(icmp_ln31_6_fu_340_p2_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_6_fu_340_p2_carry__1_i_2
       (.I0(max_13_fu_50[20]),
        .I1(max_26_reg_458[20]),
        .I2(max_26_reg_458[21]),
        .I3(max_13_fu_50[21]),
        .O(icmp_ln31_6_fu_340_p2_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_6_fu_340_p2_carry__1_i_3
       (.I0(max_13_fu_50[18]),
        .I1(max_26_reg_458[18]),
        .I2(max_26_reg_458[19]),
        .I3(max_13_fu_50[19]),
        .O(icmp_ln31_6_fu_340_p2_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_6_fu_340_p2_carry__1_i_4
       (.I0(max_13_fu_50[16]),
        .I1(max_26_reg_458[16]),
        .I2(max_26_reg_458[17]),
        .I3(max_13_fu_50[17]),
        .O(icmp_ln31_6_fu_340_p2_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_6_fu_340_p2_carry__1_i_5
       (.I0(max_13_fu_50[22]),
        .I1(max_26_reg_458[22]),
        .I2(max_13_fu_50[23]),
        .I3(max_26_reg_458[23]),
        .O(icmp_ln31_6_fu_340_p2_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_6_fu_340_p2_carry__1_i_6
       (.I0(max_13_fu_50[20]),
        .I1(max_26_reg_458[20]),
        .I2(max_13_fu_50[21]),
        .I3(max_26_reg_458[21]),
        .O(icmp_ln31_6_fu_340_p2_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_6_fu_340_p2_carry__1_i_7
       (.I0(max_13_fu_50[18]),
        .I1(max_26_reg_458[18]),
        .I2(max_13_fu_50[19]),
        .I3(max_26_reg_458[19]),
        .O(icmp_ln31_6_fu_340_p2_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_6_fu_340_p2_carry__1_i_8
       (.I0(max_13_fu_50[16]),
        .I1(max_26_reg_458[16]),
        .I2(max_13_fu_50[17]),
        .I3(max_26_reg_458[17]),
        .O(icmp_ln31_6_fu_340_p2_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln31_6_fu_340_p2_carry__2
       (.CI(icmp_ln31_6_fu_340_p2_carry__1_n_0),
        .CO({icmp_ln31_6_fu_340_p2_carry__2_n_0,icmp_ln31_6_fu_340_p2_carry__2_n_1,icmp_ln31_6_fu_340_p2_carry__2_n_2,icmp_ln31_6_fu_340_p2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({icmp_ln31_6_fu_340_p2_carry__2_i_1_n_0,icmp_ln31_6_fu_340_p2_carry__2_i_2_n_0,icmp_ln31_6_fu_340_p2_carry__2_i_3_n_0,icmp_ln31_6_fu_340_p2_carry__2_i_4_n_0}),
        .O(NLW_icmp_ln31_6_fu_340_p2_carry__2_O_UNCONNECTED[3:0]),
        .S({icmp_ln31_6_fu_340_p2_carry__2_i_5_n_0,icmp_ln31_6_fu_340_p2_carry__2_i_6_n_0,icmp_ln31_6_fu_340_p2_carry__2_i_7_n_0,icmp_ln31_6_fu_340_p2_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_6_fu_340_p2_carry__2_i_1
       (.I0(max_13_fu_50[30]),
        .I1(max_26_reg_458[30]),
        .I2(max_13_fu_50[31]),
        .I3(max_26_reg_458[31]),
        .O(icmp_ln31_6_fu_340_p2_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_6_fu_340_p2_carry__2_i_2
       (.I0(max_13_fu_50[28]),
        .I1(max_26_reg_458[28]),
        .I2(max_26_reg_458[29]),
        .I3(max_13_fu_50[29]),
        .O(icmp_ln31_6_fu_340_p2_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_6_fu_340_p2_carry__2_i_3
       (.I0(max_13_fu_50[26]),
        .I1(max_26_reg_458[26]),
        .I2(max_26_reg_458[27]),
        .I3(max_13_fu_50[27]),
        .O(icmp_ln31_6_fu_340_p2_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_6_fu_340_p2_carry__2_i_4
       (.I0(max_13_fu_50[24]),
        .I1(max_26_reg_458[24]),
        .I2(max_26_reg_458[25]),
        .I3(max_13_fu_50[25]),
        .O(icmp_ln31_6_fu_340_p2_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_6_fu_340_p2_carry__2_i_5
       (.I0(max_13_fu_50[30]),
        .I1(max_26_reg_458[30]),
        .I2(max_26_reg_458[31]),
        .I3(max_13_fu_50[31]),
        .O(icmp_ln31_6_fu_340_p2_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_6_fu_340_p2_carry__2_i_6
       (.I0(max_13_fu_50[28]),
        .I1(max_26_reg_458[28]),
        .I2(max_13_fu_50[29]),
        .I3(max_26_reg_458[29]),
        .O(icmp_ln31_6_fu_340_p2_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_6_fu_340_p2_carry__2_i_7
       (.I0(max_13_fu_50[26]),
        .I1(max_26_reg_458[26]),
        .I2(max_13_fu_50[27]),
        .I3(max_26_reg_458[27]),
        .O(icmp_ln31_6_fu_340_p2_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_6_fu_340_p2_carry__2_i_8
       (.I0(max_13_fu_50[24]),
        .I1(max_26_reg_458[24]),
        .I2(max_13_fu_50[25]),
        .I3(max_26_reg_458[25]),
        .O(icmp_ln31_6_fu_340_p2_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_6_fu_340_p2_carry_i_1
       (.I0(max_13_fu_50[6]),
        .I1(max_26_reg_458[6]),
        .I2(max_26_reg_458[7]),
        .I3(max_13_fu_50[7]),
        .O(icmp_ln31_6_fu_340_p2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_6_fu_340_p2_carry_i_2
       (.I0(max_13_fu_50[4]),
        .I1(max_26_reg_458[4]),
        .I2(max_26_reg_458[5]),
        .I3(max_13_fu_50[5]),
        .O(icmp_ln31_6_fu_340_p2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_6_fu_340_p2_carry_i_3
       (.I0(max_13_fu_50[2]),
        .I1(max_26_reg_458[2]),
        .I2(max_26_reg_458[3]),
        .I3(max_13_fu_50[3]),
        .O(icmp_ln31_6_fu_340_p2_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_6_fu_340_p2_carry_i_4
       (.I0(max_13_fu_50[0]),
        .I1(max_26_reg_458[0]),
        .I2(max_26_reg_458[1]),
        .I3(max_13_fu_50[1]),
        .O(icmp_ln31_6_fu_340_p2_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_6_fu_340_p2_carry_i_5
       (.I0(max_13_fu_50[6]),
        .I1(max_26_reg_458[6]),
        .I2(max_13_fu_50[7]),
        .I3(max_26_reg_458[7]),
        .O(icmp_ln31_6_fu_340_p2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_6_fu_340_p2_carry_i_6
       (.I0(max_13_fu_50[4]),
        .I1(max_26_reg_458[4]),
        .I2(max_13_fu_50[5]),
        .I3(max_26_reg_458[5]),
        .O(icmp_ln31_6_fu_340_p2_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_6_fu_340_p2_carry_i_7
       (.I0(max_13_fu_50[2]),
        .I1(max_26_reg_458[2]),
        .I2(max_13_fu_50[3]),
        .I3(max_26_reg_458[3]),
        .O(icmp_ln31_6_fu_340_p2_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_6_fu_340_p2_carry_i_8
       (.I0(max_13_fu_50[0]),
        .I1(max_26_reg_458[0]),
        .I2(max_13_fu_50[1]),
        .I3(max_26_reg_458[1]),
        .O(icmp_ln31_6_fu_340_p2_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln31_fu_224_p2_carry
       (.CI(1'b0),
        .CO({icmp_ln31_fu_224_p2_carry_n_0,icmp_ln31_fu_224_p2_carry_n_1,icmp_ln31_fu_224_p2_carry_n_2,icmp_ln31_fu_224_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({icmp_ln31_fu_224_p2_carry_i_1_n_0,icmp_ln31_fu_224_p2_carry_i_2_n_0,icmp_ln31_fu_224_p2_carry_i_3_n_0,icmp_ln31_fu_224_p2_carry_i_4_n_0}),
        .O(NLW_icmp_ln31_fu_224_p2_carry_O_UNCONNECTED[3:0]),
        .S({icmp_ln31_fu_224_p2_carry_i_5_n_0,icmp_ln31_fu_224_p2_carry_i_6_n_0,icmp_ln31_fu_224_p2_carry_i_7_n_0,icmp_ln31_fu_224_p2_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln31_fu_224_p2_carry__0
       (.CI(icmp_ln31_fu_224_p2_carry_n_0),
        .CO({icmp_ln31_fu_224_p2_carry__0_n_0,icmp_ln31_fu_224_p2_carry__0_n_1,icmp_ln31_fu_224_p2_carry__0_n_2,icmp_ln31_fu_224_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({icmp_ln31_fu_224_p2_carry__0_i_1_n_0,icmp_ln31_fu_224_p2_carry__0_i_2_n_0,icmp_ln31_fu_224_p2_carry__0_i_3_n_0,icmp_ln31_fu_224_p2_carry__0_i_4_n_0}),
        .O(NLW_icmp_ln31_fu_224_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({icmp_ln31_fu_224_p2_carry__0_i_5_n_0,icmp_ln31_fu_224_p2_carry__0_i_6_n_0,icmp_ln31_fu_224_p2_carry__0_i_7_n_0,icmp_ln31_fu_224_p2_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_fu_224_p2_carry__0_i_1
       (.I0(max_1_fu_78[14]),
        .I1(in_data_q0[14]),
        .I2(in_data_q0[15]),
        .I3(max_1_fu_78[15]),
        .O(icmp_ln31_fu_224_p2_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_fu_224_p2_carry__0_i_2
       (.I0(max_1_fu_78[12]),
        .I1(in_data_q0[12]),
        .I2(in_data_q0[13]),
        .I3(max_1_fu_78[13]),
        .O(icmp_ln31_fu_224_p2_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_fu_224_p2_carry__0_i_3
       (.I0(max_1_fu_78[10]),
        .I1(in_data_q0[10]),
        .I2(in_data_q0[11]),
        .I3(max_1_fu_78[11]),
        .O(icmp_ln31_fu_224_p2_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_fu_224_p2_carry__0_i_4
       (.I0(max_1_fu_78[8]),
        .I1(in_data_q0[8]),
        .I2(in_data_q0[9]),
        .I3(max_1_fu_78[9]),
        .O(icmp_ln31_fu_224_p2_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_fu_224_p2_carry__0_i_5
       (.I0(in_data_q0[14]),
        .I1(max_1_fu_78[14]),
        .I2(in_data_q0[15]),
        .I3(max_1_fu_78[15]),
        .O(icmp_ln31_fu_224_p2_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_fu_224_p2_carry__0_i_6
       (.I0(in_data_q0[12]),
        .I1(max_1_fu_78[12]),
        .I2(in_data_q0[13]),
        .I3(max_1_fu_78[13]),
        .O(icmp_ln31_fu_224_p2_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_fu_224_p2_carry__0_i_7
       (.I0(in_data_q0[10]),
        .I1(max_1_fu_78[10]),
        .I2(in_data_q0[11]),
        .I3(max_1_fu_78[11]),
        .O(icmp_ln31_fu_224_p2_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_fu_224_p2_carry__0_i_8
       (.I0(in_data_q0[8]),
        .I1(max_1_fu_78[8]),
        .I2(in_data_q0[9]),
        .I3(max_1_fu_78[9]),
        .O(icmp_ln31_fu_224_p2_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln31_fu_224_p2_carry__1
       (.CI(icmp_ln31_fu_224_p2_carry__0_n_0),
        .CO({icmp_ln31_fu_224_p2_carry__1_n_0,icmp_ln31_fu_224_p2_carry__1_n_1,icmp_ln31_fu_224_p2_carry__1_n_2,icmp_ln31_fu_224_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({icmp_ln31_fu_224_p2_carry__1_i_1_n_0,icmp_ln31_fu_224_p2_carry__1_i_2_n_0,icmp_ln31_fu_224_p2_carry__1_i_3_n_0,icmp_ln31_fu_224_p2_carry__1_i_4_n_0}),
        .O(NLW_icmp_ln31_fu_224_p2_carry__1_O_UNCONNECTED[3:0]),
        .S({icmp_ln31_fu_224_p2_carry__1_i_5_n_0,icmp_ln31_fu_224_p2_carry__1_i_6_n_0,icmp_ln31_fu_224_p2_carry__1_i_7_n_0,icmp_ln31_fu_224_p2_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_fu_224_p2_carry__1_i_1
       (.I0(max_1_fu_78[22]),
        .I1(in_data_q0[22]),
        .I2(in_data_q0[23]),
        .I3(max_1_fu_78[23]),
        .O(icmp_ln31_fu_224_p2_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_fu_224_p2_carry__1_i_2
       (.I0(max_1_fu_78[20]),
        .I1(in_data_q0[20]),
        .I2(in_data_q0[21]),
        .I3(max_1_fu_78[21]),
        .O(icmp_ln31_fu_224_p2_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_fu_224_p2_carry__1_i_3
       (.I0(max_1_fu_78[18]),
        .I1(in_data_q0[18]),
        .I2(in_data_q0[19]),
        .I3(max_1_fu_78[19]),
        .O(icmp_ln31_fu_224_p2_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_fu_224_p2_carry__1_i_4
       (.I0(max_1_fu_78[16]),
        .I1(in_data_q0[16]),
        .I2(in_data_q0[17]),
        .I3(max_1_fu_78[17]),
        .O(icmp_ln31_fu_224_p2_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_fu_224_p2_carry__1_i_5
       (.I0(in_data_q0[22]),
        .I1(max_1_fu_78[22]),
        .I2(in_data_q0[23]),
        .I3(max_1_fu_78[23]),
        .O(icmp_ln31_fu_224_p2_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_fu_224_p2_carry__1_i_6
       (.I0(in_data_q0[20]),
        .I1(max_1_fu_78[20]),
        .I2(in_data_q0[21]),
        .I3(max_1_fu_78[21]),
        .O(icmp_ln31_fu_224_p2_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_fu_224_p2_carry__1_i_7
       (.I0(in_data_q0[18]),
        .I1(max_1_fu_78[18]),
        .I2(in_data_q0[19]),
        .I3(max_1_fu_78[19]),
        .O(icmp_ln31_fu_224_p2_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_fu_224_p2_carry__1_i_8
       (.I0(in_data_q0[16]),
        .I1(max_1_fu_78[16]),
        .I2(in_data_q0[17]),
        .I3(max_1_fu_78[17]),
        .O(icmp_ln31_fu_224_p2_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 icmp_ln31_fu_224_p2_carry__2
       (.CI(icmp_ln31_fu_224_p2_carry__1_n_0),
        .CO({icmp_ln31_fu_224_p2_carry__2_n_0,icmp_ln31_fu_224_p2_carry__2_n_1,icmp_ln31_fu_224_p2_carry__2_n_2,icmp_ln31_fu_224_p2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({icmp_ln31_fu_224_p2_carry__2_i_1_n_0,icmp_ln31_fu_224_p2_carry__2_i_2_n_0,icmp_ln31_fu_224_p2_carry__2_i_3_n_0,icmp_ln31_fu_224_p2_carry__2_i_4_n_0}),
        .O(NLW_icmp_ln31_fu_224_p2_carry__2_O_UNCONNECTED[3:0]),
        .S({icmp_ln31_fu_224_p2_carry__2_i_5_n_0,icmp_ln31_fu_224_p2_carry__2_i_6_n_0,icmp_ln31_fu_224_p2_carry__2_i_7_n_0,icmp_ln31_fu_224_p2_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_fu_224_p2_carry__2_i_1
       (.I0(max_1_fu_78[30]),
        .I1(in_data_q0[30]),
        .I2(max_1_fu_78[31]),
        .I3(in_data_q0[31]),
        .O(icmp_ln31_fu_224_p2_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_fu_224_p2_carry__2_i_2
       (.I0(max_1_fu_78[28]),
        .I1(in_data_q0[28]),
        .I2(in_data_q0[29]),
        .I3(max_1_fu_78[29]),
        .O(icmp_ln31_fu_224_p2_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_fu_224_p2_carry__2_i_3
       (.I0(max_1_fu_78[26]),
        .I1(in_data_q0[26]),
        .I2(in_data_q0[27]),
        .I3(max_1_fu_78[27]),
        .O(icmp_ln31_fu_224_p2_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_fu_224_p2_carry__2_i_4
       (.I0(max_1_fu_78[24]),
        .I1(in_data_q0[24]),
        .I2(in_data_q0[25]),
        .I3(max_1_fu_78[25]),
        .O(icmp_ln31_fu_224_p2_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_fu_224_p2_carry__2_i_5
       (.I0(in_data_q0[30]),
        .I1(max_1_fu_78[30]),
        .I2(max_1_fu_78[31]),
        .I3(in_data_q0[31]),
        .O(icmp_ln31_fu_224_p2_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_fu_224_p2_carry__2_i_6
       (.I0(in_data_q0[28]),
        .I1(max_1_fu_78[28]),
        .I2(in_data_q0[29]),
        .I3(max_1_fu_78[29]),
        .O(icmp_ln31_fu_224_p2_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_fu_224_p2_carry__2_i_7
       (.I0(in_data_q0[26]),
        .I1(max_1_fu_78[26]),
        .I2(in_data_q0[27]),
        .I3(max_1_fu_78[27]),
        .O(icmp_ln31_fu_224_p2_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_fu_224_p2_carry__2_i_8
       (.I0(in_data_q0[24]),
        .I1(max_1_fu_78[24]),
        .I2(in_data_q0[25]),
        .I3(max_1_fu_78[25]),
        .O(icmp_ln31_fu_224_p2_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_fu_224_p2_carry_i_1
       (.I0(max_1_fu_78[6]),
        .I1(in_data_q0[6]),
        .I2(in_data_q0[7]),
        .I3(max_1_fu_78[7]),
        .O(icmp_ln31_fu_224_p2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_fu_224_p2_carry_i_2
       (.I0(max_1_fu_78[4]),
        .I1(in_data_q0[4]),
        .I2(in_data_q0[5]),
        .I3(max_1_fu_78[5]),
        .O(icmp_ln31_fu_224_p2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_fu_224_p2_carry_i_3
       (.I0(max_1_fu_78[2]),
        .I1(in_data_q0[2]),
        .I2(in_data_q0[3]),
        .I3(max_1_fu_78[3]),
        .O(icmp_ln31_fu_224_p2_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln31_fu_224_p2_carry_i_4
       (.I0(max_1_fu_78[0]),
        .I1(in_data_q0[0]),
        .I2(in_data_q0[1]),
        .I3(max_1_fu_78[1]),
        .O(icmp_ln31_fu_224_p2_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_fu_224_p2_carry_i_5
       (.I0(in_data_q0[6]),
        .I1(max_1_fu_78[6]),
        .I2(in_data_q0[7]),
        .I3(max_1_fu_78[7]),
        .O(icmp_ln31_fu_224_p2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_fu_224_p2_carry_i_6
       (.I0(in_data_q0[4]),
        .I1(max_1_fu_78[4]),
        .I2(in_data_q0[5]),
        .I3(max_1_fu_78[5]),
        .O(icmp_ln31_fu_224_p2_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_fu_224_p2_carry_i_7
       (.I0(in_data_q0[2]),
        .I1(max_1_fu_78[2]),
        .I2(in_data_q0[3]),
        .I3(max_1_fu_78[3]),
        .O(icmp_ln31_fu_224_p2_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_fu_224_p2_carry_i_8
       (.I0(in_data_q0[0]),
        .I1(max_1_fu_78[0]),
        .I2(in_data_q0[1]),
        .I3(max_1_fu_78[1]),
        .O(icmp_ln31_fu_224_p2_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \max_11_fu_58[30]_i_1 
       (.I0(ap_enable_reg_pp0_iter1_reg_0),
        .I1(ap_loop_init_int),
        .O(\max_11_fu_58[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAFFFFC0EAC0C0)) 
    \max_11_fu_58[31]_i_1 
       (.I0(max_23_reg_440[31]),
        .I1(ap_loop_init_int),
        .I2(ap_enable_reg_pp0_iter1_reg_0),
        .I3(icmp_ln17_reg_413_pp0_iter2_reg),
        .I4(ap_enable_reg_pp0_iter3),
        .I5(max_11_fu_58[31]),
        .O(\max_11_fu_58[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_11_fu_58_reg[0] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_16),
        .D(max_23_reg_440[0]),
        .Q(max_11_fu_58[0]),
        .R(\max_11_fu_58[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_11_fu_58_reg[10] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_16),
        .D(max_23_reg_440[10]),
        .Q(max_11_fu_58[10]),
        .R(\max_11_fu_58[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_11_fu_58_reg[11] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_16),
        .D(max_23_reg_440[11]),
        .Q(max_11_fu_58[11]),
        .R(\max_11_fu_58[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_11_fu_58_reg[12] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_16),
        .D(max_23_reg_440[12]),
        .Q(max_11_fu_58[12]),
        .R(\max_11_fu_58[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_11_fu_58_reg[13] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_16),
        .D(max_23_reg_440[13]),
        .Q(max_11_fu_58[13]),
        .R(\max_11_fu_58[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_11_fu_58_reg[14] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_16),
        .D(max_23_reg_440[14]),
        .Q(max_11_fu_58[14]),
        .R(\max_11_fu_58[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_11_fu_58_reg[15] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_16),
        .D(max_23_reg_440[15]),
        .Q(max_11_fu_58[15]),
        .R(\max_11_fu_58[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_11_fu_58_reg[16] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_16),
        .D(max_23_reg_440[16]),
        .Q(max_11_fu_58[16]),
        .R(\max_11_fu_58[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_11_fu_58_reg[17] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_16),
        .D(max_23_reg_440[17]),
        .Q(max_11_fu_58[17]),
        .R(\max_11_fu_58[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_11_fu_58_reg[18] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_16),
        .D(max_23_reg_440[18]),
        .Q(max_11_fu_58[18]),
        .R(\max_11_fu_58[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_11_fu_58_reg[19] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_16),
        .D(max_23_reg_440[19]),
        .Q(max_11_fu_58[19]),
        .R(\max_11_fu_58[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_11_fu_58_reg[1] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_16),
        .D(max_23_reg_440[1]),
        .Q(max_11_fu_58[1]),
        .R(\max_11_fu_58[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_11_fu_58_reg[20] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_16),
        .D(max_23_reg_440[20]),
        .Q(max_11_fu_58[20]),
        .R(\max_11_fu_58[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_11_fu_58_reg[21] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_16),
        .D(max_23_reg_440[21]),
        .Q(max_11_fu_58[21]),
        .R(\max_11_fu_58[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_11_fu_58_reg[22] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_16),
        .D(max_23_reg_440[22]),
        .Q(max_11_fu_58[22]),
        .R(\max_11_fu_58[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_11_fu_58_reg[23] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_16),
        .D(max_23_reg_440[23]),
        .Q(max_11_fu_58[23]),
        .R(\max_11_fu_58[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_11_fu_58_reg[24] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_16),
        .D(max_23_reg_440[24]),
        .Q(max_11_fu_58[24]),
        .R(\max_11_fu_58[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_11_fu_58_reg[25] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_16),
        .D(max_23_reg_440[25]),
        .Q(max_11_fu_58[25]),
        .R(\max_11_fu_58[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_11_fu_58_reg[26] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_16),
        .D(max_23_reg_440[26]),
        .Q(max_11_fu_58[26]),
        .R(\max_11_fu_58[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_11_fu_58_reg[27] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_16),
        .D(max_23_reg_440[27]),
        .Q(max_11_fu_58[27]),
        .R(\max_11_fu_58[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_11_fu_58_reg[28] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_16),
        .D(max_23_reg_440[28]),
        .Q(max_11_fu_58[28]),
        .R(\max_11_fu_58[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_11_fu_58_reg[29] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_16),
        .D(max_23_reg_440[29]),
        .Q(max_11_fu_58[29]),
        .R(\max_11_fu_58[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_11_fu_58_reg[2] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_16),
        .D(max_23_reg_440[2]),
        .Q(max_11_fu_58[2]),
        .R(\max_11_fu_58[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_11_fu_58_reg[30] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_16),
        .D(max_23_reg_440[30]),
        .Q(max_11_fu_58[30]),
        .R(\max_11_fu_58[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_11_fu_58_reg[31] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\max_11_fu_58[31]_i_1_n_0 ),
        .Q(max_11_fu_58[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \max_11_fu_58_reg[3] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_16),
        .D(max_23_reg_440[3]),
        .Q(max_11_fu_58[3]),
        .R(\max_11_fu_58[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_11_fu_58_reg[4] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_16),
        .D(max_23_reg_440[4]),
        .Q(max_11_fu_58[4]),
        .R(\max_11_fu_58[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_11_fu_58_reg[5] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_16),
        .D(max_23_reg_440[5]),
        .Q(max_11_fu_58[5]),
        .R(\max_11_fu_58[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_11_fu_58_reg[6] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_16),
        .D(max_23_reg_440[6]),
        .Q(max_11_fu_58[6]),
        .R(\max_11_fu_58[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_11_fu_58_reg[7] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_16),
        .D(max_23_reg_440[7]),
        .Q(max_11_fu_58[7]),
        .R(\max_11_fu_58[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_11_fu_58_reg[8] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_16),
        .D(max_23_reg_440[8]),
        .Q(max_11_fu_58[8]),
        .R(\max_11_fu_58[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_11_fu_58_reg[9] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_16),
        .D(max_23_reg_440[9]),
        .Q(max_11_fu_58[9]),
        .R(\max_11_fu_58[30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \max_13_fu_50[30]_i_1 
       (.I0(ap_enable_reg_pp0_iter1_reg_0),
        .I1(ap_loop_init_int),
        .O(\max_13_fu_50[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBBBF888)) 
    \max_13_fu_50[31]_i_1 
       (.I0(max_25_reg_453[31]),
        .I1(out_data_ce0),
        .I2(ap_loop_init_int),
        .I3(ap_enable_reg_pp0_iter1_reg_0),
        .I4(max_13_fu_50[31]),
        .O(\max_13_fu_50[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_13_fu_50_reg[0] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_15),
        .D(max_25_reg_453[0]),
        .Q(max_13_fu_50[0]),
        .R(\max_13_fu_50[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_13_fu_50_reg[10] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_15),
        .D(max_25_reg_453[10]),
        .Q(max_13_fu_50[10]),
        .R(\max_13_fu_50[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_13_fu_50_reg[11] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_15),
        .D(max_25_reg_453[11]),
        .Q(max_13_fu_50[11]),
        .R(\max_13_fu_50[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_13_fu_50_reg[12] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_15),
        .D(max_25_reg_453[12]),
        .Q(max_13_fu_50[12]),
        .R(\max_13_fu_50[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_13_fu_50_reg[13] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_15),
        .D(max_25_reg_453[13]),
        .Q(max_13_fu_50[13]),
        .R(\max_13_fu_50[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_13_fu_50_reg[14] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_15),
        .D(max_25_reg_453[14]),
        .Q(max_13_fu_50[14]),
        .R(\max_13_fu_50[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_13_fu_50_reg[15] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_15),
        .D(max_25_reg_453[15]),
        .Q(max_13_fu_50[15]),
        .R(\max_13_fu_50[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_13_fu_50_reg[16] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_15),
        .D(max_25_reg_453[16]),
        .Q(max_13_fu_50[16]),
        .R(\max_13_fu_50[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_13_fu_50_reg[17] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_15),
        .D(max_25_reg_453[17]),
        .Q(max_13_fu_50[17]),
        .R(\max_13_fu_50[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_13_fu_50_reg[18] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_15),
        .D(max_25_reg_453[18]),
        .Q(max_13_fu_50[18]),
        .R(\max_13_fu_50[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_13_fu_50_reg[19] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_15),
        .D(max_25_reg_453[19]),
        .Q(max_13_fu_50[19]),
        .R(\max_13_fu_50[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_13_fu_50_reg[1] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_15),
        .D(max_25_reg_453[1]),
        .Q(max_13_fu_50[1]),
        .R(\max_13_fu_50[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_13_fu_50_reg[20] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_15),
        .D(max_25_reg_453[20]),
        .Q(max_13_fu_50[20]),
        .R(\max_13_fu_50[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_13_fu_50_reg[21] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_15),
        .D(max_25_reg_453[21]),
        .Q(max_13_fu_50[21]),
        .R(\max_13_fu_50[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_13_fu_50_reg[22] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_15),
        .D(max_25_reg_453[22]),
        .Q(max_13_fu_50[22]),
        .R(\max_13_fu_50[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_13_fu_50_reg[23] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_15),
        .D(max_25_reg_453[23]),
        .Q(max_13_fu_50[23]),
        .R(\max_13_fu_50[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_13_fu_50_reg[24] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_15),
        .D(max_25_reg_453[24]),
        .Q(max_13_fu_50[24]),
        .R(\max_13_fu_50[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_13_fu_50_reg[25] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_15),
        .D(max_25_reg_453[25]),
        .Q(max_13_fu_50[25]),
        .R(\max_13_fu_50[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_13_fu_50_reg[26] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_15),
        .D(max_25_reg_453[26]),
        .Q(max_13_fu_50[26]),
        .R(\max_13_fu_50[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_13_fu_50_reg[27] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_15),
        .D(max_25_reg_453[27]),
        .Q(max_13_fu_50[27]),
        .R(\max_13_fu_50[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_13_fu_50_reg[28] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_15),
        .D(max_25_reg_453[28]),
        .Q(max_13_fu_50[28]),
        .R(\max_13_fu_50[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_13_fu_50_reg[29] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_15),
        .D(max_25_reg_453[29]),
        .Q(max_13_fu_50[29]),
        .R(\max_13_fu_50[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_13_fu_50_reg[2] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_15),
        .D(max_25_reg_453[2]),
        .Q(max_13_fu_50[2]),
        .R(\max_13_fu_50[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_13_fu_50_reg[30] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_15),
        .D(max_25_reg_453[30]),
        .Q(max_13_fu_50[30]),
        .R(\max_13_fu_50[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_13_fu_50_reg[31] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\max_13_fu_50[31]_i_1_n_0 ),
        .Q(max_13_fu_50[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \max_13_fu_50_reg[3] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_15),
        .D(max_25_reg_453[3]),
        .Q(max_13_fu_50[3]),
        .R(\max_13_fu_50[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_13_fu_50_reg[4] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_15),
        .D(max_25_reg_453[4]),
        .Q(max_13_fu_50[4]),
        .R(\max_13_fu_50[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_13_fu_50_reg[5] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_15),
        .D(max_25_reg_453[5]),
        .Q(max_13_fu_50[5]),
        .R(\max_13_fu_50[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_13_fu_50_reg[6] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_15),
        .D(max_25_reg_453[6]),
        .Q(max_13_fu_50[6]),
        .R(\max_13_fu_50[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_13_fu_50_reg[7] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_15),
        .D(max_25_reg_453[7]),
        .Q(max_13_fu_50[7]),
        .R(\max_13_fu_50[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_13_fu_50_reg[8] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_15),
        .D(max_25_reg_453[8]),
        .Q(max_13_fu_50[8]),
        .R(\max_13_fu_50[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_13_fu_50_reg[9] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_15),
        .D(max_25_reg_453[9]),
        .Q(max_13_fu_50[9]),
        .R(\max_13_fu_50[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_18_reg_434[0]_i_1 
       (.I0(max_1_fu_78[0]),
        .I1(max_3_fu_74[0]),
        .I2(icmp_ln31_1_fu_238_p2_carry__2_n_0),
        .I3(in_data_q0[0]),
        .I4(icmp_ln31_fu_224_p2_carry__2_n_0),
        .O(max_18_fu_244_p3[0]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_18_reg_434[10]_i_1 
       (.I0(max_1_fu_78[10]),
        .I1(max_3_fu_74[10]),
        .I2(icmp_ln31_1_fu_238_p2_carry__2_n_0),
        .I3(in_data_q0[10]),
        .I4(icmp_ln31_fu_224_p2_carry__2_n_0),
        .O(max_18_fu_244_p3[10]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_18_reg_434[11]_i_1 
       (.I0(max_1_fu_78[11]),
        .I1(max_3_fu_74[11]),
        .I2(icmp_ln31_1_fu_238_p2_carry__2_n_0),
        .I3(in_data_q0[11]),
        .I4(icmp_ln31_fu_224_p2_carry__2_n_0),
        .O(max_18_fu_244_p3[11]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_18_reg_434[12]_i_1 
       (.I0(max_1_fu_78[12]),
        .I1(max_3_fu_74[12]),
        .I2(icmp_ln31_1_fu_238_p2_carry__2_n_0),
        .I3(in_data_q0[12]),
        .I4(icmp_ln31_fu_224_p2_carry__2_n_0),
        .O(max_18_fu_244_p3[12]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_18_reg_434[13]_i_1 
       (.I0(max_1_fu_78[13]),
        .I1(max_3_fu_74[13]),
        .I2(icmp_ln31_1_fu_238_p2_carry__2_n_0),
        .I3(in_data_q0[13]),
        .I4(icmp_ln31_fu_224_p2_carry__2_n_0),
        .O(max_18_fu_244_p3[13]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_18_reg_434[14]_i_1 
       (.I0(max_1_fu_78[14]),
        .I1(max_3_fu_74[14]),
        .I2(icmp_ln31_1_fu_238_p2_carry__2_n_0),
        .I3(in_data_q0[14]),
        .I4(icmp_ln31_fu_224_p2_carry__2_n_0),
        .O(max_18_fu_244_p3[14]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_18_reg_434[15]_i_1 
       (.I0(max_1_fu_78[15]),
        .I1(max_3_fu_74[15]),
        .I2(icmp_ln31_1_fu_238_p2_carry__2_n_0),
        .I3(in_data_q0[15]),
        .I4(icmp_ln31_fu_224_p2_carry__2_n_0),
        .O(max_18_fu_244_p3[15]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_18_reg_434[16]_i_1 
       (.I0(max_1_fu_78[16]),
        .I1(max_3_fu_74[16]),
        .I2(icmp_ln31_1_fu_238_p2_carry__2_n_0),
        .I3(in_data_q0[16]),
        .I4(icmp_ln31_fu_224_p2_carry__2_n_0),
        .O(max_18_fu_244_p3[16]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_18_reg_434[17]_i_1 
       (.I0(max_1_fu_78[17]),
        .I1(max_3_fu_74[17]),
        .I2(icmp_ln31_1_fu_238_p2_carry__2_n_0),
        .I3(in_data_q0[17]),
        .I4(icmp_ln31_fu_224_p2_carry__2_n_0),
        .O(max_18_fu_244_p3[17]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_18_reg_434[18]_i_1 
       (.I0(max_1_fu_78[18]),
        .I1(max_3_fu_74[18]),
        .I2(icmp_ln31_1_fu_238_p2_carry__2_n_0),
        .I3(in_data_q0[18]),
        .I4(icmp_ln31_fu_224_p2_carry__2_n_0),
        .O(max_18_fu_244_p3[18]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_18_reg_434[19]_i_1 
       (.I0(max_1_fu_78[19]),
        .I1(max_3_fu_74[19]),
        .I2(icmp_ln31_1_fu_238_p2_carry__2_n_0),
        .I3(in_data_q0[19]),
        .I4(icmp_ln31_fu_224_p2_carry__2_n_0),
        .O(max_18_fu_244_p3[19]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_18_reg_434[1]_i_1 
       (.I0(max_1_fu_78[1]),
        .I1(max_3_fu_74[1]),
        .I2(icmp_ln31_1_fu_238_p2_carry__2_n_0),
        .I3(in_data_q0[1]),
        .I4(icmp_ln31_fu_224_p2_carry__2_n_0),
        .O(max_18_fu_244_p3[1]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_18_reg_434[20]_i_1 
       (.I0(max_1_fu_78[20]),
        .I1(max_3_fu_74[20]),
        .I2(icmp_ln31_1_fu_238_p2_carry__2_n_0),
        .I3(in_data_q0[20]),
        .I4(icmp_ln31_fu_224_p2_carry__2_n_0),
        .O(max_18_fu_244_p3[20]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_18_reg_434[21]_i_1 
       (.I0(max_1_fu_78[21]),
        .I1(max_3_fu_74[21]),
        .I2(icmp_ln31_1_fu_238_p2_carry__2_n_0),
        .I3(in_data_q0[21]),
        .I4(icmp_ln31_fu_224_p2_carry__2_n_0),
        .O(max_18_fu_244_p3[21]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_18_reg_434[22]_i_1 
       (.I0(max_1_fu_78[22]),
        .I1(max_3_fu_74[22]),
        .I2(icmp_ln31_1_fu_238_p2_carry__2_n_0),
        .I3(in_data_q0[22]),
        .I4(icmp_ln31_fu_224_p2_carry__2_n_0),
        .O(max_18_fu_244_p3[22]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_18_reg_434[23]_i_1 
       (.I0(max_1_fu_78[23]),
        .I1(max_3_fu_74[23]),
        .I2(icmp_ln31_1_fu_238_p2_carry__2_n_0),
        .I3(in_data_q0[23]),
        .I4(icmp_ln31_fu_224_p2_carry__2_n_0),
        .O(max_18_fu_244_p3[23]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_18_reg_434[24]_i_1 
       (.I0(max_1_fu_78[24]),
        .I1(max_3_fu_74[24]),
        .I2(icmp_ln31_1_fu_238_p2_carry__2_n_0),
        .I3(in_data_q0[24]),
        .I4(icmp_ln31_fu_224_p2_carry__2_n_0),
        .O(max_18_fu_244_p3[24]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_18_reg_434[25]_i_1 
       (.I0(max_1_fu_78[25]),
        .I1(max_3_fu_74[25]),
        .I2(icmp_ln31_1_fu_238_p2_carry__2_n_0),
        .I3(in_data_q0[25]),
        .I4(icmp_ln31_fu_224_p2_carry__2_n_0),
        .O(max_18_fu_244_p3[25]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_18_reg_434[26]_i_1 
       (.I0(max_1_fu_78[26]),
        .I1(max_3_fu_74[26]),
        .I2(icmp_ln31_1_fu_238_p2_carry__2_n_0),
        .I3(in_data_q0[26]),
        .I4(icmp_ln31_fu_224_p2_carry__2_n_0),
        .O(max_18_fu_244_p3[26]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_18_reg_434[27]_i_1 
       (.I0(max_1_fu_78[27]),
        .I1(max_3_fu_74[27]),
        .I2(icmp_ln31_1_fu_238_p2_carry__2_n_0),
        .I3(in_data_q0[27]),
        .I4(icmp_ln31_fu_224_p2_carry__2_n_0),
        .O(max_18_fu_244_p3[27]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_18_reg_434[28]_i_1 
       (.I0(max_1_fu_78[28]),
        .I1(max_3_fu_74[28]),
        .I2(icmp_ln31_1_fu_238_p2_carry__2_n_0),
        .I3(in_data_q0[28]),
        .I4(icmp_ln31_fu_224_p2_carry__2_n_0),
        .O(max_18_fu_244_p3[28]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_18_reg_434[29]_i_1 
       (.I0(max_1_fu_78[29]),
        .I1(max_3_fu_74[29]),
        .I2(icmp_ln31_1_fu_238_p2_carry__2_n_0),
        .I3(in_data_q0[29]),
        .I4(icmp_ln31_fu_224_p2_carry__2_n_0),
        .O(max_18_fu_244_p3[29]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_18_reg_434[2]_i_1 
       (.I0(max_1_fu_78[2]),
        .I1(max_3_fu_74[2]),
        .I2(icmp_ln31_1_fu_238_p2_carry__2_n_0),
        .I3(in_data_q0[2]),
        .I4(icmp_ln31_fu_224_p2_carry__2_n_0),
        .O(max_18_fu_244_p3[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_18_reg_434[30]_i_1 
       (.I0(max_1_fu_78[30]),
        .I1(max_3_fu_74[30]),
        .I2(icmp_ln31_1_fu_238_p2_carry__2_n_0),
        .I3(in_data_q0[30]),
        .I4(icmp_ln31_fu_224_p2_carry__2_n_0),
        .O(max_18_fu_244_p3[30]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_18_reg_434[31]_i_1 
       (.I0(max_1_fu_78[31]),
        .I1(max_3_fu_74[31]),
        .I2(icmp_ln31_1_fu_238_p2_carry__2_n_0),
        .I3(in_data_q0[31]),
        .I4(icmp_ln31_fu_224_p2_carry__2_n_0),
        .O(max_18_fu_244_p3[31]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_18_reg_434[3]_i_1 
       (.I0(max_1_fu_78[3]),
        .I1(max_3_fu_74[3]),
        .I2(icmp_ln31_1_fu_238_p2_carry__2_n_0),
        .I3(in_data_q0[3]),
        .I4(icmp_ln31_fu_224_p2_carry__2_n_0),
        .O(max_18_fu_244_p3[3]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_18_reg_434[4]_i_1 
       (.I0(max_1_fu_78[4]),
        .I1(max_3_fu_74[4]),
        .I2(icmp_ln31_1_fu_238_p2_carry__2_n_0),
        .I3(in_data_q0[4]),
        .I4(icmp_ln31_fu_224_p2_carry__2_n_0),
        .O(max_18_fu_244_p3[4]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_18_reg_434[5]_i_1 
       (.I0(max_1_fu_78[5]),
        .I1(max_3_fu_74[5]),
        .I2(icmp_ln31_1_fu_238_p2_carry__2_n_0),
        .I3(in_data_q0[5]),
        .I4(icmp_ln31_fu_224_p2_carry__2_n_0),
        .O(max_18_fu_244_p3[5]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_18_reg_434[6]_i_1 
       (.I0(max_1_fu_78[6]),
        .I1(max_3_fu_74[6]),
        .I2(icmp_ln31_1_fu_238_p2_carry__2_n_0),
        .I3(in_data_q0[6]),
        .I4(icmp_ln31_fu_224_p2_carry__2_n_0),
        .O(max_18_fu_244_p3[6]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_18_reg_434[7]_i_1 
       (.I0(max_1_fu_78[7]),
        .I1(max_3_fu_74[7]),
        .I2(icmp_ln31_1_fu_238_p2_carry__2_n_0),
        .I3(in_data_q0[7]),
        .I4(icmp_ln31_fu_224_p2_carry__2_n_0),
        .O(max_18_fu_244_p3[7]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_18_reg_434[8]_i_1 
       (.I0(max_1_fu_78[8]),
        .I1(max_3_fu_74[8]),
        .I2(icmp_ln31_1_fu_238_p2_carry__2_n_0),
        .I3(in_data_q0[8]),
        .I4(icmp_ln31_fu_224_p2_carry__2_n_0),
        .O(max_18_fu_244_p3[8]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_18_reg_434[9]_i_1 
       (.I0(max_1_fu_78[9]),
        .I1(max_3_fu_74[9]),
        .I2(icmp_ln31_1_fu_238_p2_carry__2_n_0),
        .I3(in_data_q0[9]),
        .I4(icmp_ln31_fu_224_p2_carry__2_n_0),
        .O(max_18_fu_244_p3[9]));
  FDRE \max_18_reg_434_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_18_fu_244_p3[0]),
        .Q(max_18_reg_434[0]),
        .R(1'b0));
  FDRE \max_18_reg_434_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_18_fu_244_p3[10]),
        .Q(max_18_reg_434[10]),
        .R(1'b0));
  FDRE \max_18_reg_434_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_18_fu_244_p3[11]),
        .Q(max_18_reg_434[11]),
        .R(1'b0));
  FDRE \max_18_reg_434_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_18_fu_244_p3[12]),
        .Q(max_18_reg_434[12]),
        .R(1'b0));
  FDRE \max_18_reg_434_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_18_fu_244_p3[13]),
        .Q(max_18_reg_434[13]),
        .R(1'b0));
  FDRE \max_18_reg_434_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_18_fu_244_p3[14]),
        .Q(max_18_reg_434[14]),
        .R(1'b0));
  FDRE \max_18_reg_434_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_18_fu_244_p3[15]),
        .Q(max_18_reg_434[15]),
        .R(1'b0));
  FDRE \max_18_reg_434_reg[16] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_18_fu_244_p3[16]),
        .Q(max_18_reg_434[16]),
        .R(1'b0));
  FDRE \max_18_reg_434_reg[17] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_18_fu_244_p3[17]),
        .Q(max_18_reg_434[17]),
        .R(1'b0));
  FDRE \max_18_reg_434_reg[18] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_18_fu_244_p3[18]),
        .Q(max_18_reg_434[18]),
        .R(1'b0));
  FDRE \max_18_reg_434_reg[19] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_18_fu_244_p3[19]),
        .Q(max_18_reg_434[19]),
        .R(1'b0));
  FDRE \max_18_reg_434_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_18_fu_244_p3[1]),
        .Q(max_18_reg_434[1]),
        .R(1'b0));
  FDRE \max_18_reg_434_reg[20] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_18_fu_244_p3[20]),
        .Q(max_18_reg_434[20]),
        .R(1'b0));
  FDRE \max_18_reg_434_reg[21] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_18_fu_244_p3[21]),
        .Q(max_18_reg_434[21]),
        .R(1'b0));
  FDRE \max_18_reg_434_reg[22] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_18_fu_244_p3[22]),
        .Q(max_18_reg_434[22]),
        .R(1'b0));
  FDRE \max_18_reg_434_reg[23] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_18_fu_244_p3[23]),
        .Q(max_18_reg_434[23]),
        .R(1'b0));
  FDRE \max_18_reg_434_reg[24] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_18_fu_244_p3[24]),
        .Q(max_18_reg_434[24]),
        .R(1'b0));
  FDRE \max_18_reg_434_reg[25] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_18_fu_244_p3[25]),
        .Q(max_18_reg_434[25]),
        .R(1'b0));
  FDRE \max_18_reg_434_reg[26] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_18_fu_244_p3[26]),
        .Q(max_18_reg_434[26]),
        .R(1'b0));
  FDRE \max_18_reg_434_reg[27] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_18_fu_244_p3[27]),
        .Q(max_18_reg_434[27]),
        .R(1'b0));
  FDRE \max_18_reg_434_reg[28] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_18_fu_244_p3[28]),
        .Q(max_18_reg_434[28]),
        .R(1'b0));
  FDRE \max_18_reg_434_reg[29] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_18_fu_244_p3[29]),
        .Q(max_18_reg_434[29]),
        .R(1'b0));
  FDRE \max_18_reg_434_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_18_fu_244_p3[2]),
        .Q(max_18_reg_434[2]),
        .R(1'b0));
  FDRE \max_18_reg_434_reg[30] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_18_fu_244_p3[30]),
        .Q(max_18_reg_434[30]),
        .R(1'b0));
  FDRE \max_18_reg_434_reg[31] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_18_fu_244_p3[31]),
        .Q(max_18_reg_434[31]),
        .R(1'b0));
  FDRE \max_18_reg_434_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_18_fu_244_p3[3]),
        .Q(max_18_reg_434[3]),
        .R(1'b0));
  FDRE \max_18_reg_434_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_18_fu_244_p3[4]),
        .Q(max_18_reg_434[4]),
        .R(1'b0));
  FDRE \max_18_reg_434_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_18_fu_244_p3[5]),
        .Q(max_18_reg_434[5]),
        .R(1'b0));
  FDRE \max_18_reg_434_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_18_fu_244_p3[6]),
        .Q(max_18_reg_434[6]),
        .R(1'b0));
  FDRE \max_18_reg_434_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_18_fu_244_p3[7]),
        .Q(max_18_reg_434[7]),
        .R(1'b0));
  FDRE \max_18_reg_434_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_18_fu_244_p3[8]),
        .Q(max_18_reg_434[8]),
        .R(1'b0));
  FDRE \max_18_reg_434_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_18_fu_244_p3[9]),
        .Q(max_18_reg_434[9]),
        .R(1'b0));
  FDRE \max_19_reg_427_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_5_fu_70[0]),
        .Q(max_19_reg_427[0]),
        .R(1'b0));
  FDRE \max_19_reg_427_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_5_fu_70[10]),
        .Q(max_19_reg_427[10]),
        .R(1'b0));
  FDRE \max_19_reg_427_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_5_fu_70[11]),
        .Q(max_19_reg_427[11]),
        .R(1'b0));
  FDRE \max_19_reg_427_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_5_fu_70[12]),
        .Q(max_19_reg_427[12]),
        .R(1'b0));
  FDRE \max_19_reg_427_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_5_fu_70[13]),
        .Q(max_19_reg_427[13]),
        .R(1'b0));
  FDRE \max_19_reg_427_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_5_fu_70[14]),
        .Q(max_19_reg_427[14]),
        .R(1'b0));
  FDRE \max_19_reg_427_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_5_fu_70[15]),
        .Q(max_19_reg_427[15]),
        .R(1'b0));
  FDRE \max_19_reg_427_reg[16] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_5_fu_70[16]),
        .Q(max_19_reg_427[16]),
        .R(1'b0));
  FDRE \max_19_reg_427_reg[17] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_5_fu_70[17]),
        .Q(max_19_reg_427[17]),
        .R(1'b0));
  FDRE \max_19_reg_427_reg[18] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_5_fu_70[18]),
        .Q(max_19_reg_427[18]),
        .R(1'b0));
  FDRE \max_19_reg_427_reg[19] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_5_fu_70[19]),
        .Q(max_19_reg_427[19]),
        .R(1'b0));
  FDRE \max_19_reg_427_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_5_fu_70[1]),
        .Q(max_19_reg_427[1]),
        .R(1'b0));
  FDRE \max_19_reg_427_reg[20] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_5_fu_70[20]),
        .Q(max_19_reg_427[20]),
        .R(1'b0));
  FDRE \max_19_reg_427_reg[21] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_5_fu_70[21]),
        .Q(max_19_reg_427[21]),
        .R(1'b0));
  FDRE \max_19_reg_427_reg[22] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_5_fu_70[22]),
        .Q(max_19_reg_427[22]),
        .R(1'b0));
  FDRE \max_19_reg_427_reg[23] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_5_fu_70[23]),
        .Q(max_19_reg_427[23]),
        .R(1'b0));
  FDRE \max_19_reg_427_reg[24] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_5_fu_70[24]),
        .Q(max_19_reg_427[24]),
        .R(1'b0));
  FDRE \max_19_reg_427_reg[25] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_5_fu_70[25]),
        .Q(max_19_reg_427[25]),
        .R(1'b0));
  FDRE \max_19_reg_427_reg[26] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_5_fu_70[26]),
        .Q(max_19_reg_427[26]),
        .R(1'b0));
  FDRE \max_19_reg_427_reg[27] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_5_fu_70[27]),
        .Q(max_19_reg_427[27]),
        .R(1'b0));
  FDRE \max_19_reg_427_reg[28] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_5_fu_70[28]),
        .Q(max_19_reg_427[28]),
        .R(1'b0));
  FDRE \max_19_reg_427_reg[29] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_5_fu_70[29]),
        .Q(max_19_reg_427[29]),
        .R(1'b0));
  FDRE \max_19_reg_427_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_5_fu_70[2]),
        .Q(max_19_reg_427[2]),
        .R(1'b0));
  FDRE \max_19_reg_427_reg[30] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_5_fu_70[30]),
        .Q(max_19_reg_427[30]),
        .R(1'b0));
  FDRE \max_19_reg_427_reg[31] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_5_fu_70[31]),
        .Q(max_19_reg_427[31]),
        .R(1'b0));
  FDRE \max_19_reg_427_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_5_fu_70[3]),
        .Q(max_19_reg_427[3]),
        .R(1'b0));
  FDRE \max_19_reg_427_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_5_fu_70[4]),
        .Q(max_19_reg_427[4]),
        .R(1'b0));
  FDRE \max_19_reg_427_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_5_fu_70[5]),
        .Q(max_19_reg_427[5]),
        .R(1'b0));
  FDRE \max_19_reg_427_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_5_fu_70[6]),
        .Q(max_19_reg_427[6]),
        .R(1'b0));
  FDRE \max_19_reg_427_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_5_fu_70[7]),
        .Q(max_19_reg_427[7]),
        .R(1'b0));
  FDRE \max_19_reg_427_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_5_fu_70[8]),
        .Q(max_19_reg_427[8]),
        .R(1'b0));
  FDRE \max_19_reg_427_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_5_fu_70[9]),
        .Q(max_19_reg_427[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \max_1_fu_78[30]_i_1 
       (.I0(ap_enable_reg_pp0_iter1_reg_0),
        .I1(ap_loop_init_int),
        .O(\max_1_fu_78[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAFFFFC0EAC0C0)) 
    \max_1_fu_78[31]_i_1 
       (.I0(in_data_q0[31]),
        .I1(ap_loop_init_int),
        .I2(ap_enable_reg_pp0_iter1_reg_0),
        .I3(icmp_ln17_reg_413),
        .I4(ap_enable_reg_pp0_iter1),
        .I5(max_1_fu_78[31]),
        .O(\max_1_fu_78[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_1_fu_78_reg[0] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(in_data_q0[0]),
        .Q(max_1_fu_78[0]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_1_fu_78_reg[10] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(in_data_q0[10]),
        .Q(max_1_fu_78[10]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_1_fu_78_reg[11] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(in_data_q0[11]),
        .Q(max_1_fu_78[11]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_1_fu_78_reg[12] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(in_data_q0[12]),
        .Q(max_1_fu_78[12]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_1_fu_78_reg[13] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(in_data_q0[13]),
        .Q(max_1_fu_78[13]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_1_fu_78_reg[14] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(in_data_q0[14]),
        .Q(max_1_fu_78[14]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_1_fu_78_reg[15] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(in_data_q0[15]),
        .Q(max_1_fu_78[15]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_1_fu_78_reg[16] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(in_data_q0[16]),
        .Q(max_1_fu_78[16]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_1_fu_78_reg[17] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(in_data_q0[17]),
        .Q(max_1_fu_78[17]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_1_fu_78_reg[18] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(in_data_q0[18]),
        .Q(max_1_fu_78[18]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_1_fu_78_reg[19] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(in_data_q0[19]),
        .Q(max_1_fu_78[19]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_1_fu_78_reg[1] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(in_data_q0[1]),
        .Q(max_1_fu_78[1]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_1_fu_78_reg[20] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(in_data_q0[20]),
        .Q(max_1_fu_78[20]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_1_fu_78_reg[21] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(in_data_q0[21]),
        .Q(max_1_fu_78[21]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_1_fu_78_reg[22] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(in_data_q0[22]),
        .Q(max_1_fu_78[22]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_1_fu_78_reg[23] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(in_data_q0[23]),
        .Q(max_1_fu_78[23]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_1_fu_78_reg[24] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(in_data_q0[24]),
        .Q(max_1_fu_78[24]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_1_fu_78_reg[25] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(in_data_q0[25]),
        .Q(max_1_fu_78[25]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_1_fu_78_reg[26] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(in_data_q0[26]),
        .Q(max_1_fu_78[26]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_1_fu_78_reg[27] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(in_data_q0[27]),
        .Q(max_1_fu_78[27]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_1_fu_78_reg[28] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(in_data_q0[28]),
        .Q(max_1_fu_78[28]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_1_fu_78_reg[29] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(in_data_q0[29]),
        .Q(max_1_fu_78[29]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_1_fu_78_reg[2] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(in_data_q0[2]),
        .Q(max_1_fu_78[2]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_1_fu_78_reg[30] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(in_data_q0[30]),
        .Q(max_1_fu_78[30]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_1_fu_78_reg[31] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\max_1_fu_78[31]_i_1_n_0 ),
        .Q(max_1_fu_78[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \max_1_fu_78_reg[3] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(in_data_q0[3]),
        .Q(max_1_fu_78[3]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_1_fu_78_reg[4] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(in_data_q0[4]),
        .Q(max_1_fu_78[4]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_1_fu_78_reg[5] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(in_data_q0[5]),
        .Q(max_1_fu_78[5]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_1_fu_78_reg[6] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(in_data_q0[6]),
        .Q(max_1_fu_78[6]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_1_fu_78_reg[7] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(in_data_q0[7]),
        .Q(max_1_fu_78[7]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_1_fu_78_reg[8] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(in_data_q0[8]),
        .Q(max_1_fu_78[8]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_1_fu_78_reg[9] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(in_data_q0[9]),
        .Q(max_1_fu_78[9]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_22_reg_447[0]_i_1 
       (.I0(max_19_reg_427[0]),
        .I1(max_7_fu_66[0]),
        .I2(icmp_ln31_3_fu_283_p2_carry__2_n_0),
        .I3(max_18_reg_434[0]),
        .I4(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .O(max_22_fu_289_p3[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_22_reg_447[10]_i_1 
       (.I0(max_19_reg_427[10]),
        .I1(max_7_fu_66[10]),
        .I2(icmp_ln31_3_fu_283_p2_carry__2_n_0),
        .I3(max_18_reg_434[10]),
        .I4(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .O(max_22_fu_289_p3[10]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_22_reg_447[11]_i_1 
       (.I0(max_19_reg_427[11]),
        .I1(max_7_fu_66[11]),
        .I2(icmp_ln31_3_fu_283_p2_carry__2_n_0),
        .I3(max_18_reg_434[11]),
        .I4(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .O(max_22_fu_289_p3[11]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_22_reg_447[12]_i_1 
       (.I0(max_19_reg_427[12]),
        .I1(max_7_fu_66[12]),
        .I2(icmp_ln31_3_fu_283_p2_carry__2_n_0),
        .I3(max_18_reg_434[12]),
        .I4(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .O(max_22_fu_289_p3[12]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_22_reg_447[13]_i_1 
       (.I0(max_19_reg_427[13]),
        .I1(max_7_fu_66[13]),
        .I2(icmp_ln31_3_fu_283_p2_carry__2_n_0),
        .I3(max_18_reg_434[13]),
        .I4(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .O(max_22_fu_289_p3[13]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_22_reg_447[14]_i_1 
       (.I0(max_19_reg_427[14]),
        .I1(max_7_fu_66[14]),
        .I2(icmp_ln31_3_fu_283_p2_carry__2_n_0),
        .I3(max_18_reg_434[14]),
        .I4(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .O(max_22_fu_289_p3[14]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_22_reg_447[15]_i_1 
       (.I0(max_19_reg_427[15]),
        .I1(max_7_fu_66[15]),
        .I2(icmp_ln31_3_fu_283_p2_carry__2_n_0),
        .I3(max_18_reg_434[15]),
        .I4(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .O(max_22_fu_289_p3[15]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_22_reg_447[16]_i_1 
       (.I0(max_19_reg_427[16]),
        .I1(max_7_fu_66[16]),
        .I2(icmp_ln31_3_fu_283_p2_carry__2_n_0),
        .I3(max_18_reg_434[16]),
        .I4(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .O(max_22_fu_289_p3[16]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_22_reg_447[17]_i_1 
       (.I0(max_19_reg_427[17]),
        .I1(max_7_fu_66[17]),
        .I2(icmp_ln31_3_fu_283_p2_carry__2_n_0),
        .I3(max_18_reg_434[17]),
        .I4(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .O(max_22_fu_289_p3[17]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_22_reg_447[18]_i_1 
       (.I0(max_19_reg_427[18]),
        .I1(max_7_fu_66[18]),
        .I2(icmp_ln31_3_fu_283_p2_carry__2_n_0),
        .I3(max_18_reg_434[18]),
        .I4(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .O(max_22_fu_289_p3[18]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_22_reg_447[19]_i_1 
       (.I0(max_19_reg_427[19]),
        .I1(max_7_fu_66[19]),
        .I2(icmp_ln31_3_fu_283_p2_carry__2_n_0),
        .I3(max_18_reg_434[19]),
        .I4(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .O(max_22_fu_289_p3[19]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_22_reg_447[1]_i_1 
       (.I0(max_19_reg_427[1]),
        .I1(max_7_fu_66[1]),
        .I2(icmp_ln31_3_fu_283_p2_carry__2_n_0),
        .I3(max_18_reg_434[1]),
        .I4(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .O(max_22_fu_289_p3[1]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_22_reg_447[20]_i_1 
       (.I0(max_19_reg_427[20]),
        .I1(max_7_fu_66[20]),
        .I2(icmp_ln31_3_fu_283_p2_carry__2_n_0),
        .I3(max_18_reg_434[20]),
        .I4(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .O(max_22_fu_289_p3[20]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_22_reg_447[21]_i_1 
       (.I0(max_19_reg_427[21]),
        .I1(max_7_fu_66[21]),
        .I2(icmp_ln31_3_fu_283_p2_carry__2_n_0),
        .I3(max_18_reg_434[21]),
        .I4(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .O(max_22_fu_289_p3[21]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_22_reg_447[22]_i_1 
       (.I0(max_19_reg_427[22]),
        .I1(max_7_fu_66[22]),
        .I2(icmp_ln31_3_fu_283_p2_carry__2_n_0),
        .I3(max_18_reg_434[22]),
        .I4(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .O(max_22_fu_289_p3[22]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_22_reg_447[23]_i_1 
       (.I0(max_19_reg_427[23]),
        .I1(max_7_fu_66[23]),
        .I2(icmp_ln31_3_fu_283_p2_carry__2_n_0),
        .I3(max_18_reg_434[23]),
        .I4(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .O(max_22_fu_289_p3[23]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_22_reg_447[24]_i_1 
       (.I0(max_19_reg_427[24]),
        .I1(max_7_fu_66[24]),
        .I2(icmp_ln31_3_fu_283_p2_carry__2_n_0),
        .I3(max_18_reg_434[24]),
        .I4(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .O(max_22_fu_289_p3[24]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_22_reg_447[25]_i_1 
       (.I0(max_19_reg_427[25]),
        .I1(max_7_fu_66[25]),
        .I2(icmp_ln31_3_fu_283_p2_carry__2_n_0),
        .I3(max_18_reg_434[25]),
        .I4(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .O(max_22_fu_289_p3[25]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_22_reg_447[26]_i_1 
       (.I0(max_19_reg_427[26]),
        .I1(max_7_fu_66[26]),
        .I2(icmp_ln31_3_fu_283_p2_carry__2_n_0),
        .I3(max_18_reg_434[26]),
        .I4(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .O(max_22_fu_289_p3[26]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_22_reg_447[27]_i_1 
       (.I0(max_19_reg_427[27]),
        .I1(max_7_fu_66[27]),
        .I2(icmp_ln31_3_fu_283_p2_carry__2_n_0),
        .I3(max_18_reg_434[27]),
        .I4(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .O(max_22_fu_289_p3[27]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_22_reg_447[28]_i_1 
       (.I0(max_19_reg_427[28]),
        .I1(max_7_fu_66[28]),
        .I2(icmp_ln31_3_fu_283_p2_carry__2_n_0),
        .I3(max_18_reg_434[28]),
        .I4(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .O(max_22_fu_289_p3[28]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_22_reg_447[29]_i_1 
       (.I0(max_19_reg_427[29]),
        .I1(max_7_fu_66[29]),
        .I2(icmp_ln31_3_fu_283_p2_carry__2_n_0),
        .I3(max_18_reg_434[29]),
        .I4(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .O(max_22_fu_289_p3[29]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_22_reg_447[2]_i_1 
       (.I0(max_19_reg_427[2]),
        .I1(max_7_fu_66[2]),
        .I2(icmp_ln31_3_fu_283_p2_carry__2_n_0),
        .I3(max_18_reg_434[2]),
        .I4(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .O(max_22_fu_289_p3[2]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_22_reg_447[30]_i_1 
       (.I0(max_19_reg_427[30]),
        .I1(max_7_fu_66[30]),
        .I2(icmp_ln31_3_fu_283_p2_carry__2_n_0),
        .I3(max_18_reg_434[30]),
        .I4(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .O(max_22_fu_289_p3[30]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_22_reg_447[31]_i_1 
       (.I0(max_19_reg_427[31]),
        .I1(max_7_fu_66[31]),
        .I2(icmp_ln31_3_fu_283_p2_carry__2_n_0),
        .I3(max_18_reg_434[31]),
        .I4(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .O(max_22_fu_289_p3[31]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_22_reg_447[3]_i_1 
       (.I0(max_19_reg_427[3]),
        .I1(max_7_fu_66[3]),
        .I2(icmp_ln31_3_fu_283_p2_carry__2_n_0),
        .I3(max_18_reg_434[3]),
        .I4(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .O(max_22_fu_289_p3[3]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_22_reg_447[4]_i_1 
       (.I0(max_19_reg_427[4]),
        .I1(max_7_fu_66[4]),
        .I2(icmp_ln31_3_fu_283_p2_carry__2_n_0),
        .I3(max_18_reg_434[4]),
        .I4(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .O(max_22_fu_289_p3[4]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_22_reg_447[5]_i_1 
       (.I0(max_19_reg_427[5]),
        .I1(max_7_fu_66[5]),
        .I2(icmp_ln31_3_fu_283_p2_carry__2_n_0),
        .I3(max_18_reg_434[5]),
        .I4(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .O(max_22_fu_289_p3[5]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_22_reg_447[6]_i_1 
       (.I0(max_19_reg_427[6]),
        .I1(max_7_fu_66[6]),
        .I2(icmp_ln31_3_fu_283_p2_carry__2_n_0),
        .I3(max_18_reg_434[6]),
        .I4(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .O(max_22_fu_289_p3[6]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_22_reg_447[7]_i_1 
       (.I0(max_19_reg_427[7]),
        .I1(max_7_fu_66[7]),
        .I2(icmp_ln31_3_fu_283_p2_carry__2_n_0),
        .I3(max_18_reg_434[7]),
        .I4(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .O(max_22_fu_289_p3[7]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_22_reg_447[8]_i_1 
       (.I0(max_19_reg_427[8]),
        .I1(max_7_fu_66[8]),
        .I2(icmp_ln31_3_fu_283_p2_carry__2_n_0),
        .I3(max_18_reg_434[8]),
        .I4(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .O(max_22_fu_289_p3[8]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_22_reg_447[9]_i_1 
       (.I0(max_19_reg_427[9]),
        .I1(max_7_fu_66[9]),
        .I2(icmp_ln31_3_fu_283_p2_carry__2_n_0),
        .I3(max_18_reg_434[9]),
        .I4(icmp_ln31_2_fu_273_p2_carry__2_n_0),
        .O(max_22_fu_289_p3[9]));
  FDRE \max_22_reg_447_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_22_fu_289_p3[0]),
        .Q(max_22_reg_447[0]),
        .R(1'b0));
  FDRE \max_22_reg_447_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_22_fu_289_p3[10]),
        .Q(max_22_reg_447[10]),
        .R(1'b0));
  FDRE \max_22_reg_447_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_22_fu_289_p3[11]),
        .Q(max_22_reg_447[11]),
        .R(1'b0));
  FDRE \max_22_reg_447_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_22_fu_289_p3[12]),
        .Q(max_22_reg_447[12]),
        .R(1'b0));
  FDRE \max_22_reg_447_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_22_fu_289_p3[13]),
        .Q(max_22_reg_447[13]),
        .R(1'b0));
  FDRE \max_22_reg_447_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_22_fu_289_p3[14]),
        .Q(max_22_reg_447[14]),
        .R(1'b0));
  FDRE \max_22_reg_447_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_22_fu_289_p3[15]),
        .Q(max_22_reg_447[15]),
        .R(1'b0));
  FDRE \max_22_reg_447_reg[16] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_22_fu_289_p3[16]),
        .Q(max_22_reg_447[16]),
        .R(1'b0));
  FDRE \max_22_reg_447_reg[17] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_22_fu_289_p3[17]),
        .Q(max_22_reg_447[17]),
        .R(1'b0));
  FDRE \max_22_reg_447_reg[18] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_22_fu_289_p3[18]),
        .Q(max_22_reg_447[18]),
        .R(1'b0));
  FDRE \max_22_reg_447_reg[19] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_22_fu_289_p3[19]),
        .Q(max_22_reg_447[19]),
        .R(1'b0));
  FDRE \max_22_reg_447_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_22_fu_289_p3[1]),
        .Q(max_22_reg_447[1]),
        .R(1'b0));
  FDRE \max_22_reg_447_reg[20] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_22_fu_289_p3[20]),
        .Q(max_22_reg_447[20]),
        .R(1'b0));
  FDRE \max_22_reg_447_reg[21] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_22_fu_289_p3[21]),
        .Q(max_22_reg_447[21]),
        .R(1'b0));
  FDRE \max_22_reg_447_reg[22] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_22_fu_289_p3[22]),
        .Q(max_22_reg_447[22]),
        .R(1'b0));
  FDRE \max_22_reg_447_reg[23] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_22_fu_289_p3[23]),
        .Q(max_22_reg_447[23]),
        .R(1'b0));
  FDRE \max_22_reg_447_reg[24] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_22_fu_289_p3[24]),
        .Q(max_22_reg_447[24]),
        .R(1'b0));
  FDRE \max_22_reg_447_reg[25] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_22_fu_289_p3[25]),
        .Q(max_22_reg_447[25]),
        .R(1'b0));
  FDRE \max_22_reg_447_reg[26] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_22_fu_289_p3[26]),
        .Q(max_22_reg_447[26]),
        .R(1'b0));
  FDRE \max_22_reg_447_reg[27] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_22_fu_289_p3[27]),
        .Q(max_22_reg_447[27]),
        .R(1'b0));
  FDRE \max_22_reg_447_reg[28] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_22_fu_289_p3[28]),
        .Q(max_22_reg_447[28]),
        .R(1'b0));
  FDRE \max_22_reg_447_reg[29] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_22_fu_289_p3[29]),
        .Q(max_22_reg_447[29]),
        .R(1'b0));
  FDRE \max_22_reg_447_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_22_fu_289_p3[2]),
        .Q(max_22_reg_447[2]),
        .R(1'b0));
  FDRE \max_22_reg_447_reg[30] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_22_fu_289_p3[30]),
        .Q(max_22_reg_447[30]),
        .R(1'b0));
  FDRE \max_22_reg_447_reg[31] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_22_fu_289_p3[31]),
        .Q(max_22_reg_447[31]),
        .R(1'b0));
  FDRE \max_22_reg_447_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_22_fu_289_p3[3]),
        .Q(max_22_reg_447[3]),
        .R(1'b0));
  FDRE \max_22_reg_447_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_22_fu_289_p3[4]),
        .Q(max_22_reg_447[4]),
        .R(1'b0));
  FDRE \max_22_reg_447_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_22_fu_289_p3[5]),
        .Q(max_22_reg_447[5]),
        .R(1'b0));
  FDRE \max_22_reg_447_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_22_fu_289_p3[6]),
        .Q(max_22_reg_447[6]),
        .R(1'b0));
  FDRE \max_22_reg_447_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_22_fu_289_p3[7]),
        .Q(max_22_reg_447[7]),
        .R(1'b0));
  FDRE \max_22_reg_447_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_22_fu_289_p3[8]),
        .Q(max_22_reg_447[8]),
        .R(1'b0));
  FDRE \max_22_reg_447_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_22_fu_289_p3[9]),
        .Q(max_22_reg_447[9]),
        .R(1'b0));
  FDRE \max_23_reg_440_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_9_fu_62[0]),
        .Q(max_23_reg_440[0]),
        .R(1'b0));
  FDRE \max_23_reg_440_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_9_fu_62[10]),
        .Q(max_23_reg_440[10]),
        .R(1'b0));
  FDRE \max_23_reg_440_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_9_fu_62[11]),
        .Q(max_23_reg_440[11]),
        .R(1'b0));
  FDRE \max_23_reg_440_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_9_fu_62[12]),
        .Q(max_23_reg_440[12]),
        .R(1'b0));
  FDRE \max_23_reg_440_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_9_fu_62[13]),
        .Q(max_23_reg_440[13]),
        .R(1'b0));
  FDRE \max_23_reg_440_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_9_fu_62[14]),
        .Q(max_23_reg_440[14]),
        .R(1'b0));
  FDRE \max_23_reg_440_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_9_fu_62[15]),
        .Q(max_23_reg_440[15]),
        .R(1'b0));
  FDRE \max_23_reg_440_reg[16] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_9_fu_62[16]),
        .Q(max_23_reg_440[16]),
        .R(1'b0));
  FDRE \max_23_reg_440_reg[17] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_9_fu_62[17]),
        .Q(max_23_reg_440[17]),
        .R(1'b0));
  FDRE \max_23_reg_440_reg[18] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_9_fu_62[18]),
        .Q(max_23_reg_440[18]),
        .R(1'b0));
  FDRE \max_23_reg_440_reg[19] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_9_fu_62[19]),
        .Q(max_23_reg_440[19]),
        .R(1'b0));
  FDRE \max_23_reg_440_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_9_fu_62[1]),
        .Q(max_23_reg_440[1]),
        .R(1'b0));
  FDRE \max_23_reg_440_reg[20] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_9_fu_62[20]),
        .Q(max_23_reg_440[20]),
        .R(1'b0));
  FDRE \max_23_reg_440_reg[21] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_9_fu_62[21]),
        .Q(max_23_reg_440[21]),
        .R(1'b0));
  FDRE \max_23_reg_440_reg[22] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_9_fu_62[22]),
        .Q(max_23_reg_440[22]),
        .R(1'b0));
  FDRE \max_23_reg_440_reg[23] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_9_fu_62[23]),
        .Q(max_23_reg_440[23]),
        .R(1'b0));
  FDRE \max_23_reg_440_reg[24] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_9_fu_62[24]),
        .Q(max_23_reg_440[24]),
        .R(1'b0));
  FDRE \max_23_reg_440_reg[25] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_9_fu_62[25]),
        .Q(max_23_reg_440[25]),
        .R(1'b0));
  FDRE \max_23_reg_440_reg[26] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_9_fu_62[26]),
        .Q(max_23_reg_440[26]),
        .R(1'b0));
  FDRE \max_23_reg_440_reg[27] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_9_fu_62[27]),
        .Q(max_23_reg_440[27]),
        .R(1'b0));
  FDRE \max_23_reg_440_reg[28] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_9_fu_62[28]),
        .Q(max_23_reg_440[28]),
        .R(1'b0));
  FDRE \max_23_reg_440_reg[29] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_9_fu_62[29]),
        .Q(max_23_reg_440[29]),
        .R(1'b0));
  FDRE \max_23_reg_440_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_9_fu_62[2]),
        .Q(max_23_reg_440[2]),
        .R(1'b0));
  FDRE \max_23_reg_440_reg[30] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_9_fu_62[30]),
        .Q(max_23_reg_440[30]),
        .R(1'b0));
  FDRE \max_23_reg_440_reg[31] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_9_fu_62[31]),
        .Q(max_23_reg_440[31]),
        .R(1'b0));
  FDRE \max_23_reg_440_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_9_fu_62[3]),
        .Q(max_23_reg_440[3]),
        .R(1'b0));
  FDRE \max_23_reg_440_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_9_fu_62[4]),
        .Q(max_23_reg_440[4]),
        .R(1'b0));
  FDRE \max_23_reg_440_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_9_fu_62[5]),
        .Q(max_23_reg_440[5]),
        .R(1'b0));
  FDRE \max_23_reg_440_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_9_fu_62[6]),
        .Q(max_23_reg_440[6]),
        .R(1'b0));
  FDRE \max_23_reg_440_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_9_fu_62[7]),
        .Q(max_23_reg_440[7]),
        .R(1'b0));
  FDRE \max_23_reg_440_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_9_fu_62[8]),
        .Q(max_23_reg_440[8]),
        .R(1'b0));
  FDRE \max_23_reg_440_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_9_fu_62[9]),
        .Q(max_23_reg_440[9]),
        .R(1'b0));
  FDRE \max_25_reg_453_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_11_fu_58[0]),
        .Q(max_25_reg_453[0]),
        .R(1'b0));
  FDRE \max_25_reg_453_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_11_fu_58[10]),
        .Q(max_25_reg_453[10]),
        .R(1'b0));
  FDRE \max_25_reg_453_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_11_fu_58[11]),
        .Q(max_25_reg_453[11]),
        .R(1'b0));
  FDRE \max_25_reg_453_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_11_fu_58[12]),
        .Q(max_25_reg_453[12]),
        .R(1'b0));
  FDRE \max_25_reg_453_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_11_fu_58[13]),
        .Q(max_25_reg_453[13]),
        .R(1'b0));
  FDRE \max_25_reg_453_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_11_fu_58[14]),
        .Q(max_25_reg_453[14]),
        .R(1'b0));
  FDRE \max_25_reg_453_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_11_fu_58[15]),
        .Q(max_25_reg_453[15]),
        .R(1'b0));
  FDRE \max_25_reg_453_reg[16] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_11_fu_58[16]),
        .Q(max_25_reg_453[16]),
        .R(1'b0));
  FDRE \max_25_reg_453_reg[17] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_11_fu_58[17]),
        .Q(max_25_reg_453[17]),
        .R(1'b0));
  FDRE \max_25_reg_453_reg[18] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_11_fu_58[18]),
        .Q(max_25_reg_453[18]),
        .R(1'b0));
  FDRE \max_25_reg_453_reg[19] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_11_fu_58[19]),
        .Q(max_25_reg_453[19]),
        .R(1'b0));
  FDRE \max_25_reg_453_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_11_fu_58[1]),
        .Q(max_25_reg_453[1]),
        .R(1'b0));
  FDRE \max_25_reg_453_reg[20] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_11_fu_58[20]),
        .Q(max_25_reg_453[20]),
        .R(1'b0));
  FDRE \max_25_reg_453_reg[21] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_11_fu_58[21]),
        .Q(max_25_reg_453[21]),
        .R(1'b0));
  FDRE \max_25_reg_453_reg[22] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_11_fu_58[22]),
        .Q(max_25_reg_453[22]),
        .R(1'b0));
  FDRE \max_25_reg_453_reg[23] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_11_fu_58[23]),
        .Q(max_25_reg_453[23]),
        .R(1'b0));
  FDRE \max_25_reg_453_reg[24] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_11_fu_58[24]),
        .Q(max_25_reg_453[24]),
        .R(1'b0));
  FDRE \max_25_reg_453_reg[25] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_11_fu_58[25]),
        .Q(max_25_reg_453[25]),
        .R(1'b0));
  FDRE \max_25_reg_453_reg[26] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_11_fu_58[26]),
        .Q(max_25_reg_453[26]),
        .R(1'b0));
  FDRE \max_25_reg_453_reg[27] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_11_fu_58[27]),
        .Q(max_25_reg_453[27]),
        .R(1'b0));
  FDRE \max_25_reg_453_reg[28] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_11_fu_58[28]),
        .Q(max_25_reg_453[28]),
        .R(1'b0));
  FDRE \max_25_reg_453_reg[29] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_11_fu_58[29]),
        .Q(max_25_reg_453[29]),
        .R(1'b0));
  FDRE \max_25_reg_453_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_11_fu_58[2]),
        .Q(max_25_reg_453[2]),
        .R(1'b0));
  FDRE \max_25_reg_453_reg[30] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_11_fu_58[30]),
        .Q(max_25_reg_453[30]),
        .R(1'b0));
  FDRE \max_25_reg_453_reg[31] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_11_fu_58[31]),
        .Q(max_25_reg_453[31]),
        .R(1'b0));
  FDRE \max_25_reg_453_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_11_fu_58[3]),
        .Q(max_25_reg_453[3]),
        .R(1'b0));
  FDRE \max_25_reg_453_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_11_fu_58[4]),
        .Q(max_25_reg_453[4]),
        .R(1'b0));
  FDRE \max_25_reg_453_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_11_fu_58[5]),
        .Q(max_25_reg_453[5]),
        .R(1'b0));
  FDRE \max_25_reg_453_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_11_fu_58[6]),
        .Q(max_25_reg_453[6]),
        .R(1'b0));
  FDRE \max_25_reg_453_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_11_fu_58[7]),
        .Q(max_25_reg_453[7]),
        .R(1'b0));
  FDRE \max_25_reg_453_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_11_fu_58[8]),
        .Q(max_25_reg_453[8]),
        .R(1'b0));
  FDRE \max_25_reg_453_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_11_fu_58[9]),
        .Q(max_25_reg_453[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_26_reg_458[0]_i_1 
       (.I0(max_23_reg_440[0]),
        .I1(max_11_fu_58[0]),
        .I2(icmp_ln31_5_fu_319_p2_carry__2_n_0),
        .I3(max_22_reg_447[0]),
        .I4(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .O(max_26_fu_325_p3[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_26_reg_458[10]_i_1 
       (.I0(max_23_reg_440[10]),
        .I1(max_11_fu_58[10]),
        .I2(icmp_ln31_5_fu_319_p2_carry__2_n_0),
        .I3(max_22_reg_447[10]),
        .I4(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .O(max_26_fu_325_p3[10]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_26_reg_458[11]_i_1 
       (.I0(max_23_reg_440[11]),
        .I1(max_11_fu_58[11]),
        .I2(icmp_ln31_5_fu_319_p2_carry__2_n_0),
        .I3(max_22_reg_447[11]),
        .I4(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .O(max_26_fu_325_p3[11]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_26_reg_458[12]_i_1 
       (.I0(max_23_reg_440[12]),
        .I1(max_11_fu_58[12]),
        .I2(icmp_ln31_5_fu_319_p2_carry__2_n_0),
        .I3(max_22_reg_447[12]),
        .I4(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .O(max_26_fu_325_p3[12]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_26_reg_458[13]_i_1 
       (.I0(max_23_reg_440[13]),
        .I1(max_11_fu_58[13]),
        .I2(icmp_ln31_5_fu_319_p2_carry__2_n_0),
        .I3(max_22_reg_447[13]),
        .I4(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .O(max_26_fu_325_p3[13]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_26_reg_458[14]_i_1 
       (.I0(max_23_reg_440[14]),
        .I1(max_11_fu_58[14]),
        .I2(icmp_ln31_5_fu_319_p2_carry__2_n_0),
        .I3(max_22_reg_447[14]),
        .I4(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .O(max_26_fu_325_p3[14]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_26_reg_458[15]_i_1 
       (.I0(max_23_reg_440[15]),
        .I1(max_11_fu_58[15]),
        .I2(icmp_ln31_5_fu_319_p2_carry__2_n_0),
        .I3(max_22_reg_447[15]),
        .I4(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .O(max_26_fu_325_p3[15]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_26_reg_458[16]_i_1 
       (.I0(max_23_reg_440[16]),
        .I1(max_11_fu_58[16]),
        .I2(icmp_ln31_5_fu_319_p2_carry__2_n_0),
        .I3(max_22_reg_447[16]),
        .I4(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .O(max_26_fu_325_p3[16]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_26_reg_458[17]_i_1 
       (.I0(max_23_reg_440[17]),
        .I1(max_11_fu_58[17]),
        .I2(icmp_ln31_5_fu_319_p2_carry__2_n_0),
        .I3(max_22_reg_447[17]),
        .I4(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .O(max_26_fu_325_p3[17]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_26_reg_458[18]_i_1 
       (.I0(max_23_reg_440[18]),
        .I1(max_11_fu_58[18]),
        .I2(icmp_ln31_5_fu_319_p2_carry__2_n_0),
        .I3(max_22_reg_447[18]),
        .I4(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .O(max_26_fu_325_p3[18]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_26_reg_458[19]_i_1 
       (.I0(max_23_reg_440[19]),
        .I1(max_11_fu_58[19]),
        .I2(icmp_ln31_5_fu_319_p2_carry__2_n_0),
        .I3(max_22_reg_447[19]),
        .I4(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .O(max_26_fu_325_p3[19]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_26_reg_458[1]_i_1 
       (.I0(max_23_reg_440[1]),
        .I1(max_11_fu_58[1]),
        .I2(icmp_ln31_5_fu_319_p2_carry__2_n_0),
        .I3(max_22_reg_447[1]),
        .I4(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .O(max_26_fu_325_p3[1]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_26_reg_458[20]_i_1 
       (.I0(max_23_reg_440[20]),
        .I1(max_11_fu_58[20]),
        .I2(icmp_ln31_5_fu_319_p2_carry__2_n_0),
        .I3(max_22_reg_447[20]),
        .I4(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .O(max_26_fu_325_p3[20]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_26_reg_458[21]_i_1 
       (.I0(max_23_reg_440[21]),
        .I1(max_11_fu_58[21]),
        .I2(icmp_ln31_5_fu_319_p2_carry__2_n_0),
        .I3(max_22_reg_447[21]),
        .I4(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .O(max_26_fu_325_p3[21]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_26_reg_458[22]_i_1 
       (.I0(max_23_reg_440[22]),
        .I1(max_11_fu_58[22]),
        .I2(icmp_ln31_5_fu_319_p2_carry__2_n_0),
        .I3(max_22_reg_447[22]),
        .I4(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .O(max_26_fu_325_p3[22]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_26_reg_458[23]_i_1 
       (.I0(max_23_reg_440[23]),
        .I1(max_11_fu_58[23]),
        .I2(icmp_ln31_5_fu_319_p2_carry__2_n_0),
        .I3(max_22_reg_447[23]),
        .I4(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .O(max_26_fu_325_p3[23]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_26_reg_458[24]_i_1 
       (.I0(max_23_reg_440[24]),
        .I1(max_11_fu_58[24]),
        .I2(icmp_ln31_5_fu_319_p2_carry__2_n_0),
        .I3(max_22_reg_447[24]),
        .I4(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .O(max_26_fu_325_p3[24]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_26_reg_458[25]_i_1 
       (.I0(max_23_reg_440[25]),
        .I1(max_11_fu_58[25]),
        .I2(icmp_ln31_5_fu_319_p2_carry__2_n_0),
        .I3(max_22_reg_447[25]),
        .I4(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .O(max_26_fu_325_p3[25]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_26_reg_458[26]_i_1 
       (.I0(max_23_reg_440[26]),
        .I1(max_11_fu_58[26]),
        .I2(icmp_ln31_5_fu_319_p2_carry__2_n_0),
        .I3(max_22_reg_447[26]),
        .I4(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .O(max_26_fu_325_p3[26]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_26_reg_458[27]_i_1 
       (.I0(max_23_reg_440[27]),
        .I1(max_11_fu_58[27]),
        .I2(icmp_ln31_5_fu_319_p2_carry__2_n_0),
        .I3(max_22_reg_447[27]),
        .I4(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .O(max_26_fu_325_p3[27]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_26_reg_458[28]_i_1 
       (.I0(max_23_reg_440[28]),
        .I1(max_11_fu_58[28]),
        .I2(icmp_ln31_5_fu_319_p2_carry__2_n_0),
        .I3(max_22_reg_447[28]),
        .I4(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .O(max_26_fu_325_p3[28]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_26_reg_458[29]_i_1 
       (.I0(max_23_reg_440[29]),
        .I1(max_11_fu_58[29]),
        .I2(icmp_ln31_5_fu_319_p2_carry__2_n_0),
        .I3(max_22_reg_447[29]),
        .I4(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .O(max_26_fu_325_p3[29]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_26_reg_458[2]_i_1 
       (.I0(max_23_reg_440[2]),
        .I1(max_11_fu_58[2]),
        .I2(icmp_ln31_5_fu_319_p2_carry__2_n_0),
        .I3(max_22_reg_447[2]),
        .I4(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .O(max_26_fu_325_p3[2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_26_reg_458[30]_i_1 
       (.I0(max_23_reg_440[30]),
        .I1(max_11_fu_58[30]),
        .I2(icmp_ln31_5_fu_319_p2_carry__2_n_0),
        .I3(max_22_reg_447[30]),
        .I4(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .O(max_26_fu_325_p3[30]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_26_reg_458[31]_i_1 
       (.I0(max_23_reg_440[31]),
        .I1(max_11_fu_58[31]),
        .I2(icmp_ln31_5_fu_319_p2_carry__2_n_0),
        .I3(max_22_reg_447[31]),
        .I4(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .O(max_26_fu_325_p3[31]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_26_reg_458[3]_i_1 
       (.I0(max_23_reg_440[3]),
        .I1(max_11_fu_58[3]),
        .I2(icmp_ln31_5_fu_319_p2_carry__2_n_0),
        .I3(max_22_reg_447[3]),
        .I4(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .O(max_26_fu_325_p3[3]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_26_reg_458[4]_i_1 
       (.I0(max_23_reg_440[4]),
        .I1(max_11_fu_58[4]),
        .I2(icmp_ln31_5_fu_319_p2_carry__2_n_0),
        .I3(max_22_reg_447[4]),
        .I4(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .O(max_26_fu_325_p3[4]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_26_reg_458[5]_i_1 
       (.I0(max_23_reg_440[5]),
        .I1(max_11_fu_58[5]),
        .I2(icmp_ln31_5_fu_319_p2_carry__2_n_0),
        .I3(max_22_reg_447[5]),
        .I4(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .O(max_26_fu_325_p3[5]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_26_reg_458[6]_i_1 
       (.I0(max_23_reg_440[6]),
        .I1(max_11_fu_58[6]),
        .I2(icmp_ln31_5_fu_319_p2_carry__2_n_0),
        .I3(max_22_reg_447[6]),
        .I4(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .O(max_26_fu_325_p3[6]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_26_reg_458[7]_i_1 
       (.I0(max_23_reg_440[7]),
        .I1(max_11_fu_58[7]),
        .I2(icmp_ln31_5_fu_319_p2_carry__2_n_0),
        .I3(max_22_reg_447[7]),
        .I4(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .O(max_26_fu_325_p3[7]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_26_reg_458[8]_i_1 
       (.I0(max_23_reg_440[8]),
        .I1(max_11_fu_58[8]),
        .I2(icmp_ln31_5_fu_319_p2_carry__2_n_0),
        .I3(max_22_reg_447[8]),
        .I4(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .O(max_26_fu_325_p3[8]));
  LUT5 #(
    .INIT(32'hCACACFC0)) 
    \max_26_reg_458[9]_i_1 
       (.I0(max_23_reg_440[9]),
        .I1(max_11_fu_58[9]),
        .I2(icmp_ln31_5_fu_319_p2_carry__2_n_0),
        .I3(max_22_reg_447[9]),
        .I4(icmp_ln31_4_fu_309_p2_carry__2_n_0),
        .O(max_26_fu_325_p3[9]));
  FDRE \max_26_reg_458_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_26_fu_325_p3[0]),
        .Q(max_26_reg_458[0]),
        .R(1'b0));
  FDRE \max_26_reg_458_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_26_fu_325_p3[10]),
        .Q(max_26_reg_458[10]),
        .R(1'b0));
  FDRE \max_26_reg_458_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_26_fu_325_p3[11]),
        .Q(max_26_reg_458[11]),
        .R(1'b0));
  FDRE \max_26_reg_458_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_26_fu_325_p3[12]),
        .Q(max_26_reg_458[12]),
        .R(1'b0));
  FDRE \max_26_reg_458_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_26_fu_325_p3[13]),
        .Q(max_26_reg_458[13]),
        .R(1'b0));
  FDRE \max_26_reg_458_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_26_fu_325_p3[14]),
        .Q(max_26_reg_458[14]),
        .R(1'b0));
  FDRE \max_26_reg_458_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_26_fu_325_p3[15]),
        .Q(max_26_reg_458[15]),
        .R(1'b0));
  FDRE \max_26_reg_458_reg[16] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_26_fu_325_p3[16]),
        .Q(max_26_reg_458[16]),
        .R(1'b0));
  FDRE \max_26_reg_458_reg[17] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_26_fu_325_p3[17]),
        .Q(max_26_reg_458[17]),
        .R(1'b0));
  FDRE \max_26_reg_458_reg[18] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_26_fu_325_p3[18]),
        .Q(max_26_reg_458[18]),
        .R(1'b0));
  FDRE \max_26_reg_458_reg[19] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_26_fu_325_p3[19]),
        .Q(max_26_reg_458[19]),
        .R(1'b0));
  FDRE \max_26_reg_458_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_26_fu_325_p3[1]),
        .Q(max_26_reg_458[1]),
        .R(1'b0));
  FDRE \max_26_reg_458_reg[20] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_26_fu_325_p3[20]),
        .Q(max_26_reg_458[20]),
        .R(1'b0));
  FDRE \max_26_reg_458_reg[21] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_26_fu_325_p3[21]),
        .Q(max_26_reg_458[21]),
        .R(1'b0));
  FDRE \max_26_reg_458_reg[22] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_26_fu_325_p3[22]),
        .Q(max_26_reg_458[22]),
        .R(1'b0));
  FDRE \max_26_reg_458_reg[23] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_26_fu_325_p3[23]),
        .Q(max_26_reg_458[23]),
        .R(1'b0));
  FDRE \max_26_reg_458_reg[24] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_26_fu_325_p3[24]),
        .Q(max_26_reg_458[24]),
        .R(1'b0));
  FDRE \max_26_reg_458_reg[25] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_26_fu_325_p3[25]),
        .Q(max_26_reg_458[25]),
        .R(1'b0));
  FDRE \max_26_reg_458_reg[26] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_26_fu_325_p3[26]),
        .Q(max_26_reg_458[26]),
        .R(1'b0));
  FDRE \max_26_reg_458_reg[27] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_26_fu_325_p3[27]),
        .Q(max_26_reg_458[27]),
        .R(1'b0));
  FDRE \max_26_reg_458_reg[28] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_26_fu_325_p3[28]),
        .Q(max_26_reg_458[28]),
        .R(1'b0));
  FDRE \max_26_reg_458_reg[29] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_26_fu_325_p3[29]),
        .Q(max_26_reg_458[29]),
        .R(1'b0));
  FDRE \max_26_reg_458_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_26_fu_325_p3[2]),
        .Q(max_26_reg_458[2]),
        .R(1'b0));
  FDRE \max_26_reg_458_reg[30] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_26_fu_325_p3[30]),
        .Q(max_26_reg_458[30]),
        .R(1'b0));
  FDRE \max_26_reg_458_reg[31] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_26_fu_325_p3[31]),
        .Q(max_26_reg_458[31]),
        .R(1'b0));
  FDRE \max_26_reg_458_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_26_fu_325_p3[3]),
        .Q(max_26_reg_458[3]),
        .R(1'b0));
  FDRE \max_26_reg_458_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_26_fu_325_p3[4]),
        .Q(max_26_reg_458[4]),
        .R(1'b0));
  FDRE \max_26_reg_458_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_26_fu_325_p3[5]),
        .Q(max_26_reg_458[5]),
        .R(1'b0));
  FDRE \max_26_reg_458_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_26_fu_325_p3[6]),
        .Q(max_26_reg_458[6]),
        .R(1'b0));
  FDRE \max_26_reg_458_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_26_fu_325_p3[7]),
        .Q(max_26_reg_458[7]),
        .R(1'b0));
  FDRE \max_26_reg_458_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_26_fu_325_p3[8]),
        .Q(max_26_reg_458[8]),
        .R(1'b0));
  FDRE \max_26_reg_458_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_26_fu_325_p3[9]),
        .Q(max_26_reg_458[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFEAFFFFC0EAC0C0)) 
    \max_3_fu_74[31]_i_1 
       (.I0(max_1_fu_78[31]),
        .I1(ap_loop_init_int),
        .I2(ap_enable_reg_pp0_iter1_reg_0),
        .I3(icmp_ln17_reg_413),
        .I4(ap_enable_reg_pp0_iter1),
        .I5(max_3_fu_74[31]),
        .O(\max_3_fu_74[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_3_fu_74_reg[0] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_1_fu_78[0]),
        .Q(max_3_fu_74[0]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_3_fu_74_reg[10] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_1_fu_78[10]),
        .Q(max_3_fu_74[10]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_3_fu_74_reg[11] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_1_fu_78[11]),
        .Q(max_3_fu_74[11]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_3_fu_74_reg[12] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_1_fu_78[12]),
        .Q(max_3_fu_74[12]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_3_fu_74_reg[13] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_1_fu_78[13]),
        .Q(max_3_fu_74[13]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_3_fu_74_reg[14] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_1_fu_78[14]),
        .Q(max_3_fu_74[14]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_3_fu_74_reg[15] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_1_fu_78[15]),
        .Q(max_3_fu_74[15]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_3_fu_74_reg[16] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_1_fu_78[16]),
        .Q(max_3_fu_74[16]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_3_fu_74_reg[17] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_1_fu_78[17]),
        .Q(max_3_fu_74[17]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_3_fu_74_reg[18] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_1_fu_78[18]),
        .Q(max_3_fu_74[18]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_3_fu_74_reg[19] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_1_fu_78[19]),
        .Q(max_3_fu_74[19]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_3_fu_74_reg[1] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_1_fu_78[1]),
        .Q(max_3_fu_74[1]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_3_fu_74_reg[20] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_1_fu_78[20]),
        .Q(max_3_fu_74[20]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_3_fu_74_reg[21] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_1_fu_78[21]),
        .Q(max_3_fu_74[21]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_3_fu_74_reg[22] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_1_fu_78[22]),
        .Q(max_3_fu_74[22]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_3_fu_74_reg[23] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_1_fu_78[23]),
        .Q(max_3_fu_74[23]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_3_fu_74_reg[24] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_1_fu_78[24]),
        .Q(max_3_fu_74[24]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_3_fu_74_reg[25] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_1_fu_78[25]),
        .Q(max_3_fu_74[25]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_3_fu_74_reg[26] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_1_fu_78[26]),
        .Q(max_3_fu_74[26]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_3_fu_74_reg[27] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_1_fu_78[27]),
        .Q(max_3_fu_74[27]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_3_fu_74_reg[28] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_1_fu_78[28]),
        .Q(max_3_fu_74[28]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_3_fu_74_reg[29] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_1_fu_78[29]),
        .Q(max_3_fu_74[29]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_3_fu_74_reg[2] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_1_fu_78[2]),
        .Q(max_3_fu_74[2]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_3_fu_74_reg[30] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_1_fu_78[30]),
        .Q(max_3_fu_74[30]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_3_fu_74_reg[31] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\max_3_fu_74[31]_i_1_n_0 ),
        .Q(max_3_fu_74[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \max_3_fu_74_reg[3] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_1_fu_78[3]),
        .Q(max_3_fu_74[3]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_3_fu_74_reg[4] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_1_fu_78[4]),
        .Q(max_3_fu_74[4]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_3_fu_74_reg[5] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_1_fu_78[5]),
        .Q(max_3_fu_74[5]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_3_fu_74_reg[6] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_1_fu_78[6]),
        .Q(max_3_fu_74[6]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_3_fu_74_reg[7] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_1_fu_78[7]),
        .Q(max_3_fu_74[7]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_3_fu_74_reg[8] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_1_fu_78[8]),
        .Q(max_3_fu_74[8]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_3_fu_74_reg[9] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_1_fu_78[9]),
        .Q(max_3_fu_74[9]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAFFFFC0EAC0C0)) 
    \max_5_fu_70[31]_i_1 
       (.I0(max_3_fu_74[31]),
        .I1(ap_loop_init_int),
        .I2(ap_enable_reg_pp0_iter1_reg_0),
        .I3(icmp_ln17_reg_413),
        .I4(ap_enable_reg_pp0_iter1),
        .I5(max_5_fu_70[31]),
        .O(\max_5_fu_70[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_5_fu_70_reg[0] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_3_fu_74[0]),
        .Q(max_5_fu_70[0]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_5_fu_70_reg[10] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_3_fu_74[10]),
        .Q(max_5_fu_70[10]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_5_fu_70_reg[11] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_3_fu_74[11]),
        .Q(max_5_fu_70[11]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_5_fu_70_reg[12] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_3_fu_74[12]),
        .Q(max_5_fu_70[12]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_5_fu_70_reg[13] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_3_fu_74[13]),
        .Q(max_5_fu_70[13]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_5_fu_70_reg[14] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_3_fu_74[14]),
        .Q(max_5_fu_70[14]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_5_fu_70_reg[15] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_3_fu_74[15]),
        .Q(max_5_fu_70[15]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_5_fu_70_reg[16] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_3_fu_74[16]),
        .Q(max_5_fu_70[16]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_5_fu_70_reg[17] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_3_fu_74[17]),
        .Q(max_5_fu_70[17]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_5_fu_70_reg[18] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_3_fu_74[18]),
        .Q(max_5_fu_70[18]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_5_fu_70_reg[19] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_3_fu_74[19]),
        .Q(max_5_fu_70[19]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_5_fu_70_reg[1] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_3_fu_74[1]),
        .Q(max_5_fu_70[1]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_5_fu_70_reg[20] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_3_fu_74[20]),
        .Q(max_5_fu_70[20]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_5_fu_70_reg[21] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_3_fu_74[21]),
        .Q(max_5_fu_70[21]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_5_fu_70_reg[22] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_3_fu_74[22]),
        .Q(max_5_fu_70[22]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_5_fu_70_reg[23] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_3_fu_74[23]),
        .Q(max_5_fu_70[23]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_5_fu_70_reg[24] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_3_fu_74[24]),
        .Q(max_5_fu_70[24]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_5_fu_70_reg[25] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_3_fu_74[25]),
        .Q(max_5_fu_70[25]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_5_fu_70_reg[26] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_3_fu_74[26]),
        .Q(max_5_fu_70[26]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_5_fu_70_reg[27] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_3_fu_74[27]),
        .Q(max_5_fu_70[27]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_5_fu_70_reg[28] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_3_fu_74[28]),
        .Q(max_5_fu_70[28]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_5_fu_70_reg[29] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_3_fu_74[29]),
        .Q(max_5_fu_70[29]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_5_fu_70_reg[2] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_3_fu_74[2]),
        .Q(max_5_fu_70[2]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_5_fu_70_reg[30] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_3_fu_74[30]),
        .Q(max_5_fu_70[30]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_5_fu_70_reg[31] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\max_5_fu_70[31]_i_1_n_0 ),
        .Q(max_5_fu_70[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \max_5_fu_70_reg[3] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_3_fu_74[3]),
        .Q(max_5_fu_70[3]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_5_fu_70_reg[4] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_3_fu_74[4]),
        .Q(max_5_fu_70[4]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_5_fu_70_reg[5] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_3_fu_74[5]),
        .Q(max_5_fu_70[5]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_5_fu_70_reg[6] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_3_fu_74[6]),
        .Q(max_5_fu_70[6]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_5_fu_70_reg[7] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_3_fu_74[7]),
        .Q(max_5_fu_70[7]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_5_fu_70_reg[8] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_3_fu_74[8]),
        .Q(max_5_fu_70[8]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_5_fu_70_reg[9] 
       (.C(ap_clk),
        .CE(max_5_fu_70_1),
        .D(max_3_fu_74[9]),
        .Q(max_5_fu_70[9]),
        .R(\max_1_fu_78[30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \max_7_fu_66[30]_i_1 
       (.I0(ap_enable_reg_pp0_iter1_reg_0),
        .I1(ap_loop_init_int),
        .O(\max_7_fu_66[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAFFFFC0EAC0C0)) 
    \max_7_fu_66[31]_i_1 
       (.I0(max_19_reg_427[31]),
        .I1(ap_loop_init_int),
        .I2(ap_enable_reg_pp0_iter1_reg_0),
        .I3(icmp_ln17_reg_413_pp0_iter1_reg),
        .I4(ap_enable_reg_pp0_iter2),
        .I5(max_7_fu_66[31]),
        .O(\max_7_fu_66[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_7_fu_66_reg[0] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_19_reg_427[0]),
        .Q(max_7_fu_66[0]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_7_fu_66_reg[10] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_19_reg_427[10]),
        .Q(max_7_fu_66[10]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_7_fu_66_reg[11] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_19_reg_427[11]),
        .Q(max_7_fu_66[11]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_7_fu_66_reg[12] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_19_reg_427[12]),
        .Q(max_7_fu_66[12]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_7_fu_66_reg[13] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_19_reg_427[13]),
        .Q(max_7_fu_66[13]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_7_fu_66_reg[14] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_19_reg_427[14]),
        .Q(max_7_fu_66[14]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_7_fu_66_reg[15] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_19_reg_427[15]),
        .Q(max_7_fu_66[15]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_7_fu_66_reg[16] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_19_reg_427[16]),
        .Q(max_7_fu_66[16]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_7_fu_66_reg[17] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_19_reg_427[17]),
        .Q(max_7_fu_66[17]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_7_fu_66_reg[18] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_19_reg_427[18]),
        .Q(max_7_fu_66[18]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_7_fu_66_reg[19] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_19_reg_427[19]),
        .Q(max_7_fu_66[19]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_7_fu_66_reg[1] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_19_reg_427[1]),
        .Q(max_7_fu_66[1]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_7_fu_66_reg[20] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_19_reg_427[20]),
        .Q(max_7_fu_66[20]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_7_fu_66_reg[21] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_19_reg_427[21]),
        .Q(max_7_fu_66[21]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_7_fu_66_reg[22] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_19_reg_427[22]),
        .Q(max_7_fu_66[22]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_7_fu_66_reg[23] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_19_reg_427[23]),
        .Q(max_7_fu_66[23]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_7_fu_66_reg[24] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_19_reg_427[24]),
        .Q(max_7_fu_66[24]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_7_fu_66_reg[25] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_19_reg_427[25]),
        .Q(max_7_fu_66[25]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_7_fu_66_reg[26] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_19_reg_427[26]),
        .Q(max_7_fu_66[26]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_7_fu_66_reg[27] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_19_reg_427[27]),
        .Q(max_7_fu_66[27]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_7_fu_66_reg[28] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_19_reg_427[28]),
        .Q(max_7_fu_66[28]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_7_fu_66_reg[29] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_19_reg_427[29]),
        .Q(max_7_fu_66[29]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_7_fu_66_reg[2] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_19_reg_427[2]),
        .Q(max_7_fu_66[2]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_7_fu_66_reg[30] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_19_reg_427[30]),
        .Q(max_7_fu_66[30]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_7_fu_66_reg[31] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\max_7_fu_66[31]_i_1_n_0 ),
        .Q(max_7_fu_66[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \max_7_fu_66_reg[3] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_19_reg_427[3]),
        .Q(max_7_fu_66[3]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_7_fu_66_reg[4] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_19_reg_427[4]),
        .Q(max_7_fu_66[4]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_7_fu_66_reg[5] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_19_reg_427[5]),
        .Q(max_7_fu_66[5]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_7_fu_66_reg[6] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_19_reg_427[6]),
        .Q(max_7_fu_66[6]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_7_fu_66_reg[7] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_19_reg_427[7]),
        .Q(max_7_fu_66[7]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_7_fu_66_reg[8] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_19_reg_427[8]),
        .Q(max_7_fu_66[8]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_7_fu_66_reg[9] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_19_reg_427[9]),
        .Q(max_7_fu_66[9]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAFFFFC0EAC0C0)) 
    \max_9_fu_62[31]_i_1 
       (.I0(max_7_fu_66[31]),
        .I1(ap_loop_init_int),
        .I2(ap_enable_reg_pp0_iter1_reg_0),
        .I3(icmp_ln17_reg_413_pp0_iter1_reg),
        .I4(ap_enable_reg_pp0_iter2),
        .I5(max_9_fu_62[31]),
        .O(\max_9_fu_62[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_9_fu_62_reg[0] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_7_fu_66[0]),
        .Q(max_9_fu_62[0]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_9_fu_62_reg[10] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_7_fu_66[10]),
        .Q(max_9_fu_62[10]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_9_fu_62_reg[11] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_7_fu_66[11]),
        .Q(max_9_fu_62[11]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_9_fu_62_reg[12] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_7_fu_66[12]),
        .Q(max_9_fu_62[12]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_9_fu_62_reg[13] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_7_fu_66[13]),
        .Q(max_9_fu_62[13]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_9_fu_62_reg[14] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_7_fu_66[14]),
        .Q(max_9_fu_62[14]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_9_fu_62_reg[15] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_7_fu_66[15]),
        .Q(max_9_fu_62[15]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_9_fu_62_reg[16] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_7_fu_66[16]),
        .Q(max_9_fu_62[16]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_9_fu_62_reg[17] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_7_fu_66[17]),
        .Q(max_9_fu_62[17]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_9_fu_62_reg[18] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_7_fu_66[18]),
        .Q(max_9_fu_62[18]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_9_fu_62_reg[19] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_7_fu_66[19]),
        .Q(max_9_fu_62[19]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_9_fu_62_reg[1] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_7_fu_66[1]),
        .Q(max_9_fu_62[1]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_9_fu_62_reg[20] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_7_fu_66[20]),
        .Q(max_9_fu_62[20]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_9_fu_62_reg[21] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_7_fu_66[21]),
        .Q(max_9_fu_62[21]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_9_fu_62_reg[22] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_7_fu_66[22]),
        .Q(max_9_fu_62[22]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_9_fu_62_reg[23] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_7_fu_66[23]),
        .Q(max_9_fu_62[23]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_9_fu_62_reg[24] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_7_fu_66[24]),
        .Q(max_9_fu_62[24]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_9_fu_62_reg[25] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_7_fu_66[25]),
        .Q(max_9_fu_62[25]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_9_fu_62_reg[26] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_7_fu_66[26]),
        .Q(max_9_fu_62[26]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_9_fu_62_reg[27] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_7_fu_66[27]),
        .Q(max_9_fu_62[27]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_9_fu_62_reg[28] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_7_fu_66[28]),
        .Q(max_9_fu_62[28]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_9_fu_62_reg[29] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_7_fu_66[29]),
        .Q(max_9_fu_62[29]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_9_fu_62_reg[2] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_7_fu_66[2]),
        .Q(max_9_fu_62[2]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_9_fu_62_reg[30] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_7_fu_66[30]),
        .Q(max_9_fu_62[30]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_9_fu_62_reg[31] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\max_9_fu_62[31]_i_1_n_0 ),
        .Q(max_9_fu_62[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \max_9_fu_62_reg[3] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_7_fu_66[3]),
        .Q(max_9_fu_62[3]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_9_fu_62_reg[4] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_7_fu_66[4]),
        .Q(max_9_fu_62[4]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_9_fu_62_reg[5] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_7_fu_66[5]),
        .Q(max_9_fu_62[5]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_9_fu_62_reg[6] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_7_fu_66[6]),
        .Q(max_9_fu_62[6]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_9_fu_62_reg[7] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_7_fu_66[7]),
        .Q(max_9_fu_62[7]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_9_fu_62_reg[8] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_7_fu_66[8]),
        .Q(max_9_fu_62[8]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_9_fu_62_reg[9] 
       (.C(ap_clk),
        .CE(max_9_fu_62_0),
        .D(max_7_fu_66[9]),
        .Q(max_9_fu_62[9]),
        .R(\max_7_fu_66[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \n_fu_54[6]_i_3 
       (.I0(\n_fu_54_reg_n_0_[3] ),
        .I1(\n_fu_54_reg_n_0_[1] ),
        .I2(\n_fu_54_reg_n_0_[0] ),
        .I3(\n_fu_54_reg_n_0_[2] ),
        .I4(\n_fu_54_reg_n_0_[4] ),
        .O(\n_fu_54[6]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \n_fu_54_reg[0] 
       (.C(ap_clk),
        .CE(n_fu_540),
        .D(add_ln17_fu_199_p2[0]),
        .Q(\n_fu_54_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \n_fu_54_reg[1] 
       (.C(ap_clk),
        .CE(n_fu_540),
        .D(add_ln17_fu_199_p2[1]),
        .Q(\n_fu_54_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \n_fu_54_reg[2] 
       (.C(ap_clk),
        .CE(n_fu_540),
        .D(add_ln17_fu_199_p2[2]),
        .Q(\n_fu_54_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \n_fu_54_reg[3] 
       (.C(ap_clk),
        .CE(n_fu_540),
        .D(add_ln17_fu_199_p2[3]),
        .Q(\n_fu_54_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \n_fu_54_reg[4] 
       (.C(ap_clk),
        .CE(n_fu_540),
        .D(add_ln17_fu_199_p2[4]),
        .Q(\n_fu_54_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \n_fu_54_reg[5] 
       (.C(ap_clk),
        .CE(n_fu_540),
        .D(add_ln17_fu_199_p2[5]),
        .Q(\n_fu_54_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \n_fu_54_reg[6] 
       (.C(ap_clk),
        .CE(n_fu_540),
        .D(add_ln17_fu_199_p2[6]),
        .Q(\n_fu_54_reg_n_0_[6] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_d0[0]_INST_0 
       (.I0(max_13_fu_50[0]),
        .I1(max_26_reg_458[0]),
        .I2(icmp_ln31_6_fu_340_p2_carry__2_n_0),
        .O(out_data_d0[0]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_d0[10]_INST_0 
       (.I0(max_13_fu_50[10]),
        .I1(max_26_reg_458[10]),
        .I2(icmp_ln31_6_fu_340_p2_carry__2_n_0),
        .O(out_data_d0[10]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_d0[11]_INST_0 
       (.I0(max_13_fu_50[11]),
        .I1(max_26_reg_458[11]),
        .I2(icmp_ln31_6_fu_340_p2_carry__2_n_0),
        .O(out_data_d0[11]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_d0[12]_INST_0 
       (.I0(max_13_fu_50[12]),
        .I1(max_26_reg_458[12]),
        .I2(icmp_ln31_6_fu_340_p2_carry__2_n_0),
        .O(out_data_d0[12]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_d0[13]_INST_0 
       (.I0(max_13_fu_50[13]),
        .I1(max_26_reg_458[13]),
        .I2(icmp_ln31_6_fu_340_p2_carry__2_n_0),
        .O(out_data_d0[13]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_d0[14]_INST_0 
       (.I0(max_13_fu_50[14]),
        .I1(max_26_reg_458[14]),
        .I2(icmp_ln31_6_fu_340_p2_carry__2_n_0),
        .O(out_data_d0[14]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_d0[15]_INST_0 
       (.I0(max_13_fu_50[15]),
        .I1(max_26_reg_458[15]),
        .I2(icmp_ln31_6_fu_340_p2_carry__2_n_0),
        .O(out_data_d0[15]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_d0[16]_INST_0 
       (.I0(max_13_fu_50[16]),
        .I1(max_26_reg_458[16]),
        .I2(icmp_ln31_6_fu_340_p2_carry__2_n_0),
        .O(out_data_d0[16]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_d0[17]_INST_0 
       (.I0(max_13_fu_50[17]),
        .I1(max_26_reg_458[17]),
        .I2(icmp_ln31_6_fu_340_p2_carry__2_n_0),
        .O(out_data_d0[17]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_d0[18]_INST_0 
       (.I0(max_13_fu_50[18]),
        .I1(max_26_reg_458[18]),
        .I2(icmp_ln31_6_fu_340_p2_carry__2_n_0),
        .O(out_data_d0[18]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_d0[19]_INST_0 
       (.I0(max_13_fu_50[19]),
        .I1(max_26_reg_458[19]),
        .I2(icmp_ln31_6_fu_340_p2_carry__2_n_0),
        .O(out_data_d0[19]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_d0[1]_INST_0 
       (.I0(max_13_fu_50[1]),
        .I1(max_26_reg_458[1]),
        .I2(icmp_ln31_6_fu_340_p2_carry__2_n_0),
        .O(out_data_d0[1]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_d0[20]_INST_0 
       (.I0(max_13_fu_50[20]),
        .I1(max_26_reg_458[20]),
        .I2(icmp_ln31_6_fu_340_p2_carry__2_n_0),
        .O(out_data_d0[20]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_d0[21]_INST_0 
       (.I0(max_13_fu_50[21]),
        .I1(max_26_reg_458[21]),
        .I2(icmp_ln31_6_fu_340_p2_carry__2_n_0),
        .O(out_data_d0[21]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_d0[22]_INST_0 
       (.I0(max_13_fu_50[22]),
        .I1(max_26_reg_458[22]),
        .I2(icmp_ln31_6_fu_340_p2_carry__2_n_0),
        .O(out_data_d0[22]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_d0[23]_INST_0 
       (.I0(max_13_fu_50[23]),
        .I1(max_26_reg_458[23]),
        .I2(icmp_ln31_6_fu_340_p2_carry__2_n_0),
        .O(out_data_d0[23]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_d0[24]_INST_0 
       (.I0(max_13_fu_50[24]),
        .I1(max_26_reg_458[24]),
        .I2(icmp_ln31_6_fu_340_p2_carry__2_n_0),
        .O(out_data_d0[24]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_d0[25]_INST_0 
       (.I0(max_13_fu_50[25]),
        .I1(max_26_reg_458[25]),
        .I2(icmp_ln31_6_fu_340_p2_carry__2_n_0),
        .O(out_data_d0[25]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_d0[26]_INST_0 
       (.I0(max_13_fu_50[26]),
        .I1(max_26_reg_458[26]),
        .I2(icmp_ln31_6_fu_340_p2_carry__2_n_0),
        .O(out_data_d0[26]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_d0[27]_INST_0 
       (.I0(max_13_fu_50[27]),
        .I1(max_26_reg_458[27]),
        .I2(icmp_ln31_6_fu_340_p2_carry__2_n_0),
        .O(out_data_d0[27]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_d0[28]_INST_0 
       (.I0(max_13_fu_50[28]),
        .I1(max_26_reg_458[28]),
        .I2(icmp_ln31_6_fu_340_p2_carry__2_n_0),
        .O(out_data_d0[28]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_d0[29]_INST_0 
       (.I0(max_13_fu_50[29]),
        .I1(max_26_reg_458[29]),
        .I2(icmp_ln31_6_fu_340_p2_carry__2_n_0),
        .O(out_data_d0[29]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_d0[2]_INST_0 
       (.I0(max_13_fu_50[2]),
        .I1(max_26_reg_458[2]),
        .I2(icmp_ln31_6_fu_340_p2_carry__2_n_0),
        .O(out_data_d0[2]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_d0[30]_INST_0 
       (.I0(max_13_fu_50[30]),
        .I1(max_26_reg_458[30]),
        .I2(icmp_ln31_6_fu_340_p2_carry__2_n_0),
        .O(out_data_d0[30]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_d0[31]_INST_0 
       (.I0(max_13_fu_50[31]),
        .I1(max_26_reg_458[31]),
        .I2(icmp_ln31_6_fu_340_p2_carry__2_n_0),
        .O(out_data_d0[31]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_d0[3]_INST_0 
       (.I0(max_13_fu_50[3]),
        .I1(max_26_reg_458[3]),
        .I2(icmp_ln31_6_fu_340_p2_carry__2_n_0),
        .O(out_data_d0[3]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_d0[4]_INST_0 
       (.I0(max_13_fu_50[4]),
        .I1(max_26_reg_458[4]),
        .I2(icmp_ln31_6_fu_340_p2_carry__2_n_0),
        .O(out_data_d0[4]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_d0[5]_INST_0 
       (.I0(max_13_fu_50[5]),
        .I1(max_26_reg_458[5]),
        .I2(icmp_ln31_6_fu_340_p2_carry__2_n_0),
        .O(out_data_d0[5]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_d0[6]_INST_0 
       (.I0(max_13_fu_50[6]),
        .I1(max_26_reg_458[6]),
        .I2(icmp_ln31_6_fu_340_p2_carry__2_n_0),
        .O(out_data_d0[6]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_d0[7]_INST_0 
       (.I0(max_13_fu_50[7]),
        .I1(max_26_reg_458[7]),
        .I2(icmp_ln31_6_fu_340_p2_carry__2_n_0),
        .O(out_data_d0[7]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_d0[8]_INST_0 
       (.I0(max_13_fu_50[8]),
        .I1(max_26_reg_458[8]),
        .I2(icmp_ln31_6_fu_340_p2_carry__2_n_0),
        .O(out_data_d0[8]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_d0[9]_INST_0 
       (.I0(max_13_fu_50[9]),
        .I1(max_26_reg_458[9]),
        .I2(icmp_ln31_6_fu_340_p2_carry__2_n_0),
        .O(out_data_d0[9]));
  (* srl_bus_name = "inst/\\grp_moving_max_Pipeline_MAIN_LOOP_fu_44/zext_ln17_reg_417_pp0_iter2_reg_reg " *) 
  (* srl_name = "inst/\\grp_moving_max_Pipeline_MAIN_LOOP_fu_44/zext_ln17_reg_417_pp0_iter2_reg_reg[0]_srl2 " *) 
  SRL16E \zext_ln17_reg_417_pp0_iter2_reg_reg[0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(zext_ln17_reg_417_reg[0]),
        .Q(\zext_ln17_reg_417_pp0_iter2_reg_reg[0]_srl2_n_0 ));
  (* srl_bus_name = "inst/\\grp_moving_max_Pipeline_MAIN_LOOP_fu_44/zext_ln17_reg_417_pp0_iter2_reg_reg " *) 
  (* srl_name = "inst/\\grp_moving_max_Pipeline_MAIN_LOOP_fu_44/zext_ln17_reg_417_pp0_iter2_reg_reg[1]_srl3 " *) 
  SRL16E \zext_ln17_reg_417_pp0_iter2_reg_reg[1]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(in_data_address0[1]),
        .Q(\zext_ln17_reg_417_pp0_iter2_reg_reg[1]_srl3_n_0 ));
  (* srl_bus_name = "inst/\\grp_moving_max_Pipeline_MAIN_LOOP_fu_44/zext_ln17_reg_417_pp0_iter2_reg_reg " *) 
  (* srl_name = "inst/\\grp_moving_max_Pipeline_MAIN_LOOP_fu_44/zext_ln17_reg_417_pp0_iter2_reg_reg[2]_srl2 " *) 
  SRL16E \zext_ln17_reg_417_pp0_iter2_reg_reg[2]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(zext_ln17_reg_417_reg[2]),
        .Q(\zext_ln17_reg_417_pp0_iter2_reg_reg[2]_srl2_n_0 ));
  (* srl_bus_name = "inst/\\grp_moving_max_Pipeline_MAIN_LOOP_fu_44/zext_ln17_reg_417_pp0_iter2_reg_reg " *) 
  (* srl_name = "inst/\\grp_moving_max_Pipeline_MAIN_LOOP_fu_44/zext_ln17_reg_417_pp0_iter2_reg_reg[3]_srl2 " *) 
  SRL16E \zext_ln17_reg_417_pp0_iter2_reg_reg[3]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(zext_ln17_reg_417_reg[3]),
        .Q(\zext_ln17_reg_417_pp0_iter2_reg_reg[3]_srl2_n_0 ));
  (* srl_bus_name = "inst/\\grp_moving_max_Pipeline_MAIN_LOOP_fu_44/zext_ln17_reg_417_pp0_iter2_reg_reg " *) 
  (* srl_name = "inst/\\grp_moving_max_Pipeline_MAIN_LOOP_fu_44/zext_ln17_reg_417_pp0_iter2_reg_reg[4]_srl2 " *) 
  SRL16E \zext_ln17_reg_417_pp0_iter2_reg_reg[4]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(zext_ln17_reg_417_reg[4]),
        .Q(\zext_ln17_reg_417_pp0_iter2_reg_reg[4]_srl2_n_0 ));
  (* srl_bus_name = "inst/\\grp_moving_max_Pipeline_MAIN_LOOP_fu_44/zext_ln17_reg_417_pp0_iter2_reg_reg " *) 
  (* srl_name = "inst/\\grp_moving_max_Pipeline_MAIN_LOOP_fu_44/zext_ln17_reg_417_pp0_iter2_reg_reg[5]_srl2 " *) 
  SRL16E \zext_ln17_reg_417_pp0_iter2_reg_reg[5]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(zext_ln17_reg_417_reg[5]),
        .Q(\zext_ln17_reg_417_pp0_iter2_reg_reg[5]_srl2_n_0 ));
  FDRE \zext_ln17_reg_417_pp0_iter3_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\zext_ln17_reg_417_pp0_iter2_reg_reg[0]_srl2_n_0 ),
        .Q(out_data_address0[0]),
        .R(1'b0));
  FDRE \zext_ln17_reg_417_pp0_iter3_reg_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\zext_ln17_reg_417_pp0_iter2_reg_reg[1]_srl3_n_0 ),
        .Q(out_data_address0[1]),
        .R(1'b0));
  FDRE \zext_ln17_reg_417_pp0_iter3_reg_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\zext_ln17_reg_417_pp0_iter2_reg_reg[2]_srl2_n_0 ),
        .Q(out_data_address0[2]),
        .R(1'b0));
  FDRE \zext_ln17_reg_417_pp0_iter3_reg_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\zext_ln17_reg_417_pp0_iter2_reg_reg[3]_srl2_n_0 ),
        .Q(out_data_address0[3]),
        .R(1'b0));
  FDRE \zext_ln17_reg_417_pp0_iter3_reg_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\zext_ln17_reg_417_pp0_iter2_reg_reg[4]_srl2_n_0 ),
        .Q(out_data_address0[4]),
        .R(1'b0));
  FDRE \zext_ln17_reg_417_pp0_iter3_reg_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\zext_ln17_reg_417_pp0_iter2_reg_reg[5]_srl2_n_0 ),
        .Q(out_data_address0[5]),
        .R(1'b0));
  FDRE \zext_ln17_reg_417_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\n_fu_54_reg_n_0_[0] ),
        .Q(zext_ln17_reg_417_reg[0]),
        .R(flow_control_loop_pipe_sequential_init_U_n_8));
  FDRE \zext_ln17_reg_417_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\n_fu_54_reg_n_0_[2] ),
        .Q(zext_ln17_reg_417_reg[2]),
        .R(flow_control_loop_pipe_sequential_init_U_n_8));
  FDRE \zext_ln17_reg_417_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\n_fu_54_reg_n_0_[3] ),
        .Q(zext_ln17_reg_417_reg[3]),
        .R(flow_control_loop_pipe_sequential_init_U_n_8));
  FDRE \zext_ln17_reg_417_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\n_fu_54_reg_n_0_[4] ),
        .Q(zext_ln17_reg_417_reg[4]),
        .R(flow_control_loop_pipe_sequential_init_U_n_8));
  FDRE \zext_ln17_reg_417_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\n_fu_54_reg_n_0_[5] ),
        .Q(zext_ln17_reg_417_reg[5]),
        .R(flow_control_loop_pipe_sequential_init_U_n_8));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
