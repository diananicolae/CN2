`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:44:39 10/15/2021 
// Design Name: 
// Module Name:    task03 
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
module task03(
	input in,
	input reset,
	input clk,
	output out
	);
	 
	task02 shift_reg(in, reset, clk, out);
	 
	always @(posedge clk) begin
		if (reset)
		else begin
		end
	end

endmodule
