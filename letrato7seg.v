`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:15:20 03/02/2015 
// Design Name: 
// Module Name:    letrato7seg 
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
module letrato7seg(input wire [2:0] estado,input wire clk, output reg [6:0] seg
    );


initial begin 

seg <= 7'b0000000;
end
always @(posedge clk) begin

case(estado) 
3'b000:begin 
seg <= 7'b1100010; // Nada 0
end

3'b001:begin 
seg <= 7'b0001000; //Aviso A
end


3'b010:begin 
seg <= 7'b0000111;//Cero C
end

3'b011:begin 
seg <= 7'b0110000; // emergencia E
end


3'b100:begin 
seg <= 7'b1000001; //ventilacion V
end




default: begin
seg <= 7'b1111111;
end




endcase



end





endmodule
