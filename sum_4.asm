; 변수 BB의 200 에서 100 을 빼 그 결과를 변수 BB에 저장하는 프로그램

MAIN SEGMENT
ASSUME CS:MAIN, DS:MAIN

MOV AX, CS
MOV DS, AX ; 레지스터 직접 주소 지정방식
MOV AL, 100 ; BB가 1바이트이기 때문에 AL, 값 즉시 지정 방식
SUB BB, AL ; SUB BB, 100은 안되기때문에 레지스터를 거치는 과정을 필요로 한다.(메모리에 넣을땐 레지스터를 거쳐야 한다) 메모리 직접 주소 지정 방식

MOV AH, 4CH
INT 21H

BB DB 200 ; 200=C8H, 데이터 정의 지시어 변수 선언

MAIN ENDS
END