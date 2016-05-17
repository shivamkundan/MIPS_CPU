`timescale 1ns / 1ps

//Shivam Kundan
//ECE329, Spring 2016
//Final Project, 2to1 Mux Module

/*This module implements a MIPS CPU control unit*/

module Control(input wire [5:0] Instruction, 
					output reg [1:0] ALUOp, 
					output reg MemRead, 
					output reg MemWrite, 
					output reg MemtoReg, 
					output reg RegDst, 
					output reg RegWrite, 
					output reg ALUSrc
					);

	
always @(*)
	begin
		ALUOp[1:0] = 2'b10;
		ALUSrc = 1'b0;
		MemRead = 1'b0;
		MemtoReg = 1'b0;
		MemWrite = 1'b0;
		RegDst = 1'b1;
		RegWrite = 1'b1;
		case(Instruction)
			6'b100011: begin //lw
								RegDst = 1'b0;
								ALUOp = 2'b00;
								ALUSrc = 1'b1;
								MemtoReg = 1'b1;
								RegWrite = 1'b1;
								MemRead = 1'b1;
								MemWrite = 1'b0;
							end
			6'b001000: begin //Addi
								RegDst = 1'b0;
								ALUOp = 2'b00;
								ALUSrc = 1'b1;
								MemtoReg = 1'b0;
								RegWrite = 1'b1;
								MemRead = 1'b0;
								MemWrite = 1'b0;
							end
			6'b101011: begin //sw
								RegDst = 1'bx;
								ALUOp = 2'b00;
								ALUSrc = 1'b1;
								MemtoReg = 1'bx;
								RegWrite = 1'b0;
								MemRead = 1'b0;
								MemWrite = 1'b1;
							end
			6'b000000: begin //R
								RegDst = 1'b1;
								ALUOp = 2'b10;
								ALUSrc = 1'b0;
								MemtoReg = 1'b0;
								RegWrite = 1'b1;
								MemRead = 1'b0;
								MemWrite = 1'b0;
							end
		endcase
	end
endmodule
