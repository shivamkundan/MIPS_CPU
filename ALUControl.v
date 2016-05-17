`timescale 1ns / 1ps

//Shivam Kundan
//ECE329 Spring'16
//Final Project, ALU Control Module

/*This file implements a MIPS ALU control module.*/

module ALUControl(input wire [5:0] FUNCT, 
						input wire [1:0] OPCODE, 
						output reg [3:0] CTLOUT
						);

reg [3:0] Function;

always @(*)
	begin
		case(FUNCT[3:0])
			4'b0000: Function = 4'b0010;	//Add
			4'b0010: Function = 4'b0110;	//Sub
			4'b0100: Function = 4'b0000;	//And
			4'b0101: Function = 4'b0001;	//Or
			4'b0110: Function = 4'b1101;	//Nand
			4'b0111: Function = 4'b1100;	//Nor
			4'b1010: Function = 4'b0111;	//slt
			default: Function = 4'b0000;
		endcase
	end
always@(*)
	begin
		case(OPCODE)
			4'b0000: CTLOUT = 4'b0010;//Add
			4'b0010: CTLOUT = Function;
			default: CTLOUT = 0;
		endcase
	end
endmodule
