; 4개의 숫자 50H,60H,80H,F0H를 합하여 ANS에 저장

MAIN SEGMENT
ASSUME CS:MAIN, DS:MAIN

MOV AX, CS
MOV DS, AX
MOV AX, 0
MOV DX, 0

MOV DL, VAR1 ; 시험문제: 이런거 하나 딱 찝어서 이게 무슨 지정방식인가? 메모리 직접 주소방식
ADD AX, DX ; 레지스터 직접 주소 지정 방식
MOV DL, VAR2
ADD AX, DX
MOV DL, VAR3
ADD AX, DX
MOV DL, VAR4
ADD AX, DX
MOV ANS, AX

MOV AH, 4CH
INT 21H

VAR1 DB 50H
VAR2 DB 60H
VAR3 DB 80H
VAR4 DB 0F0H
ANS DW ?

MAIN ENDS
END