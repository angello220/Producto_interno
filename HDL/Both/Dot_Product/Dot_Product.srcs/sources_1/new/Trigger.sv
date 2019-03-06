`timescale 1ns / 1ps
 module Trigger(
     input logic clkin,
     input logic [7:0] cmd,
     output logic trigger
 );
     logic [7:0] actual, nuevo;
     assign nuevo=cmd;
     
     always_ff @(posedge clkin)
         if (actual==nuevo) begin
             trigger <=1'd0;
         end
         else begin
             actual<=nuevo;
             case (nuevo)
                 3: trigger <=1'd1;
                 default: begin
                     trigger <=1'd0;
                 end
             endcase
         end
 endmodule