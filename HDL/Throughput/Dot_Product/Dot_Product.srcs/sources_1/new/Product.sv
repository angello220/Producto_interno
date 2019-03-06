`timescale 1ns / 1ps
module Product  //
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
	genvar j;
	logic signed [2*IW-1:0] Aux [N - 1:0]; 
	
    generate
		for (j=0; j<N; j++) begin
			Prod Pairs (
              .CLK(clk),  
              .A(A[j]),      
              .B(B[j]),      
              .P(Aux[j])    
            );
		end
	endgenerate
	always_ff @(posedge clk) begin
		for (i=0; i < N; i++) begin
			Res[i]<=Aux[i];
		end
	end
endmodule

