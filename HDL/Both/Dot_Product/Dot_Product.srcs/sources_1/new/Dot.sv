`timescale 1ns / 1ps
module Dot
	#(parameter 
		N = 1, 
		IW = 1,
		V = 0, 
		BPC = 1, 
		OW = ((N-1) < 2**$clog2(N)) ? 2*IW + $clog2(N) : 2*IW+ $clog2(N) + 1
	)(
		input logic clkin,
		input logic trigg,
		input logic signed [IW-1:0] VectorA [N - 1:0],
		input logic signed [IW-1:0] VectorB [N - 1:0],
		output logic trigger,
		output logic [BPC-1:0] Res
    );	
		
	logic signed [2*IW-1:0] Aux [N - 1:0];
	logic signed [OW-1:0] Suma;
	logic [BPC-OW-1:0] Zeros=0;
	logic [BPC-OW-1:0] Ones='1;
	
	logic rst=0;
	
	assign Res = Suma[OW-1]==0 ? {Zeros,Suma} : {Ones,Suma};

	typedef enum logic [1:0] {IDLE, SEND} state;
	state actual, proximo; 
	
	always_ff @(posedge clkin)
		if (rst) begin 
			actual <= IDLE;
		end
		else begin
			actual <= proximo;
		end
	
	
	always_comb begin
		case (actual) 
			IDLE: begin
				trigger=0;
				if (trigg) proximo = SEND;
				else proximo = IDLE;
			end
			SEND: begin
				trigger=1;
				proximo = IDLE;
			end
			default: begin
				trigger=0;
				proximo = IDLE;
			end
		endcase
	end
	
	generate
	
	   if(V==0) begin
	       Product_latency #(.N(N), .IW(IW))
           Product_latency(
               .clk(clkin),
               .A(VectorA),
               .B(VectorB),
               .Res(Aux)
           );
               
           Atree_latency #(.N(N), .IW(2*IW))
           Atree_latency (
               .clk(clkin), 
               .data(Aux), 
               .res(Suma)
           );
	   end
	   else begin
	       Product_throughput #(.N(N), .IW(IW))
           Product_throughput(
              .clk(clkin),
              .A(VectorA),
              .B(VectorB),
              .Res(Aux)
           );
              
           Atree_throughput #(.N(N), .IW(2*IW))
           Atree_throughput (
              .clk(clkin), 
              .data(Aux), 
              .res(Suma)
           );
	   end
	
	endgenerate

endmodule
