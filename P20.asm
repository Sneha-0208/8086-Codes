
org 100h

MOV [1000h], 104    ; Small-signal base-emitter voltage, vbe (in mV)
MOV [1001h], 2      ; IDEALITY FACTOR
MOV [1002h], 26     ; THERMAL VOLTAGE, Vt (in mV)
MOV [1003h], 40     ; DC bias base current

MOV AL, [1000h]     
MOV BL, [1001h]     
MOV CL, [1002h]     
MOV AH, 0
MOV BH, 0
MOV CH, 0

DIV BX
DIV CX

MOV BX, AX   ; STORES x = 2 (X = vbe / n.Vt)   
MOV CX, 1   ; STORE COUNTER 
MOV BP, 1   ; STORE FACTORIAL
MOV SI, 1   ; STORE POWER OF X
MOV DI, 1   ; STORE RESULT (STARTS WITH 1)

power: MOV AX, BP
       MUL CX
       MOV BP, AX   ; FACTORIAL STORED IN BP
       
       MOV AX, SI
       MUL BX       ; POWER OF 2 COMPUTED 
       MOV SI, AX   ; STORE POWER OF 2 IN SI
       
       ; TO CALCULATE THE TERM
       MOV AX, SI   
       XOR DX, DX
       DIV BP       ; AX = QUOTIENT, DX = REMAINDER
       
       ADD DI, AX   ; ANSWER STORED IN DI
       

       INC CX
       
       CMP CX, 8
       JL power


;MULTIPLY BY I_BQ (DC Base-Current of BJT at the given bias Q-point) 
MOV BX, [1003h]
MOV AX, DI
MUL BX
MOV DI, AX
MOV [1004h], AL
MOV [1005h], AH

; ANS OBTAINED = 240 uA = F0, EXACT ANSWER = 281.92 uA = 119.EB8 
ret