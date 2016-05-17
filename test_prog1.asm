#This is a sample assembly program to test the MIPS CPU.

#The relevant register output values are written as inline comments.

 
addi $t0, $zero, 5       #$t0 = 5
addi $t1, $zero, 6       #$t0 = 6

add $t3, $t0, $t1        #t3 = 11

sw $t3, 0($zero)         #Mem[0] = 11

lw $t4, 0($zero)         #t4 = 11

and $t5, $t0, $t4        #t5 = t0 & t4

slt $t6, $t0, $t5 
