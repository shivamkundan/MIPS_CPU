# MIPS_CPU

Implementation of a MIPS CPU using Verilog.


Table 1. Alu Operations -
ALU Operation	Function
0000	        AND
0001	        OR
0010	        add
0110	        subtract
0111	        set on less than
1100	        NOR
1101	        NAND

Table 2. R Type Instruction Format -
   0  |   rs  |   rt  |   rd  |   shamt  |   funct  |
31  26|	25  21|	20  16|	15  11|	10      6| 5       0|





8 or 35 or 43	rs	rt	address
31               26	25               21	20               16	15                                                                           0
Table 3. I Type Instruction Format
Opcode (Decimal)	Operation
8	addi
35	lw
43	sw
0	R-Type

Table 4. Opcodes needed


Continued on next page.
Required Instructions
lw
sw
add
sub
and
or
nor
slt
nand
addi
Table 5. Required Instructions


Instr (Op code)	RegDst	ALUSrc	MemtoReg	RegWrite	MemRead	MemWrite	ALUOp
R-format (0)	1	0	0	1	0	0	10
lw (35)	0	1	1	1	1	0	00
sw (43)	X	1	X	0	0	1	00
addi (8)	0	1	0	1	0	0	00
Table 7. Control Unit Truth Table



Operation (Op code)	ALUOp	Funct Field	Desired ALU Action	ALU Control Input
lw (35)	00	XXXXXX	add	0010
sw (43)	00	XXXXXX	add	0010
addi (8)	00	XXXXXX	add	0010
add (0)	10	100000	add	0010
sub (0)	10	100010	sub	0110
and (0)	10	100100	and	0000
or (0)	10	100101	or	0001
nor (0)	10	100111	nor	1100
slt (0)	10	101010	slt	0111
nand (0)	10	100110	nand	1101
Table 8. ALU Control Unit Truth Table
