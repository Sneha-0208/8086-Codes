
org 100h

MOV DI, 2000h
MOV CX, 18
MOV AX, 00h
MOV BX, 01h
MOV [DI], AX
ADD DI, 02h
MOV [DI], BX
ADD DI, 02h

fib:ADD AX, BX
    MOV DX, AX
    MOV [DI], DX
    ADD DI, 02h
    MOV AX, BX
    MOV BX, DX
    
    DEC CX
    JNZ fib

ret