`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:14:14 02/26/2015 
// Design Name: 
// Module Name:    Logica 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module logica(
input wire bebe, puerta,en,clk,
input wire [4:0] temp,
output reg actala, actvent, actavis
);


wire [1:0] s;

Comparador5b mod (.temp(temp),.mayor25(s[0]),.mayor28(s[1])) ;


always @(posedge clk)begin
  
if (~en) begin
         actavis = 1'b0;
         actala = 1'b0;
         actvent = 1'b0;
   end
  
   else begin
       actavis = bebe & puerta;
       actala = bebe & s[0];
       actvent = bebe & s[1];   
		 end
		 end
endmodule		 

