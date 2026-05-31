
org 100h

MOV [5200h], 01h
MOV [5201h], 02h
MOV [5202h], 03h
MOV [5203h], 04h
MOV [5204h], 05h
MOV [5205h], 06h
MOV [5206h], 07h
MOV [5207h], 08h
MOV [5208h], 09h
MOV [5209h], 0Ah

MOV CX, 0Ah
MOV SI, 5200h
MOV BL, 01h
MOV BH, 00h

increment: MOV AX, [SI]
           ADD AL, BL
           MOV [SI], AX 
           INC BL
           INC SI
           loop increment



hlt