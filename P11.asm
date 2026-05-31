
org 100h

MOV [3000h], 0F4h
MOV [3001h], 02h
MOV [3002h], 0F2h
MOV [3003h], 08h
MOV [3004h], 04h
MOV [3005h], 24h
MOV [3006h], 26h
MOV [3007h], 0E8h
MOV [3008h], 0D8h
MOV [3009h], 48h

MOV BP, 1000h
MOV SP, 1004h
MOV SI, 2000h
MOV DI, 2004h

;addition

MOV CX, 0Ah
MOV BX, 3000h
MOV AX, 0000h
CLC

sum: MOV DL, [BX]
     ADD AL, DL 
     ADC AH, 0
     INC BX
     loop sum

MOV [BP], AX  


;subtraction

MOV AL, [3000h]
MOV BL, [3001h]
SUB AL, BL 
MOV AH, 0 
MOV BX, SP
MOV [BX], AL


;multiplication

MOV AL, [3008h]
MOV BL, [3009h]
MUL BL
MOV [SI], AX
;MOV WORD PTR [SI], AX


;division

MOV AL, [3000h]
MOV AH, 0
MOV BL, [3001h]
DIV BL 
MOV [DI], AL
;INC DI
MOV [DI+1], AH 

hlt