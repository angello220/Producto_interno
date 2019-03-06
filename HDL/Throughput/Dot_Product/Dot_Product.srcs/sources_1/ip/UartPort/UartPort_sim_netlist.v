// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
// Date        : Sun Feb 17 11:48:25 2019
// Host        : DESKTOP-O5CB8FQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top UartPort -prefix
//               UartPort_ UartPort_sim_netlist.v
// Design      : UartPort
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "UartPort,uart,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "uart,Vivado 2018.2.1" *) 
(* NotValidForBitStream *)
module UartPort
   (ckin,
    rset,
    rx,
    rx_data,
    rx_ready,
    tx,
    tx_start,
    tx_data,
    tx_busy);
  input ckin;
  input rset;
  input rx;
  output [7:0]rx_data;
  output rx_ready;
  output tx;
  input tx_start;
  input [7:0]tx_data;
  output tx_busy;

  wire ckin;
  wire rset;
  wire rx;
  wire [7:0]rx_data;
  wire rx_ready;
  wire tx;
  wire tx_busy;
  wire [7:0]tx_data;
  wire tx_start;

  UartPort_uart inst
       (.ckin(ckin),
        .rset(rset),
        .rx(rx),
        .rx_data(rx_data),
        .rx_ready(rx_ready),
        .tx(tx),
        .tx_busy(tx_busy),
        .tx_data(tx_data),
        .tx_start(tx_start));
endmodule

module UartPort_data_sync
   (rx_bit,
    \FSM_sequential_state_reg[2] ,
    \FSM_sequential_state_reg[1] ,
    \FSM_sequential_state_reg[0] ,
    ckin,
    \FSM_sequential_state_reg[0]_0 ,
    out,
    \FSM_sequential_state_reg[0]_1 ,
    \spacing_counter_reg[0] ,
    in0,
    \FSM_sequential_state_reg[2]_0 ,
    \FSM_sequential_state_reg[2]_1 ,
    rx);
  output rx_bit;
  output \FSM_sequential_state_reg[2] ;
  output \FSM_sequential_state_reg[1] ;
  output \FSM_sequential_state_reg[0] ;
  input ckin;
  input [0:0]\FSM_sequential_state_reg[0]_0 ;
  input [0:0]out;
  input \FSM_sequential_state_reg[0]_1 ;
  input \spacing_counter_reg[0] ;
  input [2:0]in0;
  input \FSM_sequential_state_reg[2]_0 ;
  input [2:0]\FSM_sequential_state_reg[2]_1 ;
  input rx;

  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[0] ;
  wire [0:0]\FSM_sequential_state_reg[0]_0 ;
  wire \FSM_sequential_state_reg[0]_1 ;
  wire \FSM_sequential_state_reg[1] ;
  wire \FSM_sequential_state_reg[2] ;
  wire \FSM_sequential_state_reg[2]_0 ;
  wire [2:0]\FSM_sequential_state_reg[2]_1 ;
  wire ckin;
  wire [2:0]in0;
  wire \in_sync_sr_reg_n_0_[0] ;
  wire \in_sync_sr_reg_n_0_[1] ;
  wire [0:0]out;
  wire rx;
  wire rx_bit;
  wire \spacing_counter_reg[0] ;
  wire stable_out_i_1_n_0;
  wire [1:1]state_next__0;
  wire [1:0]sync_counter;
  wire \sync_counter[0]_i_1_n_0 ;
  wire \sync_counter[1]_i_1_n_0 ;

  LUT6 #(
    .INIT(64'h7F7F7F7740404044)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state_reg[2]_0 ),
        .I1(out),
        .I2(\FSM_sequential_state[2]_i_3_n_0 ),
        .I3(\FSM_sequential_state_reg[0]_1 ),
        .I4(\spacing_counter_reg[0] ),
        .I5(in0[0]),
        .O(\FSM_sequential_state_reg[0] ));
  LUT6 #(
    .INIT(64'hBFBFBFBB80808088)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state_next__0),
        .I1(out),
        .I2(\FSM_sequential_state[2]_i_3_n_0 ),
        .I3(\FSM_sequential_state_reg[0]_1 ),
        .I4(\spacing_counter_reg[0] ),
        .I5(in0[1]),
        .O(\FSM_sequential_state_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0150)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(\FSM_sequential_state_reg[2]_1 [2]),
        .I1(rx_bit),
        .I2(\FSM_sequential_state_reg[2]_1 [1]),
        .I3(\FSM_sequential_state_reg[2]_1 [0]),
        .O(state_next__0));
  LUT6 #(
    .INIT(64'hBFBFBFBB80808088)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(\FSM_sequential_state_reg[0]_0 ),
        .I1(out),
        .I2(\FSM_sequential_state[2]_i_3_n_0 ),
        .I3(\FSM_sequential_state_reg[0]_1 ),
        .I4(\spacing_counter_reg[0] ),
        .I5(in0[2]),
        .O(\FSM_sequential_state_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h1011)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(\FSM_sequential_state_reg[2]_1 [0]),
        .I1(\FSM_sequential_state_reg[2]_1 [1]),
        .I2(\FSM_sequential_state_reg[2]_1 [2]),
        .I3(rx_bit),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  FDRE \in_sync_sr_reg[0] 
       (.C(ckin),
        .CE(1'b1),
        .D(\in_sync_sr_reg_n_0_[1] ),
        .Q(\in_sync_sr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \in_sync_sr_reg[1] 
       (.C(ckin),
        .CE(1'b1),
        .D(rx),
        .Q(\in_sync_sr_reg_n_0_[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    stable_out_i_1
       (.I0(rx_bit),
        .I1(sync_counter[0]),
        .I2(sync_counter[1]),
        .O(stable_out_i_1_n_0));
  FDRE stable_out_reg
       (.C(ckin),
        .CE(1'b1),
        .D(stable_out_i_1_n_0),
        .Q(rx_bit),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8E)) 
    \sync_counter[0]_i_1 
       (.I0(sync_counter[1]),
        .I1(\in_sync_sr_reg_n_0_[0] ),
        .I2(sync_counter[0]),
        .O(\sync_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sync_counter[1]_i_1 
       (.I0(\in_sync_sr_reg_n_0_[0] ),
        .I1(sync_counter[0]),
        .I2(sync_counter[1]),
        .O(\sync_counter[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \sync_counter_reg[0] 
       (.C(ckin),
        .CE(1'b1),
        .D(\sync_counter[0]_i_1_n_0 ),
        .Q(sync_counter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \sync_counter_reg[1] 
       (.C(ckin),
        .CE(1'b1),
        .D(\sync_counter[1]_i_1_n_0 ),
        .Q(sync_counter[1]),
        .R(1'b0));
endmodule

module UartPort_uart
   (rx_data,
    rx_ready,
    tx_busy,
    tx,
    tx_start,
    rset,
    ckin,
    rx,
    tx_data);
  output [7:0]rx_data;
  output rx_ready;
  output tx_busy;
  output tx;
  input tx_start;
  input rset;
  input ckin;
  input rx;
  input [7:0]tx_data;

  wire baud8_tick;
  wire baud_tick;
  wire ckin;
  wire rset;
  wire rx;
  wire [7:0]rx_data;
  wire rx_ready;
  wire rx_ready_pre;
  wire rx_ready_sync;
  wire tx;
  wire tx_busy;
  wire [7:0]tx_data;
  wire tx_start;
  wire uart_rx_blk_n_8;
  wire uart_tx_blk_n_0;

  UartPort_uart_baud_tick_gen baud8_tick_blk
       (.ckin(ckin),
        .out(baud8_tick));
  UartPort_uart_baud_tick_gen__parameterized0 baud_tick_blk
       (.SR(uart_tx_blk_n_0),
        .ckin(ckin),
        .out(baud_tick));
  FDRE rx_ready_reg
       (.C(ckin),
        .CE(1'b1),
        .D(uart_rx_blk_n_8),
        .Q(rx_ready),
        .R(1'b0));
  FDRE rx_ready_sync_reg
       (.C(ckin),
        .CE(1'b1),
        .D(rx_ready_pre),
        .Q(rx_ready_sync),
        .R(1'b0));
  UartPort_uart_rx uart_rx_blk
       (.ckin(ckin),
        .out(baud8_tick),
        .rset(rset),
        .rx(rx),
        .rx_data(rx_data),
        .rx_ready_pre(rx_ready_pre),
        .rx_ready_reg(uart_rx_blk_n_8),
        .rx_ready_sync(rx_ready_sync));
  UartPort_uart_tx uart_tx_blk
       (.SR(uart_tx_blk_n_0),
        .ckin(ckin),
        .out(baud_tick),
        .rset(rset),
        .tx(tx),
        .tx_busy(tx_busy),
        .tx_data(tx_data),
        .tx_start(tx_start));
endmodule

module UartPort_uart_baud_tick_gen
   (out,
    ckin);
  output [0:0]out;
  input ckin;

  (* RTL_KEEP = "true" *) wire [19:0]acc;
  wire \acc[12]_i_2_n_0 ;
  wire \acc[12]_i_3_n_0 ;
  wire \acc[4]_i_2_n_0 ;
  wire \acc[4]_i_3_n_0 ;
  wire \acc[8]_i_2_n_0 ;
  wire \acc[8]_i_3_n_0 ;
  wire \acc[8]_i_4_n_0 ;
  wire \acc_reg[12]_i_1_n_0 ;
  wire \acc_reg[12]_i_1_n_1 ;
  wire \acc_reg[12]_i_1_n_2 ;
  wire \acc_reg[12]_i_1_n_3 ;
  wire \acc_reg[16]_i_1_n_0 ;
  wire \acc_reg[16]_i_1_n_1 ;
  wire \acc_reg[16]_i_1_n_2 ;
  wire \acc_reg[16]_i_1_n_3 ;
  wire \acc_reg[19]_i_1_n_3 ;
  wire \acc_reg[4]_i_1_n_0 ;
  wire \acc_reg[4]_i_1_n_1 ;
  wire \acc_reg[4]_i_1_n_2 ;
  wire \acc_reg[4]_i_1_n_3 ;
  wire \acc_reg[8]_i_1_n_0 ;
  wire \acc_reg[8]_i_1_n_1 ;
  wire \acc_reg[8]_i_1_n_2 ;
  wire \acc_reg[8]_i_1_n_3 ;
  wire ckin;
  wire [19:1]p_1_in;
  wire [3:1]\NLW_acc_reg[19]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_acc_reg[19]_i_1_O_UNCONNECTED ;

  assign out[0] = acc[19];
  LUT1 #(
    .INIT(2'h1)) 
    \acc[12]_i_2 
       (.I0(acc[11]),
        .O(\acc[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \acc[12]_i_3 
       (.I0(acc[9]),
        .O(\acc[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \acc[4]_i_2 
       (.I0(acc[3]),
        .O(\acc[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \acc[4]_i_3 
       (.I0(acc[2]),
        .O(\acc[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \acc[8]_i_2 
       (.I0(acc[8]),
        .O(\acc[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \acc[8]_i_3 
       (.I0(acc[7]),
        .O(\acc[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \acc[8]_i_4 
       (.I0(acc[6]),
        .O(\acc[8]_i_4_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[0] 
       (.C(ckin),
        .CE(1'b1),
        .D(acc[0]),
        .Q(acc[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[10] 
       (.C(ckin),
        .CE(1'b1),
        .D(p_1_in[10]),
        .Q(acc[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[11] 
       (.C(ckin),
        .CE(1'b1),
        .D(p_1_in[11]),
        .Q(acc[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[12] 
       (.C(ckin),
        .CE(1'b1),
        .D(p_1_in[12]),
        .Q(acc[12]),
        .R(1'b0));
  CARRY4 \acc_reg[12]_i_1 
       (.CI(\acc_reg[8]_i_1_n_0 ),
        .CO({\acc_reg[12]_i_1_n_0 ,\acc_reg[12]_i_1_n_1 ,\acc_reg[12]_i_1_n_2 ,\acc_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,acc[11],1'b0,acc[9]}),
        .O(p_1_in[12:9]),
        .S({acc[12],\acc[12]_i_2_n_0 ,acc[10],\acc[12]_i_3_n_0 }));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[13] 
       (.C(ckin),
        .CE(1'b1),
        .D(p_1_in[13]),
        .Q(acc[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[14] 
       (.C(ckin),
        .CE(1'b1),
        .D(p_1_in[14]),
        .Q(acc[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[15] 
       (.C(ckin),
        .CE(1'b1),
        .D(p_1_in[15]),
        .Q(acc[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[16] 
       (.C(ckin),
        .CE(1'b1),
        .D(p_1_in[16]),
        .Q(acc[16]),
        .R(1'b0));
  CARRY4 \acc_reg[16]_i_1 
       (.CI(\acc_reg[12]_i_1_n_0 ),
        .CO({\acc_reg[16]_i_1_n_0 ,\acc_reg[16]_i_1_n_1 ,\acc_reg[16]_i_1_n_2 ,\acc_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[16:13]),
        .S(acc[16:13]));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[17] 
       (.C(ckin),
        .CE(1'b1),
        .D(p_1_in[17]),
        .Q(acc[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[18] 
       (.C(ckin),
        .CE(1'b1),
        .D(p_1_in[18]),
        .Q(acc[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[19] 
       (.C(ckin),
        .CE(1'b1),
        .D(p_1_in[19]),
        .Q(acc[19]),
        .R(1'b0));
  CARRY4 \acc_reg[19]_i_1 
       (.CI(\acc_reg[16]_i_1_n_0 ),
        .CO({\NLW_acc_reg[19]_i_1_CO_UNCONNECTED [3],p_1_in[19],\NLW_acc_reg[19]_i_1_CO_UNCONNECTED [1],\acc_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_acc_reg[19]_i_1_O_UNCONNECTED [3:2],p_1_in[18:17]}),
        .S({1'b0,1'b1,acc[18:17]}));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[1] 
       (.C(ckin),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(acc[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[2] 
       (.C(ckin),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(acc[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[3] 
       (.C(ckin),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(acc[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[4] 
       (.C(ckin),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(acc[4]),
        .R(1'b0));
  CARRY4 \acc_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\acc_reg[4]_i_1_n_0 ,\acc_reg[4]_i_1_n_1 ,\acc_reg[4]_i_1_n_2 ,\acc_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,acc[3:2],1'b0}),
        .O(p_1_in[4:1]),
        .S({acc[4],\acc[4]_i_2_n_0 ,\acc[4]_i_3_n_0 ,acc[1]}));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[5] 
       (.C(ckin),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(acc[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[6] 
       (.C(ckin),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(acc[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[7] 
       (.C(ckin),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(acc[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[8] 
       (.C(ckin),
        .CE(1'b1),
        .D(p_1_in[8]),
        .Q(acc[8]),
        .R(1'b0));
  CARRY4 \acc_reg[8]_i_1 
       (.CI(\acc_reg[4]_i_1_n_0 ),
        .CO({\acc_reg[8]_i_1_n_0 ,\acc_reg[8]_i_1_n_1 ,\acc_reg[8]_i_1_n_2 ,\acc_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({acc[8:6],1'b0}),
        .O(p_1_in[8:5]),
        .S({\acc[8]_i_2_n_0 ,\acc[8]_i_3_n_0 ,\acc[8]_i_4_n_0 ,acc[5]}));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[9] 
       (.C(ckin),
        .CE(1'b1),
        .D(p_1_in[9]),
        .Q(acc[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "uart_baud_tick_gen" *) 
module UartPort_uart_baud_tick_gen__parameterized0
   (out,
    SR,
    ckin);
  output [0:0]out;
  input [0:0]SR;
  input ckin;

  wire [0:0]SR;
  (* RTL_KEEP = "true" *) wire [19:0]acc;
  wire \acc[0]_i_1_n_0 ;
  wire \acc[4]_i_2_n_0 ;
  wire \acc[4]_i_3_n_0 ;
  wire \acc[8]_i_2_n_0 ;
  wire \acc[8]_i_3_n_0 ;
  wire \acc[8]_i_4_n_0 ;
  wire \acc_reg[12]_i_1_n_0 ;
  wire \acc_reg[12]_i_1_n_1 ;
  wire \acc_reg[12]_i_1_n_2 ;
  wire \acc_reg[12]_i_1_n_3 ;
  wire \acc_reg[12]_i_1_n_4 ;
  wire \acc_reg[12]_i_1_n_5 ;
  wire \acc_reg[12]_i_1_n_6 ;
  wire \acc_reg[12]_i_1_n_7 ;
  wire \acc_reg[16]_i_1_n_0 ;
  wire \acc_reg[16]_i_1_n_1 ;
  wire \acc_reg[16]_i_1_n_2 ;
  wire \acc_reg[16]_i_1_n_3 ;
  wire \acc_reg[16]_i_1_n_4 ;
  wire \acc_reg[16]_i_1_n_5 ;
  wire \acc_reg[16]_i_1_n_6 ;
  wire \acc_reg[16]_i_1_n_7 ;
  wire \acc_reg[19]_i_2_n_1 ;
  wire \acc_reg[19]_i_2_n_3 ;
  wire \acc_reg[19]_i_2_n_6 ;
  wire \acc_reg[19]_i_2_n_7 ;
  wire \acc_reg[4]_i_1_n_0 ;
  wire \acc_reg[4]_i_1_n_1 ;
  wire \acc_reg[4]_i_1_n_2 ;
  wire \acc_reg[4]_i_1_n_3 ;
  wire \acc_reg[4]_i_1_n_4 ;
  wire \acc_reg[4]_i_1_n_5 ;
  wire \acc_reg[4]_i_1_n_6 ;
  wire \acc_reg[4]_i_1_n_7 ;
  wire \acc_reg[8]_i_1_n_0 ;
  wire \acc_reg[8]_i_1_n_1 ;
  wire \acc_reg[8]_i_1_n_2 ;
  wire \acc_reg[8]_i_1_n_3 ;
  wire \acc_reg[8]_i_1_n_4 ;
  wire \acc_reg[8]_i_1_n_5 ;
  wire \acc_reg[8]_i_1_n_6 ;
  wire \acc_reg[8]_i_1_n_7 ;
  wire ckin;
  wire [3:1]\NLW_acc_reg[19]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_acc_reg[19]_i_2_O_UNCONNECTED ;

  assign out[0] = acc[19];
  LUT1 #(
    .INIT(2'h1)) 
    \acc[0]_i_1 
       (.I0(acc[0]),
        .O(\acc[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \acc[4]_i_2 
       (.I0(acc[4]),
        .O(\acc[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \acc[4]_i_3 
       (.I0(acc[3]),
        .O(\acc[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \acc[8]_i_2 
       (.I0(acc[8]),
        .O(\acc[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \acc[8]_i_3 
       (.I0(acc[6]),
        .O(\acc[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \acc[8]_i_4 
       (.I0(acc[5]),
        .O(\acc[8]_i_4_n_0 ));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \acc_reg[0] 
       (.C(ckin),
        .CE(1'b1),
        .D(\acc[0]_i_1_n_0 ),
        .Q(acc[0]),
        .S(SR));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[10] 
       (.C(ckin),
        .CE(1'b1),
        .D(\acc_reg[12]_i_1_n_6 ),
        .Q(acc[10]),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[11] 
       (.C(ckin),
        .CE(1'b1),
        .D(\acc_reg[12]_i_1_n_5 ),
        .Q(acc[11]),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[12] 
       (.C(ckin),
        .CE(1'b1),
        .D(\acc_reg[12]_i_1_n_4 ),
        .Q(acc[12]),
        .R(SR));
  CARRY4 \acc_reg[12]_i_1 
       (.CI(\acc_reg[8]_i_1_n_0 ),
        .CO({\acc_reg[12]_i_1_n_0 ,\acc_reg[12]_i_1_n_1 ,\acc_reg[12]_i_1_n_2 ,\acc_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\acc_reg[12]_i_1_n_4 ,\acc_reg[12]_i_1_n_5 ,\acc_reg[12]_i_1_n_6 ,\acc_reg[12]_i_1_n_7 }),
        .S(acc[12:9]));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[13] 
       (.C(ckin),
        .CE(1'b1),
        .D(\acc_reg[16]_i_1_n_7 ),
        .Q(acc[13]),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[14] 
       (.C(ckin),
        .CE(1'b1),
        .D(\acc_reg[16]_i_1_n_6 ),
        .Q(acc[14]),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[15] 
       (.C(ckin),
        .CE(1'b1),
        .D(\acc_reg[16]_i_1_n_5 ),
        .Q(acc[15]),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[16] 
       (.C(ckin),
        .CE(1'b1),
        .D(\acc_reg[16]_i_1_n_4 ),
        .Q(acc[16]),
        .R(SR));
  CARRY4 \acc_reg[16]_i_1 
       (.CI(\acc_reg[12]_i_1_n_0 ),
        .CO({\acc_reg[16]_i_1_n_0 ,\acc_reg[16]_i_1_n_1 ,\acc_reg[16]_i_1_n_2 ,\acc_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\acc_reg[16]_i_1_n_4 ,\acc_reg[16]_i_1_n_5 ,\acc_reg[16]_i_1_n_6 ,\acc_reg[16]_i_1_n_7 }),
        .S(acc[16:13]));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[17] 
       (.C(ckin),
        .CE(1'b1),
        .D(\acc_reg[19]_i_2_n_7 ),
        .Q(acc[17]),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[18] 
       (.C(ckin),
        .CE(1'b1),
        .D(\acc_reg[19]_i_2_n_6 ),
        .Q(acc[18]),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[19] 
       (.C(ckin),
        .CE(1'b1),
        .D(\acc_reg[19]_i_2_n_1 ),
        .Q(acc[19]),
        .R(SR));
  CARRY4 \acc_reg[19]_i_2 
       (.CI(\acc_reg[16]_i_1_n_0 ),
        .CO({\NLW_acc_reg[19]_i_2_CO_UNCONNECTED [3],\acc_reg[19]_i_2_n_1 ,\NLW_acc_reg[19]_i_2_CO_UNCONNECTED [1],\acc_reg[19]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_acc_reg[19]_i_2_O_UNCONNECTED [3:2],\acc_reg[19]_i_2_n_6 ,\acc_reg[19]_i_2_n_7 }),
        .S({1'b0,1'b1,acc[18:17]}));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[1] 
       (.C(ckin),
        .CE(1'b1),
        .D(\acc_reg[4]_i_1_n_7 ),
        .Q(acc[1]),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[2] 
       (.C(ckin),
        .CE(1'b1),
        .D(\acc_reg[4]_i_1_n_6 ),
        .Q(acc[2]),
        .R(SR));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \acc_reg[3] 
       (.C(ckin),
        .CE(1'b1),
        .D(\acc_reg[4]_i_1_n_5 ),
        .Q(acc[3]),
        .S(SR));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \acc_reg[4] 
       (.C(ckin),
        .CE(1'b1),
        .D(\acc_reg[4]_i_1_n_4 ),
        .Q(acc[4]),
        .S(SR));
  CARRY4 \acc_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\acc_reg[4]_i_1_n_0 ,\acc_reg[4]_i_1_n_1 ,\acc_reg[4]_i_1_n_2 ,\acc_reg[4]_i_1_n_3 }),
        .CYINIT(acc[0]),
        .DI({acc[4:3],1'b0,1'b0}),
        .O({\acc_reg[4]_i_1_n_4 ,\acc_reg[4]_i_1_n_5 ,\acc_reg[4]_i_1_n_6 ,\acc_reg[4]_i_1_n_7 }),
        .S({\acc[4]_i_2_n_0 ,\acc[4]_i_3_n_0 ,acc[2:1]}));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \acc_reg[5] 
       (.C(ckin),
        .CE(1'b1),
        .D(\acc_reg[8]_i_1_n_7 ),
        .Q(acc[5]),
        .S(SR));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \acc_reg[6] 
       (.C(ckin),
        .CE(1'b1),
        .D(\acc_reg[8]_i_1_n_6 ),
        .Q(acc[6]),
        .S(SR));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[7] 
       (.C(ckin),
        .CE(1'b1),
        .D(\acc_reg[8]_i_1_n_5 ),
        .Q(acc[7]),
        .R(SR));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \acc_reg[8] 
       (.C(ckin),
        .CE(1'b1),
        .D(\acc_reg[8]_i_1_n_4 ),
        .Q(acc[8]),
        .S(SR));
  CARRY4 \acc_reg[8]_i_1 
       (.CI(\acc_reg[4]_i_1_n_0 ),
        .CO({\acc_reg[8]_i_1_n_0 ,\acc_reg[8]_i_1_n_1 ,\acc_reg[8]_i_1_n_2 ,\acc_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({acc[8],1'b0,acc[6:5]}),
        .O({\acc_reg[8]_i_1_n_4 ,\acc_reg[8]_i_1_n_5 ,\acc_reg[8]_i_1_n_6 ,\acc_reg[8]_i_1_n_7 }),
        .S({\acc[8]_i_2_n_0 ,acc[7],\acc[8]_i_3_n_0 ,\acc[8]_i_4_n_0 }));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[9] 
       (.C(ckin),
        .CE(1'b1),
        .D(\acc_reg[12]_i_1_n_7 ),
        .Q(acc[9]),
        .R(SR));
endmodule

module UartPort_uart_rx
   (rx_data,
    rx_ready_reg,
    rx_ready_pre,
    ckin,
    out,
    rset,
    rx,
    rx_ready_sync);
  output [7:0]rx_data;
  output rx_ready_reg;
  output rx_ready_pre;
  input ckin;
  input [0:0]out;
  input rset;
  input rx;
  input rx_ready_sync;

  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire \FSM_sequential_state[2]_i_5_n_0 ;
  wire \bit_counter[0]_i_1_n_0 ;
  wire \bit_counter[1]_i_1_n_0 ;
  wire \bit_counter[2]_i_1_n_0 ;
  wire \bit_counter[2]_i_2_n_0 ;
  wire \bit_counter_reg_n_0_[0] ;
  wire \bit_counter_reg_n_0_[1] ;
  wire \bit_counter_reg_n_0_[2] ;
  wire ckin;
  wire [0:0]out;
  wire rset;
  wire rx;
  wire rx_bit;
  wire [7:0]rx_data;
  wire \rx_data[7]_i_1_n_0 ;
  wire \rx_data[7]_i_2_n_0 ;
  wire rx_ready_pre;
  wire rx_ready_reg;
  wire rx_ready_sync;
  wire rx_sync_inst_n_1;
  wire rx_sync_inst_n_2;
  wire rx_sync_inst_n_3;
  wire [2:0]spacing_counter;
  wire \spacing_counter[0]_i_1_n_0 ;
  wire \spacing_counter[1]_i_1_n_0 ;
  wire \spacing_counter[1]_i_2_n_0 ;
  wire \spacing_counter[2]_i_1_n_0 ;
  wire \spacing_counter[2]_i_2_n_0 ;
  (* RTL_KEEP = "yes" *) wire [2:0]state__0;
  wire [2:2]state_next__0;

  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(state__0[2]),
        .O(state_next__0));
  LUT4 #(
    .INIT(16'h1555)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(state__0[0]),
        .I1(\bit_counter_reg_n_0_[2] ),
        .I2(\bit_counter_reg_n_0_[0] ),
        .I3(\bit_counter_reg_n_0_[1] ),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEFEFFF)) 
    \FSM_sequential_state[2]_i_5 
       (.I0(spacing_counter[0]),
        .I1(spacing_counter[1]),
        .I2(spacing_counter[2]),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .I5(state__0[2]),
        .O(\FSM_sequential_state[2]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "RX_START:001,RX_STOP:011,RX_READY:100,RX_IDLE:000,RX_RECV:010" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(ckin),
        .CE(1'b1),
        .D(rx_sync_inst_n_3),
        .Q(state__0[0]),
        .R(rset));
  (* FSM_ENCODED_STATES = "RX_START:001,RX_STOP:011,RX_READY:100,RX_IDLE:000,RX_RECV:010" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(ckin),
        .CE(1'b1),
        .D(rx_sync_inst_n_2),
        .Q(state__0[1]),
        .R(rset));
  (* FSM_ENCODED_STATES = "RX_START:001,RX_STOP:011,RX_READY:100,RX_IDLE:000,RX_RECV:010" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(ckin),
        .CE(1'b1),
        .D(rx_sync_inst_n_1),
        .Q(state__0[2]),
        .R(rset));
  LUT6 #(
    .INIT(64'hFFFFFF2F00000080)) 
    \bit_counter[0]_i_1 
       (.I0(state__0[1]),
        .I1(\rx_data[7]_i_2_n_0 ),
        .I2(out),
        .I3(state__0[2]),
        .I4(state__0[0]),
        .I5(\bit_counter_reg_n_0_[0] ),
        .O(\bit_counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4CFF00008000)) 
    \bit_counter[1]_i_1 
       (.I0(\bit_counter_reg_n_0_[0] ),
        .I1(state__0[1]),
        .I2(\rx_data[7]_i_2_n_0 ),
        .I3(out),
        .I4(\FSM_sequential_state[0]_i_2_n_0 ),
        .I5(\bit_counter_reg_n_0_[1] ),
        .O(\bit_counter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF70F000008000)) 
    \bit_counter[2]_i_1 
       (.I0(\bit_counter_reg_n_0_[0] ),
        .I1(\bit_counter_reg_n_0_[1] ),
        .I2(state__0[1]),
        .I3(\rx_data[7]_i_2_n_0 ),
        .I4(\bit_counter[2]_i_2_n_0 ),
        .I5(\bit_counter_reg_n_0_[2] ),
        .O(\bit_counter[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \bit_counter[2]_i_2 
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .I2(out),
        .O(\bit_counter[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[0] 
       (.C(ckin),
        .CE(1'b1),
        .D(\bit_counter[0]_i_1_n_0 ),
        .Q(\bit_counter_reg_n_0_[0] ),
        .R(rset));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[1] 
       (.C(ckin),
        .CE(1'b1),
        .D(\bit_counter[1]_i_1_n_0 ),
        .Q(\bit_counter_reg_n_0_[1] ),
        .R(rset));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[2] 
       (.C(ckin),
        .CE(1'b1),
        .D(\bit_counter[2]_i_1_n_0 ),
        .Q(\bit_counter_reg_n_0_[2] ),
        .R(rset));
  LUT5 #(
    .INIT(32'h00200000)) 
    \rx_data[7]_i_1 
       (.I0(\rx_data[7]_i_2_n_0 ),
        .I1(state__0[0]),
        .I2(out),
        .I3(state__0[2]),
        .I4(state__0[1]),
        .O(\rx_data[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \rx_data[7]_i_2 
       (.I0(spacing_counter[2]),
        .I1(spacing_counter[1]),
        .I2(spacing_counter[0]),
        .O(\rx_data[7]_i_2_n_0 ));
  FDRE \rx_data_reg[0] 
       (.C(ckin),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(rx_data[1]),
        .Q(rx_data[0]),
        .R(rset));
  FDRE \rx_data_reg[1] 
       (.C(ckin),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(rx_data[2]),
        .Q(rx_data[1]),
        .R(rset));
  FDRE \rx_data_reg[2] 
       (.C(ckin),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(rx_data[3]),
        .Q(rx_data[2]),
        .R(rset));
  FDRE \rx_data_reg[3] 
       (.C(ckin),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(rx_data[4]),
        .Q(rx_data[3]),
        .R(rset));
  FDRE \rx_data_reg[4] 
       (.C(ckin),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(rx_data[5]),
        .Q(rx_data[4]),
        .R(rset));
  FDRE \rx_data_reg[5] 
       (.C(ckin),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(rx_data[6]),
        .Q(rx_data[5]),
        .R(rset));
  FDRE \rx_data_reg[6] 
       (.C(ckin),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(rx_data[7]),
        .Q(rx_data[6]),
        .R(rset));
  FDRE \rx_data_reg[7] 
       (.C(ckin),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(rx_bit),
        .Q(rx_data[7]),
        .R(rset));
  LUT4 #(
    .INIT(16'h0010)) 
    rx_ready_i_1
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(rx_ready_sync),
        .O(rx_ready_reg));
  LUT3 #(
    .INIT(8'h02)) 
    rx_ready_sync_i_1
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .O(rx_ready_pre));
  UartPort_data_sync rx_sync_inst
       (.\FSM_sequential_state_reg[0] (rx_sync_inst_n_3),
        .\FSM_sequential_state_reg[0]_0 (state_next__0),
        .\FSM_sequential_state_reg[0]_1 (\FSM_sequential_state[2]_i_4_n_0 ),
        .\FSM_sequential_state_reg[1] (rx_sync_inst_n_2),
        .\FSM_sequential_state_reg[2] (rx_sync_inst_n_1),
        .\FSM_sequential_state_reg[2]_0 (\FSM_sequential_state[0]_i_2_n_0 ),
        .\FSM_sequential_state_reg[2]_1 (state__0),
        .ckin(ckin),
        .in0(state__0),
        .out(out),
        .rx(rx),
        .rx_bit(rx_bit),
        .\spacing_counter_reg[0] (\FSM_sequential_state[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000066666662)) 
    \spacing_counter[0]_i_1 
       (.I0(spacing_counter[0]),
        .I1(out),
        .I2(state__0[2]),
        .I3(state__0[0]),
        .I4(state__0[1]),
        .I5(rset),
        .O(\spacing_counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006A226A6A)) 
    \spacing_counter[1]_i_1 
       (.I0(spacing_counter[1]),
        .I1(out),
        .I2(spacing_counter[0]),
        .I3(state__0[2]),
        .I4(\spacing_counter[1]_i_2_n_0 ),
        .I5(rset),
        .O(\spacing_counter[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \spacing_counter[1]_i_2 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .O(\spacing_counter[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAA2222)) 
    \spacing_counter[2]_i_1 
       (.I0(spacing_counter[2]),
        .I1(out),
        .I2(spacing_counter[1]),
        .I3(spacing_counter[0]),
        .I4(\spacing_counter[2]_i_2_n_0 ),
        .I5(rset),
        .O(\spacing_counter[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \spacing_counter[2]_i_2 
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .O(\spacing_counter[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \spacing_counter_reg[0] 
       (.C(ckin),
        .CE(1'b1),
        .D(\spacing_counter[0]_i_1_n_0 ),
        .Q(spacing_counter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spacing_counter_reg[1] 
       (.C(ckin),
        .CE(1'b1),
        .D(\spacing_counter[1]_i_1_n_0 ),
        .Q(spacing_counter[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spacing_counter_reg[2] 
       (.C(ckin),
        .CE(1'b1),
        .D(\spacing_counter[2]_i_1_n_0 ),
        .Q(spacing_counter[2]),
        .R(1'b0));
endmodule

module UartPort_uart_tx
   (SR,
    tx_busy,
    tx,
    tx_start,
    out,
    rset,
    ckin,
    tx_data);
  output [0:0]SR;
  output tx_busy;
  output tx;
  input tx_start;
  input [0:0]out;
  input rset;
  input ckin;
  input [7:0]tx_data;

  wire \FSM_sequential_state[0]_i_1__0_n_0 ;
  wire \FSM_sequential_state[0]_i_2__0_n_0 ;
  wire \FSM_sequential_state[1]_i_1__0_n_0 ;
  wire [0:0]SR;
  wire ckin;
  wire [2:0]counter;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire [0:0]out;
  wire rset;
  (* RTL_KEEP = "yes" *) wire [1:0]state;
  wire tx;
  wire tx_INST_0_i_1_n_0;
  wire tx_INST_0_i_2_n_0;
  wire tx_busy;
  wire [7:0]tx_data;
  wire [7:0]tx_data_reg;
  wire \tx_data_reg[7]_i_1_n_0 ;
  wire tx_start;

  LUT6 #(
    .INIT(64'h000000003E3F3230)) 
    \FSM_sequential_state[0]_i_1__0 
       (.I0(state[0]),
        .I1(out),
        .I2(state[0]),
        .I3(state[1]),
        .I4(\FSM_sequential_state[0]_i_2__0_n_0 ),
        .I5(rset),
        .O(\FSM_sequential_state[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \FSM_sequential_state[0]_i_2__0 
       (.I0(counter[1]),
        .I1(counter[0]),
        .I2(counter[2]),
        .I3(state[1]),
        .I4(tx_start),
        .O(\FSM_sequential_state[0]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h00003EC0)) 
    \FSM_sequential_state[1]_i_1__0 
       (.I0(state[1]),
        .I1(out),
        .I2(state[0]),
        .I3(state[1]),
        .I4(rset),
        .O(\FSM_sequential_state[1]_i_1__0_n_0 ));
  (* FSM_ENCODED_STATES = "TX_START:01,TX_SEND:10,TX_STOP:11,TX_IDLE:00" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(ckin),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1__0_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "TX_START:01,TX_SEND:10,TX_STOP:11,TX_IDLE:00" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(ckin),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1__0_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \acc[19]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .O(SR));
  LUT4 #(
    .INIT(16'h9D40)) 
    \counter[0]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(out),
        .I3(counter[0]),
        .O(\counter[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hD3F32000)) 
    \counter[1]_i_1 
       (.I0(counter[0]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(out),
        .I4(counter[1]),
        .O(\counter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF70FFF0F08000000)) 
    \counter[2]_i_1 
       (.I0(counter[1]),
        .I1(counter[0]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(out),
        .I5(counter[2]),
        .O(\counter[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(ckin),
        .CE(1'b1),
        .D(\counter[0]_i_1_n_0 ),
        .Q(counter[0]),
        .R(rset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(ckin),
        .CE(1'b1),
        .D(\counter[1]_i_1_n_0 ),
        .Q(counter[1]),
        .R(rset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(ckin),
        .CE(1'b1),
        .D(\counter[2]_i_1_n_0 ),
        .Q(counter[2]),
        .R(rset));
  LUT5 #(
    .INIT(32'hFF00B8FF)) 
    tx_INST_0
       (.I0(tx_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(tx_INST_0_i_2_n_0),
        .I3(state[1]),
        .I4(state[0]),
        .O(tx));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    tx_INST_0_i_1
       (.I0(tx_data_reg[7]),
        .I1(tx_data_reg[6]),
        .I2(counter[1]),
        .I3(tx_data_reg[5]),
        .I4(counter[0]),
        .I5(tx_data_reg[4]),
        .O(tx_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    tx_INST_0_i_2
       (.I0(tx_data_reg[3]),
        .I1(tx_data_reg[2]),
        .I2(counter[1]),
        .I3(tx_data_reg[1]),
        .I4(counter[0]),
        .I5(tx_data_reg[0]),
        .O(tx_INST_0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    tx_busy_INST_0
       (.I0(state[0]),
        .I1(state[1]),
        .O(tx_busy));
  LUT3 #(
    .INIT(8'h02)) 
    \tx_data_reg[7]_i_1 
       (.I0(tx_start),
        .I1(state[1]),
        .I2(state[0]),
        .O(\tx_data_reg[7]_i_1_n_0 ));
  FDRE \tx_data_reg_reg[0] 
       (.C(ckin),
        .CE(\tx_data_reg[7]_i_1_n_0 ),
        .D(tx_data[0]),
        .Q(tx_data_reg[0]),
        .R(rset));
  FDRE \tx_data_reg_reg[1] 
       (.C(ckin),
        .CE(\tx_data_reg[7]_i_1_n_0 ),
        .D(tx_data[1]),
        .Q(tx_data_reg[1]),
        .R(rset));
  FDRE \tx_data_reg_reg[2] 
       (.C(ckin),
        .CE(\tx_data_reg[7]_i_1_n_0 ),
        .D(tx_data[2]),
        .Q(tx_data_reg[2]),
        .R(rset));
  FDRE \tx_data_reg_reg[3] 
       (.C(ckin),
        .CE(\tx_data_reg[7]_i_1_n_0 ),
        .D(tx_data[3]),
        .Q(tx_data_reg[3]),
        .R(rset));
  FDRE \tx_data_reg_reg[4] 
       (.C(ckin),
        .CE(\tx_data_reg[7]_i_1_n_0 ),
        .D(tx_data[4]),
        .Q(tx_data_reg[4]),
        .R(rset));
  FDRE \tx_data_reg_reg[5] 
       (.C(ckin),
        .CE(\tx_data_reg[7]_i_1_n_0 ),
        .D(tx_data[5]),
        .Q(tx_data_reg[5]),
        .R(rset));
  FDRE \tx_data_reg_reg[6] 
       (.C(ckin),
        .CE(\tx_data_reg[7]_i_1_n_0 ),
        .D(tx_data[6]),
        .Q(tx_data_reg[6]),
        .R(rset));
  FDRE \tx_data_reg_reg[7] 
       (.C(ckin),
        .CE(\tx_data_reg[7]_i_1_n_0 ),
        .D(tx_data[7]),
        .Q(tx_data_reg[7]),
        .R(rset));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
