`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:05:59 02/27/2015 
// Design Name: 
// Module Name:    divisorclk 
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
/*module divisorclk(input wire clock, output reg clock_o
    );
	 
integer A;	 
always@(posedge clock) begin

 if (A<32'd15250) begin 
 A=A+1;
 clock_o = 0;
 end
 else begin
 A=0;
 clock_o=1;
 end
 end

endmodule
*/





/*module divisorclk(
    input inclk,  
    output reg clk190,
    output reg clk25,
	 output wire clk
    );

reg [19:0] q;
reg clear;
localparam A= 20'b11111111111111111110;

initial begin
clear=1'b0;
q=20'd0;
end

//assign clk=inclk;

//contador de 18-bit
always @(posedge inclk)
    if (clear) begin
	 q<=20'd0;
	 clear =1'b0;
	 end
	 else begin
    if (A>q)begin
	 q <= q + 1;
	 end
	 else begin   
	//clk25  = q[5];    //50MHz/2^(0+1)=25MHz
	clk190 = q[17];   //50MHz/2^(0+17)=190Hz 
	clear =1'b1;	
	end
	end
endmodule */

/*module divisorclk(input clk, input reset, output reg clkout );

parameter period=50000;
parameter N=15;
parameter halfperiod= period/2;
reg [N:0] countvalue;


always @(posedge clk) begin
if (reset) begin 
countvalue=0;
clkout<=0;
end
else begin 
if (countvalue==period-1) begin
countvalue=0;
clkout<=0;
end
else countvalue=countvalue+1;
if(countvalue==halfperiod) clkout<=1;
end

end

endmodule */


 module divisorclk(input wire clk,output reg clk_out);
   
    reg rst;
    reg [10:0] counter;

initial begin
rst<=1;
counter<=11'd0;
clk_out <=1'b0;
end

    always @(posedge clk )
    begin
      if(!rst)
       begin
       rst=1; 
       counter<=11'd0;
       clk_out <= 1'b0;
       end
     else
       if(counter==11'd2047) //va convertir un clk de 100mhz a un 500hz
         begin
         counter<=11'd0;
         clk_out <= ~clk_out;
         end
      else
       begin
       counter<=counter+1'b1;
       end
   end


endmodule


