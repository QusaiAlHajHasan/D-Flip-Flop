`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:40:33 04/20/2020
// Design Name:   D_FF
// Module Name:   D:/Study/2019-2020/Second Semester/CPE433 - Advanced Digital/D-FlipFlop/D_FF_TB.v
// Project Name:  D-FlipFlop
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: D_FF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module D_FF_TB;

	// Inputs
	reg D;
	reg clk;
	reg asyncReset;

	// Outputs
	wire Q;

	// Instantiate the Unit Under Test (UUT)
	D_FF uut (
		.D(D), 
		.clk(clk), 
		.asyncReset(asyncReset), 
		.Q(Q)
	);

	initial begin
		// Initialize Inputs
		D = 0;
		clk = 0;
		asyncReset = 0;

		// Wait 100 ns for global reset to finish
		#10 D = 0; clk = 0; asyncReset = 1;
		#10 D = 0; clk = 1; asyncReset = 0;
		#10 D = 0; clk = 1; asyncReset = 1;
		#10 D = 1; clk = 0; asyncReset = 0;
		#10 D = 1; clk = 0; asyncReset = 1;
		#10 D = 1; clk = 1; asyncReset = 0;
		#10 D = 1; clk = 1; asyncReset = 1;
		$finish;
        
		// Add stimulus here

	end
      
endmodule

