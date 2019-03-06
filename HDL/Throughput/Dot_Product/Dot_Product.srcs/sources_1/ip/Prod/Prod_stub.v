// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
// Date        : Mon Feb 25 14:18:25 2019
// Host        : DESKTOP-O5CB8FQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {D:/UsmDrive/Respaldos/Desing
//               PP/Funciona_Todo_Integers_Fractions_Any/HDL/Throughput/Dot_Product/Dot_Product.srcs/sources_1/ip/Prod/Prod_stub.v}
// Design      : Prod
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mult_gen_v12_0_14,Vivado 2018.2.1" *)
module Prod(CLK, A, B, P)
/* synthesis syn_black_box black_box_pad_pin="CLK,A[23:0],B[23:0],P[47:0]" */;
  input CLK;
  input [23:0]A;
  input [23:0]B;
  output [47:0]P;
endmodule
