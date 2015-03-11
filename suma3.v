`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:52:42 02/22/2015 
// Design Name: 
// Module Name:    suma3 
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
module suma3( 
input wire [3:0] d,
output reg [3:0] q
); 
// body 
always @(d)
	case (d)
	4'b0000: q <= 4'b0000;
	4'b0001: q <= 4'b0001;
	4'b0010: q <= 4'b0010;
	4'b0011: q <= 4'b0011;
	4'b0100: q <= 4'b0100;
	4'b0101: q <= 4'b1000;
	4'b0110: q <= 4'b1001;
	4'b0111: q <= 4'b1010;
	4'b1000: q <= 4'b1011;
	4'b1001: q <= 4'b1100;
	default: q <= 4'b0000;
	endcase 
endmodule
