// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.

//// Replace this comment with your code.

@R2
M=0 //initialization 


@R0
D=M
@END
D;JEQ //r0=0

@R1
D=M
@END
D;JEQ //r1=0

//else


@R1
D=M
@i
M=D //i=y

(LOOP)
@i
D=M
@END
D;JLE //exit condition(i<=0 )

@R0
D=M
@R2
M=D+M

@i
M=M-1 //i--

@LOOP
0;JMP





(END)
@END
0;JMP