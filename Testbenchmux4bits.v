`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:18:34 03/03/2015
// Design Name:   Mux4bits
// Module Name:   C:/Users/Deykel/Documents/tec/1 semestre 2015/lab digitales/primer proyecto/BCD/Binary_to_BCD/Testbenchmux4bits.v
// Project Name:  Binary_to_BCD
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Mux4bits
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Testbenchmux4bits;

	// Inputs
	reg [6:0] a;
	reg [6:0] b;
	reg [6:0] c;
	reg [6:0] d;
	reg clk;
	reg [1:0] sel;

	// Outputs
	wire [3:0] anodos;
	wire [6:0] seg;

	// Instantiate the Unit Under Test (UUT)
	Mux4bits uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.clk(clk), 
		.sel(sel), 
		.anodos(anodos), 
		.seg(seg)
	);

	initial begin
		// Initialize Inputs
		a = 7'b000000;
		b = 7'b000001;
		c = 7'b000010;
		d = 7'b000011;
		clk = 0;
		sel = 0;
		
		#50 sel=2'b00;
		#50 sel=2'b01;
		#50 sel=2'b10;
		#50 sel=2'b11;
		
		

		// Wait 100 ns for global reset to finish
		//#100;
        
		// Add stimulus here

	end
      initial forever #10 clk=~clk;
endmodule

