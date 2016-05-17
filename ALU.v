`timescale 1ns / 1ps

//Shivam Kundan
//ECE329 Spring'16
//Final Project, ALU Module

/*This module implements an ALU.*/

module ALU(input [3:0] CTL, 
			  input [31:0] A, 
			  input [31:0] B, 
			  output reg [31:0] OUT, 
			  output ZERO
			  );
	
	assign ZERO=(0==OUT);
	
	always @(*)
		begin
			case(CTL)
				4'b0000: OUT = A & B;			//And
				4'b0001: OUT = A | B;			//Or
				4'b0010: OUT = A + B;			//Add
				4'b0110: OUT = A - B;			//sub
				4'b0111: OUT = (A < B) ? 1:0;	//Set less than
				4'b1100: OUT = ~(A | B);		//Nor
				4'b1101: OUT = ~(A & B);		//Nand
				default: OUT = 0;
			endcase
		end
endmodule
