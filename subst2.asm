MAIN SEGMENT public
ASSUME CS:MAIN, DS:MAIN

EXTRN DATA3:WORD
PUBLIC ADD2, TABLE1

ADD2 PROC far ; 프로시저 정의
	PUSH AX
	MOV AX, TABLE1
	ADD AX, POINT1
	MOV SUM, AX
	POP AX
	RET
ADD2 ENDP

TABLE1 DW 100
POINT1 DW DATA3
SUM DW ?

MAIN ENDS
END