`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:04:36 05/02/2016 
// Design Name: 
// Module Name:    PC 
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
module PC(CLK, PC);
	input CLK;
	output reg [7:0] PC;
	
	initial
		PC = 8'b11111100;
	always @(posedge CLK)
		begin
			PC = PC + 8'b00000100;
		end

endmodule
