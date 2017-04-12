; 키보드로 부터 입력 받은 문자 중 대문자를 소문자로 변환

MAIN SEGMENT
ASSUME CS:MAIN

L1: MOV AH, 1
INT 21H
CMP AL, 1AH ; ctrl+z이면 종료
JE FIN ; FIN으로 분기
CMP AL, 'A'
JB L2
CMP AL, 'Z'
JA L2
SUB AL, 'A'-'a'

L2: MOV DL, AL ; 출력
MOV AH, 2
INT 21H
JMP L1 ; 무조건 분기

FIN: MOV AH, 4CH
INT 21H

MAIN ENDS
END