// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Tue Jan 15 00:44:01 2019
// Host        : DESKTOP-NE70URT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ EBAZ4205_util_idelay_ctrl_0_0_stub.v
// Design      : EBAZ4205_util_idelay_ctrl_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "util_idelay_ctrl_v1_0_1_util_idelay_ctrl,Vivado 2017.4" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(rst, rdy, ref_clk)
/* synthesis syn_black_box black_box_pad_pin="rst,rdy,ref_clk" */;
  input rst;
  output rdy;
  input ref_clk;
endmodule
