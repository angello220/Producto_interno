`timescale 1ns / 1ps
(* use_dsp = "yes" *)module Product  //
	#(parameter 
		N = 1, 
		IW = 1 
	)(
		input logic clk,
		input logic signed [IW-1:0] A [N - 1:0],
		input logic signed [IW-1:0] B [N - 1:0],
		output logic signed [2*IW-1:0] Res [N - 1:0]
    );
	integer i;
	logic signed [2*IW-1:0] Aux [N - 1:0]; 
	
	always_comb begin
		for (i=0; i<N; i++) begin
			Aux[i]=A[i]*B[i];
		end
	end
	always_ff @(posedge clk) begin
		for (i=0; i < N; i++) begin
			Res[i]<=Aux[i];
		end
	end
endmodule

