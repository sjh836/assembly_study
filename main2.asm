MAIN SEGMENT public
ASSUME CS:MAIN, DS:MAIN

EXTRN ADD2:far, TABLE1:WORD
PUBLIC DATA3

ADD1: MOV AX, CS
MOV DS, AX
MOV AX, DATA1
ADD AX, DATA2
MOV DATA3, AX
CALL ADD2

MOV AH, 4CH
INT 21H

DATA1 DW ADD2
DATA2 DW TABLE1
DATA3 DW ?

MAIN ENDS
END