`timescale 1ns / 1ps

module Save 
	#(parameter 
		N = 1, 
		IW = 1,
		NBY = 1
	)(
		input logic clkin,
		input logic enable,
		input logic rx_ready,
		input logic [7:0] rx_data,
		output logic signed [IW-1:0] Dato [N - 1:0],
		output logic populate_ok
    ); 
	
	logic rst=0;
	logic [1:0] subir, setear, upto, asignar;
	logic [7:0] Dato_six [NBY-1:0];
	logic [IW-1:0] Datosix;
	logic [9:0] counter=10'd0;
	logic [9:0] count=10'd0;
  
	typedef enum logic [3:0] {IDLE, CHECK, VECTOR, SAVE1, SAVE2} state;
	state actual, proximo; 
	
	always_ff @(posedge clkin) begin
		if (rst) begin 
			actual <= IDLE;
		end
		else begin
			actual <= proximo;
		end
	end
	
	always_ff @(posedge clkin) begin
		if (subir==0) counter<=counter;
		else if (subir==1) counter<=counter+10'd1;
		else counter<=0;
	end
	
	always_ff @(posedge clkin) begin
		if (upto==0) count<=count;
		else if (upto==1) count<=count+10'd1;
		else count<=0;
	end
	
	always_ff @(posedge clkin) begin
		if (asignar==0) Dato_six<=Dato_six;
		else if (asignar==1) Dato_six[count]<=rx_data;
		else Dato_six[count]<=0;
	end
		
	always_ff @(posedge clkin) begin
		if (setear==0) Dato <= Dato;
		else if (setear==1) begin
		  Datosix <= {<<8{Dato_six}};
        end
		else Dato[counter] <= Datosix;
	end
	
	always_comb begin
		case (actual) 
			IDLE: begin
				populate_ok<=1'b0; subir=2; 
				asignar=2; setear = 0;	upto=2;			
				if (enable) proximo = SAVE1;
				else proximo = IDLE;
			end
			SAVE1: begin
				populate_ok<=1'b0; subir=0; setear = 0; upto=0;
				if (rx_ready) begin 
					proximo = SAVE2; asignar=1;
				end
				else begin 
					proximo = SAVE1; asignar=0;
				end
			end
			SAVE2: begin
				populate_ok<=1'b0; subir=0; setear = 0; upto=1;
				if (count==NBY-1) begin 
					proximo = VECTOR; asignar=0;
				end
				else begin 
					proximo = SAVE1; asignar=0;
				end
			end
			VECTOR: begin
				populate_ok<=1'b0; subir=0; 
				asignar=0; setear = 1;  upto=2;
				proximo = CHECK; 				
			end
			CHECK: begin
				asignar=0; setear = 2; upto=2;
				if (counter==N-1) begin 
					populate_ok<=1'b1; subir=0;
					proximo = IDLE; 
				end
				else begin 
					populate_ok<=1'b0; subir=1;
					proximo = SAVE1; 
				end
			end			
			default: begin
				populate_ok<=1'b0; subir=0;
				asignar=0; setear = 0;  upto=2;
				proximo = IDLE; 
			end
		endcase
	end	
		
endmodule
