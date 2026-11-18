//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2026.1 (win64) Build 6511674 Tue Jun 16 11:02:23 MDT 2026
//Date        : Wed Nov 18 01:46:52 2026
//Host        : DESKTOP-8KUUFF7 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (arduino_a0_a5_1_tri_i,
    arduino_a0_a5_tri_i,
    leds_4bits_0_tri_io,
    reset_rtl,
    sys_clock);
  input [1:0]arduino_a0_a5_1_tri_i;
  input [3:0]arduino_a0_a5_tri_i;
  inout [3:0]leds_4bits_0_tri_io;
  input reset_rtl;
  input sys_clock;

  wire [1:0]arduino_a0_a5_1_tri_i;
  wire [3:0]arduino_a0_a5_tri_i;
  wire [0:0]leds_4bits_0_tri_i_0;
  wire [1:1]leds_4bits_0_tri_i_1;
  wire [2:2]leds_4bits_0_tri_i_2;
  wire [3:3]leds_4bits_0_tri_i_3;
  wire [0:0]leds_4bits_0_tri_io_0;
  wire [1:1]leds_4bits_0_tri_io_1;
  wire [2:2]leds_4bits_0_tri_io_2;
  wire [3:3]leds_4bits_0_tri_io_3;
  wire [0:0]leds_4bits_0_tri_o_0;
  wire [1:1]leds_4bits_0_tri_o_1;
  wire [2:2]leds_4bits_0_tri_o_2;
  wire [3:3]leds_4bits_0_tri_o_3;
  wire [0:0]leds_4bits_0_tri_t_0;
  wire [1:1]leds_4bits_0_tri_t_1;
  wire [2:2]leds_4bits_0_tri_t_2;
  wire [3:3]leds_4bits_0_tri_t_3;
  wire reset_rtl;
  wire sys_clock;

  design_1 design_1_i
       (.arduino_a0_a5_1_tri_i(arduino_a0_a5_1_tri_i),
        .arduino_a0_a5_tri_i(arduino_a0_a5_tri_i),
        .leds_4bits_0_tri_i({leds_4bits_0_tri_i_3,leds_4bits_0_tri_i_2,leds_4bits_0_tri_i_1,leds_4bits_0_tri_i_0}),
        .leds_4bits_0_tri_o({leds_4bits_0_tri_o_3,leds_4bits_0_tri_o_2,leds_4bits_0_tri_o_1,leds_4bits_0_tri_o_0}),
        .leds_4bits_0_tri_t({leds_4bits_0_tri_t_3,leds_4bits_0_tri_t_2,leds_4bits_0_tri_t_1,leds_4bits_0_tri_t_0}),
        .reset_rtl(reset_rtl),
        .sys_clock(sys_clock));
  IOBUF leds_4bits_0_tri_iobuf_0
       (.I(leds_4bits_0_tri_o_0),
        .IO(leds_4bits_0_tri_io[0]),
        .O(leds_4bits_0_tri_i_0),
        .T(leds_4bits_0_tri_t_0));
  IOBUF leds_4bits_0_tri_iobuf_1
       (.I(leds_4bits_0_tri_o_1),
        .IO(leds_4bits_0_tri_io[1]),
        .O(leds_4bits_0_tri_i_1),
        .T(leds_4bits_0_tri_t_1));
  IOBUF leds_4bits_0_tri_iobuf_2
       (.I(leds_4bits_0_tri_o_2),
        .IO(leds_4bits_0_tri_io[2]),
        .O(leds_4bits_0_tri_i_2),
        .T(leds_4bits_0_tri_t_2));
  IOBUF leds_4bits_0_tri_iobuf_3
       (.I(leds_4bits_0_tri_o_3),
        .IO(leds_4bits_0_tri_io[3]),
        .O(leds_4bits_0_tri_i_3),
        .T(leds_4bits_0_tri_t_3));
endmodule
