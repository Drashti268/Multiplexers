`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:37:56 05/25/2023 
// Design Name: 
// Module Name:    mux4x1_using_2x1 
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
module mux4x1_using_2x1(i,s,y);
input [3:0]i;
input [1:0]s;
output y;
wire t1,t2;
mux2x1_bh M1(i[0],i[1],s[0],t1);
mux2x1_bh M2(i[2],i[3],s[0],t2);
mux2x1_bh M3(t1,t2,s[1],y);




endmodule
