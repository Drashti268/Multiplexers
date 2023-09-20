`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:27:47 05/25/2023
// Design Name:   mux8x1_bh
// Module Name:   /home/ise/Desktop/Verilog/mux8x1/mux8x1_bh/mux8x1_tb.v
// Project Name:  mux8x1_bh
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux8x1_bh
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux8x1_tb;

	// Inputs
	reg [7:0] i;
	reg [2:0] s;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	mux8x1_bh uut (
		.i(i), 
		.s(s), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		i = 0;
		s = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		i=8'b10000000; s=3'b000; #10;
		i=8'b11110001; s=3'b001; #10;
		i=8'b00000010; s=3'b010; #10;
		i=8'b00000011; s=3'b011; #10;
		i=8'b00000100; s=3'b100; #10;
		i=8'b01111101; s=3'b101; #10;
		i=8'b00101110; s=3'b110; #10;
		i=8'b01111111; s=3'b111; #10;
	end
	initial 
	begin
	$monitor ($time,"i=%b,s=%b,y=%b",i,s,y);
	#10; $finish;
	end
      
endmodule

