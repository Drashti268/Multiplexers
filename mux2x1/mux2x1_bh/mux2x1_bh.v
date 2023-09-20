`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:42:44 05/25/2023 
// Design Name: 
// Module Name:    mux2x1_bh 
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
module mux2x1_bh(i0,i1,s,y);
input i0,i1,s;
output reg y;
always @ (i0,i1,s)
begin
if(s==0)
y=i0;
if(s==1)
y=i1;
end

endmodule
