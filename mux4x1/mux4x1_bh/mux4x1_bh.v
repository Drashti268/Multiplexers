`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:27:52 05/25/2023 
// Design Name: 
// Module Name:    mux4x1-_bh 
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
module mux4x1_bh(i,s0,s1,y);
input [3:0]i;
input s0,s1;
output reg y;
always @ (*)
begin 
case (s0|s1)
2'b00 : y<=i[0];
2'b01 : y<=i[1];
2'b10 : y<=i[2];
2'b11 : y<=i[3];
endcase
end



endmodule
