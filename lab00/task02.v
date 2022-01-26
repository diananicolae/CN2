`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:38:35 10/15/2021 
// Design Name: 
// Module Name:    task02 
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
module task02(
	input in,
	input reset,
	input clk,
	output out
    );
	 
	 reg [7:0] tmp;
	 
	 always @(posedge clk) begin
		if (reset)
			tmp = 8'b0;
		else begin
			tmp = {tmp[6:0], in};
		end
	 end
	 
	 assign out = tmp[7];

endmodule
