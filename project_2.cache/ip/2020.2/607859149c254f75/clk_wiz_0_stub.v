// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Dec 12 17:44:35 2022
// Host        : DESKTOP-PDDHOTE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ clk_wiz_0_stub.v
// Design      : clk_wiz_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clkfb_in, clk_out1, clk_out2, clk_out3, 
  clkfb_out, reset, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clkfb_in,clk_out1,clk_out2,clk_out3,clkfb_out,reset,locked,clk_in1" */;
  input clkfb_in;
  output clk_out1;
  output clk_out2;
  output clk_out3;
  output clkfb_out;
  input reset;
  output locked;
  input clk_in1;
endmodule
