
org 100h
  
MOV 1000h, 32h
MOV 1001h, 21h
MOV AL, [1000h]
MOV BL, [1001h]
MOV AH, 00h
MOV BH, 00h

MOV DI, 2000h

OR AX, BX
MOV DI, AX

ret




