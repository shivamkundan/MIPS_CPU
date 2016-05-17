//Shivam Kundan
//ECE329, Spring 2016
//Final Project, 2to1 Mux Module

//32-bit
module MUX2to1_32bit(D0, D1, OUT, SEL);
	input [31:0] D0, D1;
	input SEL;
	output [31:0] OUT;
	
	assign OUT = (SEL == 0) ? D0:D1;

endmodule


//5-bit
module MUX2to1_5bit(D0, D1, OUT, SEL);
	input [4:0] D0, D1;
	input SEL;
	output [4:0] OUT;
	
	assign OUT = (SEL == 0) ? D0:D1;

endmodule
