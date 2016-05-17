`timescale 1ns / 1ps

//Shivam Kundan
//ECE329 Spring'16
//Final Project, Data Memory

/*This file implements a MIPS data file.*/

module DataMemory(input wire CLK, 
						input wire [7:0] Address, 
						input wire rd, 
						input wire wr, 
						input wire [31:0] WriteData, 
						output wire [31:0] ReadData
						);
	

reg [31:0] Mem [255:0]; //Internal registers
integer i;

	always @(posedge CLK)
		begin
			if(wr)
				begin
					Mem[Address] = WriteData;
				end
		end
	assign ReadData = wr ? WriteData: Mem[Address][31:0];
		

endmodule
