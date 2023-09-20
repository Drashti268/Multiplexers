`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:59:34 05/25/2023 
// Design Name: 
// Module Name:    mux4x1_df 
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
module mux4x1_df(i,s0,s1,y);
input [3:0]i;
input s0,s1;
output y;
 //assign y= ((~s0&~s1&i[0]) | (~s1&s0&i[1]) | (s1&~s0&i[2]) | (s1&s0&i[3]));
 assign y= s1?(s0?i[0]:i[1]):(s0?i[2]:i[3]);

endmodule
