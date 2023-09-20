`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:35:21 05/25/2023
// Design Name:   mux2x1
// Module Name:   /home/ise/Desktop/Verilog/mux2x1/mux2x1/mux2x1_tb.v
// Project Name:  mux2x1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux2x1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux2x1_tb;

	// Inputs
	reg i0;
	reg i1;
	reg s;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	mux2x1_bh uut (
		.i0(i0), 
		.i1(i1), 
		.s(s), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		i0 = 0; i1 = 0; s = 0;

		// Wait 100 ns for global reset to finish
		#100;
	   i0= 1; i1=0; s=0; #10;
		i0= 0; i1=1; s=0; #10;
		i0= 1; i1=0; s=1; #10;
		i0= 0; i1=0; s=1; #10;
		
		end
		initial
		begin
		$monitor ($time,"i0=%b,i1=%b,s=%b,y=%b",i0,i1,s,y);
		#10; $finish;
		end
		
      
endmodule

