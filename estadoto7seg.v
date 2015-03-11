`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:04:14 03/02/2015 
// Design Name: 
// Module Name:    estadoto7seg 
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
module estadoto7seg(input wire [2:0] estado,input wire clk, output reg [6:0] seg
    );



initial begin 

seg <= 7'b0000000;
end


always @(posedge clk) begin
case(estado) 

3'b000:begin 
seg <= 7'b1100010;
end

3'b001:begin 
seg <= 7'b1001111;
end


3'b010:begin 
seg <= 7'b0010010;
end

3'b011:begin 
seg <= 7'b0000110;
end


3'b100:begin 
seg <= 7'b1001100;
end




default: seg <= 7'b1111000;





endcase



end






endmodule
