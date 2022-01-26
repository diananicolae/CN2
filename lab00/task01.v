`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:56:18 10/15/2021 
// Design Name: 
// Module Name:    task01 
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
module task01(
	output reg [15:0] res,
	input [7:0] op0,
	input [7:0] op1,
	input [1:0] sel
	);
	
	reg [7:0] i;
	always @(*) begin
		case (sel)
			2'b00: res <= op0 % op1;
			2'b01: begin
				res = 0;
				for (i = op0; i <= op1; i = i + 1) begin
					res = res + i;
				end
			end
			2'b10: begin
				res = 0;
				for (i = op0; i <= op1; i = i + 1) begin
					res = res + i;
				end
				res = res / (op1 - op0 + 1);
			end
		endcase
	end


endmodule
