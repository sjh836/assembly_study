; 무조건 분기, 키보드로 부터 입력 받은 문자 중 소문자를 대문자로 변환

MAIN SEGMENT
ASSUME CS:MAIN

L1: MOV AH, 1 ; AH=1하고 INT 21H하면 키보드로부터 문자를 입력받아 AL에 넣어준다
INT 21H
CMP AL, 1AH ; ctrl+z이면 종료
JE FIN ; FIN으로 분기
CMP AL, 'a'
JB L2
CMP AL, 'z'
JA L2
SUB AL, 'a'-'A'

L2: MOV DL, AL ; 출력
MOV AH, 2
INT 21H
JMP L1 ; 무조건 분기

FIN: MOV AH, 4CH
INT 21H

MAIN ENDS
END