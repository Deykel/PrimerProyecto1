`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:28:14 02/23/2015
// Design Name:   binary_toBCD
// Module Name:   C:/Users/Deykel/Documents/tec/1 semestre 2015/lab digitales/primer proyecto/BCD/Binary_to_BCD/test_BCD.v
// Project Name:  Binary_to_BCD
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: binary_toBCD
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_BCD;

	// Inputs
	reg [4:0] Nb;

	// Outputs
	wire [3:0] Decenas;
	wire [3:0] Unidades;

	// Instantiate the Unit Under Test (UUT)
	binary_toBCD uut (
		.Nb(Nb), 
		.Decenas(Decenas), 
		.Unidades(Unidades)
	);
	
   
	initial begin
		// Initialize Inputs
		Nb = 0;

		// Wait 100 ns for global reset to finish
		//#100;
        
		// Add stimulus here
		#20 Nb = 5'b00000;
		#20 Nb = 5'b11111;
		#20 Nb = 5'b10101;
		#20 Nb = 5'b11000;
		#20 Nb = 5'b10110;
		#20 Nb = 5'b11001;
		#20 Nb = 5'b01101;
		#20 Nb = 5'b01110;
		#20 Nb = 5'b11100;
		#20 Nb = 5'b11110;
		#20 Nb = 5'b01011;
		

	end
      
endmodule

/*module USReguster_Test_Bench;

	// Inputs
	reg clk;
	reg reset;
	reg [7:0] d;
	reg [1:0] ctrl;

	// Outputs
	wire [7:0] q;

	// Instantiate the Unit Under Test (UUT)
	Universal_Shift_Register uut (
		.clk(clk), 
		.reset(reset), 
		.d(d), 
		.ctrl(ctrl), 
		.q(q)
	);

	initial forever #10 clk = ~clk;
	
	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		d = 0;
		ctrl = 0;

		// Wait 100 ns for global reset to finish
		#50 reset = 0;
		#20 d = 8'hf0;
		#20 ctrl = 2'b11; //aquí tiene que cargar el f0
		#20 ctrl = 2'b00; //No haga nada
		#40 d = 8'h01; 
		#20 ctrl = 2'b01; //haga desplazamiento hacia la izquierda
		#100 reset = 1;
		
		
        
		// Add stimulus here

	end
      
endmodule

*/
