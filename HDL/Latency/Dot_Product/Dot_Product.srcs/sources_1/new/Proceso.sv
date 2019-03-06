`timescale 1ns / 1ps
module Proceso
	#(parameter 
		N = 1, 
		IW = 1, 
		BPC = 1,
		NBY = 1		
	)(
		input logic clk,
		input logic trigger,
		input logic mrx_ready,
		input logic [7:0] mrx_data,
		input logic tx_busy,
		input logic enableA,
		input logic enableB,
		output logic tx_start,
		output logic [7:0] tx_data,
		output logic okA,
		output logic okB
    );
	
//VARIABLES PARA EL MÓDULO SAVE
	logic signed [IW-1:0] DatoA [N - 1:0];
	logic signed [IW-1:0] DatoB [N - 1:0]; 
		
//VARIABLES PARA EL MÓDULO SENDER
	logic ttrigger;
	logic signed [BPC-1:0] Res;
	
	Save #(.N(N), .IW(IW), .NBY(NBY))
	SaveA(
		.clkin(clk),
		.enable(enableA),
		.rx_ready(mrx_ready),
		.rx_data(mrx_data),
		.Dato(DatoA),
		.populate_ok(okA)
    ); 
	
	Save #(.N(N), .IW(IW), .NBY(NBY))
	SaveB(
		.clkin(clk),
		.enable(enableB),
		.rx_ready(mrx_ready),
		.rx_data(mrx_data),
		.Dato(DatoB),
		.populate_ok(okB)
    ); 
		
	
	Dot #(.N(N), .IW(IW), .BPC(BPC)) 
	Dot_Product(
		.clkin(clk),
		.trigg(trigger),
		.VectorA(DatoA),
		.VectorB(DatoB),
		.trigger(ttrigger),
		.Res(Res)
    );
	
	
	Sender # (.BPC(BPC))
	Sender(
		.clkin(clk),
		.tx_busy(tx_busy),
		.trigger(ttrigger),
		.Res(Res),
		.tx_start(tx_start),
		.tx_data(tx_data)
    );	
endmodule
