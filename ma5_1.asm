ADDDATA MACRO ; 매크로 정의
ADD AX, DATA
ADD BX, DATA
ADD CX, DATA
ENDM

MAIN SEGMENT
ASSUME CS:MAIN, DS:MAIN
MOV AX, MAIN
MOV DS, AX

ADDDATA ; 매크로 호출
ADDDATA

MOV AH, 4CH
INT 21H

DATA DW 5

MAIN ENDS
END