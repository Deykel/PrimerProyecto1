`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:43:43 02/24/2015 
// Design Name: 
// Module Name:    BCD_to_7seg 
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
module BCD_to_7seg(input wire [3:0] d,
//input wire [3:0] inan,
//output wire [3:0] outan,
output reg [6:0] seg // seg será a,b,c,d,e,f,g,h de los 7 segmentos siendo a el menos significativo
    );
	 
wire [3:0] s;
/*assign s[0]=inan[0];
assign s[1]=inan[1];
assign s[2]=inan[2];
assign s[3]=inan[3];
assign outan[0]=s[0];
assign outan[1]=s[1];
assign outan[2]=s[2];
assign outan[3]=s[3];*/
	 
// body 
always @(d)
	case (d)
	4'b0000: seg <= 7'b0000001;
	4'b0001: seg <= 7'b1001111;
	4'b0010: seg <= 7'b0010010;
	4'b0011: seg <= 7'b0000110;
	4'b0100: seg <= 7'b1001100;
	4'b0101: seg <= 7'b0100100;
	4'b0110: seg <= 7'b1100000;
	4'b0111: seg <= 7'b0001111;
	4'b1000: seg <= 7'b0000000;
	4'b1001: seg <= 7'b0001100;
	default: seg <= 7'b1001000;
	endcase 

endmodule
