
org 100h

MOV [1000h], 23h

;1's complement 

MOV BL, [1000h]
MOV BH, 00h
NOT BL

; 2's complement
MOV AL, [1000h]
MOV AH, 00h
NEG AL

ret




