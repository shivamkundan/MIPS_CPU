`timescale 1ns / 1ps

//Shivam Kundan
//ECE329 Spring'16
//Final Project, Instruction Memory

/*This module implements a 32x32-bit MIPS register file.*/
module RegFile(input CLK,
					input RegWrite, 
					input [4:0] ReadRegister1, 
					input [4:0] ReadRegister2, 
					input [4:0] WriteRegister, 
					input [31:0] WriteData, 
					output [31:0] ReadData1, 
					output [31:0]ReadData2
					);

reg [31:0] Regist [31:0];	//Internal rgisters
integer i;						//Used for initializing

//All registers contain 0 initially
initial
	begin
		for(i = 0; i < 32; i = i + 1)
			Regist[i] = 32'b0;
	end

always @(posedge CLK)
	if (RegWrite) Regist[WriteRegister] = WriteData;				//Write operation
	assign ReadData1 = ReadRegister1 ? Regist[ReadRegister1]:0;	//Read operation
	assign ReadData2 = ReadRegister2 ? Regist[ReadRegister2]:0;	//Read operation

endmodule
