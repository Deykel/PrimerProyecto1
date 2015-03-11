`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:15:31 02/26/2015 
// Design Name: 
// Module Name:    FSM 
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
module FSM(

input wire clk, reset, EN, aviso, alarma, vent, 
output reg alarm_ext, alarm_int, venti,
output reg [2:0] salida
    );
	 
//declaración de la señal 

localparam [2:0] A=3'b000, B=3'b001, C=3'b010, D=3'b011, E=3'b100;
reg [2:0] estado, est_sig;

//registro de estado

always @(posedge clk/*, posedge reset*/)
if (reset)
estado <= A;
else
estado <= est_sig;

//lógica estado siguiente

always @(*)
begin
est_sig = estado;
alarm_int = 1'b0;
alarm_ext = 1'b0;
venti = 1'b0;
salida = 3'b000;
case (estado)
 A : 
 if (EN) 
 est_sig = B;
 else 
 est_sig = A;
 
 B : 
 if (aviso) 
 begin
 alarm_int = 1'b1;
 salida = 3'b001;
 est_sig = B;
 end
 else
 est_sig = C;
 
 C : 
 if (alarma) 
 est_sig = D;
 else
 begin
 salida = 3'b010;
 est_sig = C;
 end
 
 D : 
 if (vent) 
 est_sig = E;
 else 
 begin
 alarm_ext = 1'b1;
 salida = 3'b011;
 est_sig = D;
 end
 
 E : 
 if (alarma) 
 begin
 alarm_ext = 1'b1;
 venti = 1'b1;
 salida = 3'b100;
 est_sig = E;
 end
 else 
 est_sig = A;
 
 endcase
 end

endmodule
