// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "csi2_d_phy_rx,Vivado 2018.3" *)
module csi2_d_phy_rx_0(in_delay_clk, clk_rxp, clk_rxn, data_rxp, 
  data_rxn, data_lp_p, data_lp_n, trig_req, trig_ack, rxbyteclkhs, cl_enable, cl_stopstate, 
  cl_rxclkactivehs, dl0_enable, dl0_rxactivehs, dl0_rxvalidhs, dl0_rxsynchs, dl0_datahs, 
  dl1_enable, dl1_rxactivehs, dl1_rxvalidhs, dl1_rxsynchs, dl1_datahs, dl2_enable, 
  dl2_rxactivehs, dl2_rxvalidhs, dl2_rxsynchs, dl2_datahs, dl3_enable, dl3_rxactivehs, 
  dl3_rxvalidhs, dl3_rxsynchs, dl3_datahs);
  input in_delay_clk;
  input clk_rxp;
  input clk_rxn;
  input [1:0]data_rxp;
  input [1:0]data_rxn;
  input [0:0]data_lp_p;
  input [0:0]data_lp_n;
  input trig_req;
  output trig_ack;
  output rxbyteclkhs;
  input cl_enable;
  output cl_stopstate;
  output cl_rxclkactivehs;
  input dl0_enable;
  output dl0_rxactivehs;
  output dl0_rxvalidhs;
  output dl0_rxsynchs;
  output [7:0]dl0_datahs;
  input dl1_enable;
  output dl1_rxactivehs;
  output dl1_rxvalidhs;
  output dl1_rxsynchs;
  output [7:0]dl1_datahs;
  input dl2_enable;
  output dl2_rxactivehs;
  output dl2_rxvalidhs;
  output dl2_rxsynchs;
  output [7:0]dl2_datahs;
  input dl3_enable;
  output dl3_rxactivehs;
  output dl3_rxvalidhs;
  output dl3_rxsynchs;
  output [7:0]dl3_datahs;
endmodule
