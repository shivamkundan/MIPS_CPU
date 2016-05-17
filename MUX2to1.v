`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:55:03 05/02/2016 
// Design Name: 
// Module Name:    MUX2to1 
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
module MUX2to132bit(D0, D1, OUT, SEL);
	input [31:0] D0, D1;
	input SEL;
	output [31:0] OUT;
	
	assign OUT = (SEL == 0) ? D0:D1;

endmodule
