// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
// Date        : Thu Feb 21 18:28:16 2019
// Host        : DESKTOP-O5CB8FQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top UartPort -prefix
//               UartPort_ UartPort_stub.v
// Design      : UartPort
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "uart,Vivado 2018.2.1" *)
module UartPort(ckin, rset, rx, rx_data, rx_ready, tx, tx_start, 
  tx_data, tx_busy)
/* synthesis syn_black_box black_box_pad_pin="ckin,rset,rx,rx_data[7:0],rx_ready,tx,tx_start,tx_data[7:0],tx_busy" */;
  input ckin;
  input rset;
  input rx;
  output [7:0]rx_data;
  output rx_ready;
  output tx;
  input tx_start;
  input [7:0]tx_data;
  output tx_busy;
endmodule
