`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:38:50 02/28/2015 
// Design Name: 
// Module Name:    Salva_bebe 
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
module Salva_bebe( input wire [4:0] temp, input wire presencia, puerta,en,clk,reset, output wire [3:0] anodos,
 output wire [6:0] seg, output wire aaviso, vent,alarma
    ); 
 
//inicio
/*initial begin 

seg <= 7'b0000000;
end*/


//declaracion de señales

wire [3:0] s,unidades,decenas;
wire [2:0] a;
wire [1:0] contador;
wire [6:0] muxa,muxb,muxc,muxd;
//instanciacion  


divisorclk mod0(.clk(clk),.clk_out(s[3])); 

binary_toBCD mod4 (.Nb(temp),.Decenas(decenas), .Unidades(unidades));
BCD_to_7seg mod5 (.d(unidades), .seg(muxa) );
BCD_to_7seg mod6 (.d(decenas), .seg(muxb) );

logica mod1 ( .bebe(presencia), .puerta(puerta),.en(en),.clk(clk),.temp(temp), .actala(s[0]), .actvent(s[1]), .actavis(s[2]));
FSM mod2(.clk(clk),.reset(~en), .EN(en), .aviso(s[2]), .alarma(s[0]), .vent(s[1]),.alarm_ext(alarma), .alarm_int(aaviso), .venti(vent),
.salida(a));

letrato7seg mod7 (.estado(a),.clk(s[3]), .seg(muxc));//va el s3
estadoto7seg mod8 (.estado(a),.clk(s[3]), .seg(muxd));


Contador_2_Bits mod9(.clk_reloj(s[3]),.rst_reset(reset),.q(contador) );//va el s3
Mux4bits mod10 (.a(muxa),.b(muxb),.c(muxc),.d(muxd), .clk(s[3]),.sel(contador),.anodos(anodos),.seg(seg));//va el s3



//control7seg mod3(.estado(a), .clk(s[3]), .anodos(r), .seg(seg)); 
	 
/*assign anodos[3]=1'b1;
assign anodos[2]=1'b1;
assign anodos[1]=r[1];
assign anodos[0]=r[0];*/




endmodule
