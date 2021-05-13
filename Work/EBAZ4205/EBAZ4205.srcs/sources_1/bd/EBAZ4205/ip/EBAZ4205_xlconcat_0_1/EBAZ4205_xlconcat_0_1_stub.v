// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed Jan 16 19:13:58 2019
// Host        : DESKTOP-NE70URT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/7020test/EBAZ4205/EBAZ4205.srcs/sources_1/bd/EBAZ4205/ip/EBAZ4205_xlconcat_0_1/EBAZ4205_xlconcat_0_1_stub.v
// Design      : EBAZ4205_xlconcat_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "xlconcat_v2_1_1_xlconcat,Vivado 2017.4" *)
module EBAZ4205_xlconcat_0_1(In0, dout)
/* synthesis syn_black_box black_box_pad_pin="In0[3:0],dout[3:0]" */;
  input [3:0]In0;
  output [3:0]dout;
endmodule
