`timescale 1ns / 1ps
module Main(
    input logic clkin,
    input logic uart_rx,
    output logic uart_tx
    );
// PARÁMETROS DEL PRODUCTO PUNTO (N, n , V)	
	localparam N=240;   // Tamaño de los dos vectores A y B que se procesarán        
	localparam n=8;     // Define el ancho en bits de cada elemento de A y B         
	localparam V=1;     // V=0 Minimizar latencia; V=1 Maximizar throughput          

// PARÁMETROS LOCALES
    localparam IW=n;         // Asignar el ancho n a la variable interna IW
	localparam BPC=8+2*IW;   // Tamaño en bits del resultado de producto punto 
	localparam NBY=IW/8;     // Número de bytes que llegarán desde el PC por cada elemento de A y B
	
// VARIABLES PARA EL MÓDULO CLOCK 
	logic clk;
	
//VARIABLES PARA EL MÓDULO UART PORT	
     logic rx_ready;
     logic tx_busy;
     logic tx_start;
     logic [7:0] rx_data;
     logic [7:0] tx_data; 	
	 
// VARIABLES PARA EL MÓDULO FLUJO 
	logic mrx_ready;;
	logic cmd_ready;;
	logic [7:0] mrx_data;
	logic [7:0] cmd_data;
	
// VARIABLES PARA EL MÓDULO COMMAND DECODER
	logic enableA, enableB;
	logic okA, okB, sel;
	logic [7:0] command, CMD;
	
// VARIABLES PARA EL MÓDULO TRIGGER
   logic trigger;	

	Clock Clock(
		.clk_out1(clk), 
		.clk_in1(clkin)
	);        
	   
	UartPort UartPort(
		.ckin(clk),          
		.rset(1'b0),              
		.rx(uart_rx),             
		.rx_data(rx_data),        
		.rx_ready(rx_ready),      
		.tx(uart_tx),             
		.tx_start(tx_start),      
		.tx_data(tx_data),        
		.tx_busy(tx_busy)         
	); 

	Flujo Flujo(
		.rx_ready(rx_ready),
		.rx_data(rx_data),
		.sel(sel),
		.mrx_ready(mrx_ready),
		.mrx_data(mrx_data),
		.cmd_ready(cmd_ready),
		.cmd_data(cmd_data)
	);	
   
	Cmd Cmd(
		.clkin(clk),
		.rx_ready(cmd_ready),
		.rx_data(cmd_data),
		.okA(okA),
		.okB(okB),
		.enableA(enableA),
		.enableB(enableB),
		.command(command),
		.sel(sel)
    );
  
	Trigger Trigger(
		.clkin(clk),
		.cmd(command),
		.trigger(trigger)
    );    
	
	Proceso #(.N(N), .IW(IW), .V(V), .BPC(BPC), .NBY(NBY))
	Proceso(
		.clk(clk),
		.trigger(trigger),
		.mrx_ready(mrx_ready),
		.mrx_data(mrx_data),
		.tx_busy(tx_busy),
		.enableA(enableA),
		.enableB(enableB),
		.tx_start(tx_start),
		.tx_data(tx_data),
		.okA(okA),
		.okB(okB)
    );
     
endmodule

