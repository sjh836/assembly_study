CODE SEGMENT
ASSUME CS:CODE, DS:CODE

MOV AX, CS ; 오퍼랜드로 세그먼트를 2개 쓸수없기때문에 이렇게 옮겨주는 과정이 필요
MOV DS, AX ; 데이터세그먼트를 코드세그먼트와 같은 위치를 가르키게 함
MOV CX, 100
MOV AX, 0 ; 변수 초기화

NEXT : ADD AX, CX
DEC CX
CMP CX, 0
JGE NEXT ; CX가 0보다 크거나 같다면 NEXT로 분기해라
MOV TOTAL, AX

MOV AH, 4CH
INT 21H

TOTAL DW ?
CODE ENDS
END 