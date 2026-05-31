
org 100h


MOV AX, 260     ; FORWARD BIAS APPLIED VOLTAGE, Vd (in mV)
MOV BX, 2       ; DIODE IDEALITY FACTOR
MOV CX, 26      ; THERMAL VOLTAGE, Vt (in mV)

DIV BX
DIV CX

MOV BX, AX   ; STORES x = 5 (X = Vd / n.Vt)   
MOV CX, 1   ; STORE COUNTER 
MOV BP, 1   ; STORE FACTORIAL
MOV SI, 1   ; STORE POWER OF X
MOV DI, 1   ; STORE RESULT (STARTS WITH 1)

power: MOV AX, BP
       MUL CX
       MOV BP, AX   ; FACTORIAL STORED IN BP
       
       MOV AX, SI
       MUL BX       ; POWER OF 5 COMPUTED 
       MOV SI, AX   ; STORE POWER OF 5 IN SI
       
       ; TO CALCULATE THE TERM
       MOV AX, SI   
       XOR DX, DX
       DIV BP       ; AX = QUOTIENT, DX = REMAINDER
       
       ADD DI, AX   ; ANSWER STORED IN DI
       

       INC CX
       
       CMP CX, 4
       JL power

; ANS OBTAINED = 38, EXACT ANSWER = 39.3 
ret