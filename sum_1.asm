MAIN SEGMENT
ASSUME CS:MAIN, DS:MAIN

MOV AX, CS ; 오퍼랜드로 세그먼트를 2개 쓸수없기때문에 이렇게 옮겨주는 과정이 필요
MOV DS, AX ; 데이터세그먼트를 코드세그먼트와 같은 위치를 가르키게 함
MOV CX, 1
MOV AX, 0 ; 변수 초기화

LOOP1 : ADD AX,  CX
INC CX
CMP CX, 100
JBE LOOP1
MOV SUM, AX

MOV AH, 4CH
INT 21H

SUM DW ?
MAIN ENDS
END 