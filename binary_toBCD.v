`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:56:47 02/21/2015 
// Design Name: 
// Module Name:    binary_toBCD 
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



module binary_toBCD
(
  input wire [4:0] Nb,
  //input wire clk,
  output wire [3:0] Decenas, Unidades
    );
	 
// signal declaration

wire [3:0] s1,s2,s3,s4,s6;
wire [3:0] d1,d2,d3,d4,d5,d6;

// body 
//always @(posedge clk) begin
assign d1 = {3'b000,Nb[4]};
suma3 mod1 (d1,s1);
assign d2 = {s1[2:0],Nb[3]};
suma3 mod2 (d2,s2);
assign d3 = {s2[2:0],Nb[2]};
suma3 mod3 (d3,s3);
assign d4 = {s3[2:0],Nb[1]};
suma3 mod4 (d4,s4);
assign d5 = {s4[2:0],Nb[0]};
assign d6 = {2'b00,s3[3],s4[3]};
suma3 mod6 (d6,s6); 
//end
// next state logic
//output logic 
assign Decenas = s6;
assign Unidades = d5; 
 

endmodule

