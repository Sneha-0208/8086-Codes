
org 100h

MOV DI, 1000h
MOV CX, 7
MOV AX, 1
MOV BX, 1

fact:MOV [DI], AX
     ADD DI, 02h
     INC BX
     MUL BX
     
     DEC CX
     JNZ fact

ret