`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:39:00 10/15/2021
// Design Name:   task02
// Module Name:   C:/Users/Diana/Desktop/facultate/anul 3/lab00/test_task02.v
// Project Name:  lab00
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: task02
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_task02;

	// Inputs
	reg in;
	reg reset;
	reg clk;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	task02 uut (
		.in(in), 
		.reset(reset), 
		.clk(clk), 
		.out(out)
	);
	
	always begin
        #5 clk = ~clk;
   end

	initial begin
		// Initialize Inputs
		in = 1;
		reset = 1;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		reset = 0;
        
		// Add stimulus here

	end
      
endmodule

