`timescale 1ns / 1ps
module Cmd(
    input logic clkin,
    input logic rx_ready,
    input logic [7:0] rx_data,
	input logic okA,
	input logic okB,
    output logic enableA,
    output logic enableB,
    output logic [7:0] command,
	output logic sel
    );
       
    always_ff @(posedge clkin) begin 
        if (rx_ready) begin
			case (rx_data) 
				8'd1: begin 
					sel=1'b1;
					enableA<=1'b1;
					enableB<=1'b0;
					command<=8'd1;
				end
				8'd2: begin 
					sel=1'b1;
					enableA<=1'b0;
					enableB<=1'b1;
					command<=8'd2;
				end
				8'd3: begin
					sel=1'b0;
					enableA<=1'b0;
					enableB<=1'b0;
					command<=8'd3;
				end
				default: begin 
					sel=1'b0;
					enableA<=1'b0;
					enableB<=1'b0;
					command<=8'd0;
				end
			endcase 
        end 
		if (okA==1'b1 || okB==1'b1) begin
			sel=1'b0;
			enableA<=1'b0;
			enableB<=1'b0;
		end
    end
		
endmodule


