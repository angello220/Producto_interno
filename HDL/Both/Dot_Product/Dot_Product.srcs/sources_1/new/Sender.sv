`timescale 1ns / 1ps
module Sender
	#(parameter 
		BPC = 1, 
		S=BPC/8
	)(
		input logic clkin,
		input logic tx_busy,
		input logic trigger,
		input logic [BPC-1:0] Res,
		output logic tx_start,
		output logic [7:0] tx_data
    );
	
	typedef enum logic [1:0] {IDLE,SEND, SEND2} state;
	state actual, proximo; 
	
	logic rst=0;
	logic [7:0] txdata;
	logic [7:0] data [S-1:0];
	logic [7:0] temp [S-1:0];
	logic [1:0] upto;
	logic [9:0] count=10'd0;
	
	assign tx_data=txdata;
	assign {>>{temp}} = Res;
	assign {<<byte{data}} = temp;
				
	always_ff @(posedge clkin)
		if (rst) begin 
			actual <= IDLE;
		end
		else begin
			actual <= proximo;
		end
	
	always_ff @(posedge clkin) begin
		if (upto==0) count<=count;
		else if (upto==1) count<=count+10'd1;
		else count<=0;
	end
					
	always_comb begin
		case (actual) 
			IDLE: begin
				txdata=0; tx_start =0; upto=2;
				if (trigger) begin
					proximo = SEND;
				end
				else proximo = IDLE;
			end
			SEND: begin
				if (tx_busy) begin 
					tx_start =0; txdata=0;  upto=0;
					proximo = SEND; 
				end
				else begin 
					tx_start =1; upto=0;
					txdata=data[count]; 
					proximo = SEND2; 
				end
			end
			SEND2: begin
				tx_start =0; txdata=0; upto=1;
				if (count==S-1) begin
					proximo = IDLE;
				end
				else begin
					proximo = SEND;
				end
			end
			default: begin
				txdata=0; tx_start =0; proximo=IDLE; upto=2;
			end
		endcase
    end		
endmodule

