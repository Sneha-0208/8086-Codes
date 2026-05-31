
org 100h

MOV DI, 2000h
MOV AL, 06h
MOV BL, 05h
MOV AH, 00h
MOV BH, 00h

MUL BL
MOV [DI], AX

MOV AL, 06h
DIV BL

ADD DI, 02h
MOV [DI], AL
MOV [DI+1], AH

ret