`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:31:07 03/02/2015
// Design Name:   Contador_2_Bits
// Module Name:   C:/Users/Deykel/Documents/tec/1 semestre 2015/lab digitales/primer proyecto/BCD/Binary_to_BCD/testbenchcontador.v
// Project Name:  Binary_to_BCD
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Contador_2_Bits
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbenchcontador;

	// Inputs
	reg clk_reloj;
	reg rst_reset;

	// Outputs
	wire [1:0] q;

	// Instantiate the Unit Under Test (UUT)
	Contador_2_Bits uut (
		.clk_reloj(clk_reloj), 
		.rst_reset(rst_reset), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		clk_reloj = 0;
		rst_reset = 0;

		// Wait 100 ns for global reset to finish
		
        
		// Add stimulus here

	end
      initial forever #10 clk_reloj=~clk_reloj;
endmodule

