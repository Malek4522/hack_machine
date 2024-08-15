// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

//// Replace this comment with your code.

(LOOP_LISTEN)
@KBD
D=M
@NOT_PRESSED
D;JEQ

@x
M=-1
@PRESSED
0;JMP

(NOT_PRESSED)
@x
M=0
(PRESSED)

@8192
D=A
@i
M=D

@SCREEN
D=A
@n
M=D

(COLOR_CHANGE_LOOP)
@x
D=M

@n
A=M
M=D

@n
M=M+1

@i
M=M-1
D=M
@COLOR_CHANGE_LOOP
D;JGT





@LOOP_LISTEN
0;JMP
