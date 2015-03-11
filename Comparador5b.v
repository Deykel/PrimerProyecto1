`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:42:28 02/26/2015 
// Design Name: 
// Module Name:    Comparador5b 
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
module Comparador5b( input wire [4:0]temp, output reg mayor25,mayor28
    );

//declaracion de señales
//localparam tempcrit= 5'd25;
//localparam tempcrit2= 5'd28;

// cuerpo 
   always @*
      if (temp > 5'd25)
         mayor25 <= 1'b1;
      else
         mayor25 <= 1'b0;
			
	 always @*
      if (temp > 5'd28)
         mayor28 <= 1'b1;
      else
         mayor28 <= 1'b0;
		
endmodule
