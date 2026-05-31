
org 100h

MOV AX, 02AFh
MOV BX, 1123h

; XOR
;MOV CX, AX
;XOR CX, BX

; XNOR
;MOV DX, CX
;NOT DX


; boolean expression solve
; simplified = A(~B) + C

MOV CX, 2216h
NOT BX
AND AX, BX
OR AX, CX
MOV DX, AX

ret




