`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:03:22 10/15/2021
// Design Name:   task01
// Module Name:   C:/Users/Diana/Desktop/facultate/anul 3/lab00/test_task01.v
// Project Name:  lab00
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: task01
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_task01;

	// Inputs
	reg [7:0] op0;
	reg [7:0] op1;
	reg [1:0] sel;

	// Outputs
	wire [15:0] res;

	// Instantiate the Unit Under Test (UUT)
	task01 uut (
		.res(res), 
		.op0(op0), 
		.op1(op1), 
		.sel(sel)
	);

	initial begin
		// Initialize Inputs
		op0 = 5;
		op1 = 10;
		sel = 2;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

