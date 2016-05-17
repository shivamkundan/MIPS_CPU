`timescale 1ns / 1ps

//Shivam Kundan
//ECE329, Spring 2016
//Final Project, Sign Extend Module


module SignExtend(input [15:0] a, 
					   output [31:0] result);

assign result = {{16{a[15]}}, {a[15:0]}};

endmodule
