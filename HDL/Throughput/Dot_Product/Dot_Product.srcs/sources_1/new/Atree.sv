// Módulo Adder Tree. Referencia en https://opencores.org/ 
module Atree	
	#(parameter 
		N = 1, 
		IW = 1, 
		OW = ((N-1) < 2**$clog2(N)) ? IW + $clog2(N) : IW+ $clog2(N) + 1
	)(
		input logic clk,
		input logic signed [IW-1:0] data [N-1:0],
		output logic signed [OW-1:0] res
	);
	generate
		// Si N=2 entonces se instancia al módulo que suma dos elementos
		if (N == 2)
			add #(.AW(IW), .BW(IW), .OW(OW))
			add_inst(
				.clk(clk), 
				.a(data[0]), 
				.b(data[1]), 
				.res(res)
			);
		// Si N es mayor que 2 se divide la suma en partes. Con N par se divide
		// se realizan N/2 sumas, donde el vector resultante de es pasado de nuevo
		// al módulo adder tree para volver a realizar el proceso hasta que N=2 y 
		// entonces de llega el caso anterior, y finalmente se obtiene un resultado.
		else
			begin
				localparam OEW = (OW > IW + 1) ? IW + 1 : OW;
				localparam ORE = (N % 2 == 0) ? N/2 : N/2 + 1;
				logic signed [OEW-1:0] t_res [ORE - 1:0];
				
				pairs #(.N(N), .IW(IW), .OW(OEW))
				pairs(
					.clk(clk),  
					.data(data), 
					.res(t_res)
				);
				
				Atree #(.N(ORE), .IW(OEW))
				Atree(
					.clk(clk), 
					.data(t_res), 
					.res(res)
				);
			end
	endgenerate
	
endmodule :Atree

// Módulo que instancia N veces al módulo que suma parejas de números.
// Cuando N es impar el último dato del vector es colocado al final del}
// del vector resultante de esa manera se suman todos los elementos.

module pairs #(parameter N = 1, IW = 1, OW = IW + 1, RS = (N % 2 == 0) ? N/2 : N/2 + 1)(
	input clk,
	input signed [IW-1:0] data [N - 1:0],
	output signed [OW-1:0] res [RS - 1:0]
);
	genvar i;	
	generate
		for (i = 0; i < N/2; i++) begin 
			add #(.AW(IW), .BW(IW), .OW(OW))
			add(
				.clk(clk), 
				.a(data[2*i]), 
				.b(data[2*i + 1]), 
				.res(res[i])
			);
		end		
		if (RS == N/2 + 1) begin
			logic [OW-1:0] t_res;
			always_ff @(posedge clk)
				t_res <= data[N-1];
			assign res[RS-1] = t_res;
		end
	endgenerate
endmodule :pairs

// Módulo encargado de sumar dos números res <= a + b;
module add #( parameter AW = 1, BW = 1, OW = (AW > BW) ? AW + 1 : BW + 1)(
	input logic clk,
	input logic signed [AW-1:0] a,
	input logic signed [BW-1:0] b,
	output logic signed [OW-1:0] res
);
	always_ff @(posedge clk)
		res <= a + b;
endmodule :add



