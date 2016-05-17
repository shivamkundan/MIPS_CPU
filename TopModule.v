`timescale 1ns / 1ps

//Shivam Kundan
//ECE329 Spring'16
//Final Project, Top Module

/*Implementation of a MIPS CPU with branch and jump instructions.*/

module TopModule(input CLK, 
					  output wire [31:0] Instruct, 
					  output wire [31:0] MUX_OUT, 
					  output wire [31:0] RegFile_Out, 
					  output wire [31:0]ALUResult, 
					  output wire [31:0]RegsWriteData, 
					  output ZERO
					  );

//Internal connections
wire MemRead, MemtoReg, MemWrite, RegDst, ALUSrc, RegWrite;
wire [1:0] ALUOp;
wire [3:0] ALUctlOUT;
wire [4:0] MUXOut1;
wire [31:0] ReadData2, SignEOut, DataMemRead;
wire [7:0] PCOutWire;




//Instantiate IM
InstructionMemory IM_0(PCOutWire[7:2], 
							Instruct
							);
							
//Instantiate program counter
PC PC_0(CLK, 			
				PCOutWire
				);	


//Instantiate Register File
RegFile RegFile_0(CLK, 
				RegWrite, 
				Instruct[25:21], 
				Instruct[20:16], 
				MUXOut1, 
				RegsWriteData, 
				MUX_OUT, 
				ReadData2
				);

//Instantiate mux0
MUX2to1_5bit Mux_0(Instruct[20:16], 
					  Instruct[15:11], 
					  MUXOut1, 
					  RegDst
					  );



//Instantiate Sign Extend Module
SignExtend SignExtend_0(Instruct[15:0], 
				  SignEOut
				  );

MUX2to1_32bit Mux_1(ReadData2, 
						 SignEOut, 
						 RegFile_Out, 
						 ALUSrc
						 );

//Instantiate ALU
ALU ALU_0(ALUctlOUT, 
			MUX_OUT, 
			RegFile_Out, 
			ALUResult, 
			ZERO
			);


//Instantiate ALU Control
ALUControl ALU_Control_0(Instruct[5:0],
					 ALUOp, 
					 ALUctlOUT
					 );

//Instantiate Data Memory
DataMemory DM_0(CLK, 
				  ALUResult[7:0], 
				  MemRead, 
				  MemWrite, 
				  ReadData2, 
				  DataMemRead
				  );

MUX2to1_32bit Mux_2(ALUResult, 
							 DataMemRead, 
							 RegsWriteData, 
							 MemtoReg
							 );
							 
//Instantiate Control Unit
Control Control_0(Instruct[31:26], 
			 ALUOp, 
			 MemRead, 
			 MemWrite, 
			 MemtoReg, 
			 RegDst, 
			 RegWrite, 
			 ALUSrc
			 );

endmodule
