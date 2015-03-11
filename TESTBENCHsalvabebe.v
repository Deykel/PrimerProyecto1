`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:35:05 03/03/2015
// Design Name:   Salva_bebe
// Module Name:   C:/Users/Deykel/Documents/tec/1 semestre 2015/lab digitales/primer proyecto/BCD/Binary_to_BCD/TESTBENCHsalvabebe.v
// Project Name:  Binary_to_BCD
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Salva_bebe
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TESTBENCHsalvabebe;

	// Inputs
	reg [4:0] temp;
	reg presencia;
	reg puerta;
	reg en;
	reg clk;
	reg reset;

	// Outputs
	wire [3:0] anodos;
	wire [6:0] seg;
	wire aaviso;
	wire vent;
	wire alarma;

	// Instantiate the Unit Under Test (UUT)
	Salva_bebe uut (
		.temp(temp), 
		.presencia(presencia), 
		.puerta(puerta), 
		.en(en), 
		.clk(clk), 
		.reset(reset), 
		.anodos(anodos), 
		.seg(seg), 
		.aaviso(aaviso), 
		.vent(vent), 
		.alarma(alarma)
	);

	initial begin
		// Initialize Inputs
		temp = 0;
		presencia = 0;
		puerta = 0;
		en = 0;
		clk = 0;
		reset = 0;
      //seg = 7'b0000000;
		// Wait 100 ns for global reset to finish
		//#100;
        
		// Add stimulus here
		#100  presencia =1;
	         temp=5'b00000; // 0 grados		
		#100  puerta=1;
		      temp=5'b11001; //25grados
		#100  en=1;
		#100  puerta=0;
		#100  temp=5'b11011; //27 grados
		#100  temp=5'b11111; // 31 grados
		
		
		

	end
	
	initial forever #100 clk=~clk;
      
endmodule

