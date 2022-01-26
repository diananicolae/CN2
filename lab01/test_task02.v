`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:06:11 10/22/2021
// Design Name:   task02
// Module Name:   C:/Users/Diana/Downloads/lab01_skel_2021_2/lab01_skel/test_task02.v
// Project Name:  lab01_skel
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
	reg clk;
	reg oe;
	reg cs;
	reg we;
	reg [6:0] address;
	reg [7:0] data_in;

	// Outputs
	wire [7:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	task02 uut (
		.clk(clk), 
		.oe(oe), 
		.cs(cs), 
		.we(we), 
		.address(address), 
		.data_in(data_in), 
		.data_out(data_out)
	);

	initial forever
        #5 clk = ~clk;
 
   initial begin
      // Initialize Inputs
      clk = 0;
      oe = 1;
      cs = 1;
 
      // write mode
      we = 1;
      address = 0;
      // TODO: mem[0] = 73;
		data_in = 15;
		
      #15;
      address = 1;
      // TODO: mem[1] = 19;
		data_in = 45;

      #10;
      address = 2;
      // TODO: mem[2] = 34;
		data_in = 33;
		
      #10;
		
		// Read the written values
      address = 0;
      we = 0;
      #10;
      address = 1;
      #10;
      cs = 0;
      address = 2;
      #10;
      oe = 0;
   end
 
      
endmodule

