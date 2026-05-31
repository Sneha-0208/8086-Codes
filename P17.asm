
org 100h

MOV [1000h], 150    ; aspect ratio
MOV [1001h], 53     ; Un.Cox
MOV [1002h], 1      ; Vth
MOV [1003h], 4      ; Vgs in linear region
MOV [1004h], 4      ; Vgs in saturation region
MOV [1005h], 1      ; Vds in linear
MOV [1006h], 4      ; Vds in saturation

;drain current in linear region

MOV AL, [1000h]
MOV AH, 0
MOV CL, 2
DIV CL
MOV BL, [1001h]
MUL BL 

MOV CL, [1003h]
SUB CL, [1002h]
MOV DX, AX
MOV AL, CL
MOV BL, [1005h]
MUL BL 
MOV CL, 2
MUL CL

MOV BX, AX
MOV AH, 0
MOV AL, [1005h]
MUL AL

SUB BX, AX

MOV AX, DX
MUL BX

MOV [1007h], AL
MOV [1008h], AH

; ans = 4DA3h


; drain current in saturation

MOV DX, 0
MOV AL, [1000h]
MOV AH, 0
MOV BL, 2
DIV BL
MOV BL, [1001h]
MUL BL

MOV CL, [1004h]
SUB CL, [1002h]
MOV DX, AX
MOV AL, CL
MUL CL

MUL DX

MOV [1009h], AL
MOV [100Ah], AH

; ans = 8BBFh

ret