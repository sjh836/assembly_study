### 8086 어셈블리어 프로그래밍 링크 : [TIL자료](https://github.com/sjh836/TIL/tree/master/assembly)

## 1. DOSBox 란?
도스박스(DOSBox)는 MS-DOS 기반의 IBM PC 호환기종 프로그램이 동작할 수 있도록 도스 환경을 구현해 주는 x86 에뮬레이터이다. (출처: 위키백과)

## 2. 명령어 도움말
* INTRO
* HELP

## 3. 기본 명령어
* 전체화면 : alt + enter
* 스크린샷 : ctrl + F5 , 저장되는 경로: C:\Users\이정훈\AppData\Local\DOSBox\capture
* 자동mount : C:\Users\이정훈\AppData\Local\DOSBox\dosbox-0.74.conf 의 맨 밑에 [autoexec]에 추가하면 된다.
* 끝내기 : ctrl + F9

* mount 가상드라이브명 실제경로 ex) mount c d:\DOSBox
* cd 디렉터리 : 이동
* mem : 남은 메모리 확인
* dir : 디렉터리 내용 확인

## 4. 어셈블 과정
* masm 파일.asm : 어셈블러 실행 → 파일.obj 생성
* link 파일 : 링커 실행 → 파일.exe 생성
* 파일.exe : 파일 실행

## 5. 디버그
### debug 파일.exe 로 진입
* -u : 기계어 코드 확인
* -u0 : 0번지부터 다시 확인
* -u 시작번지 끝번지 : 범위내 기계어 확인
* -r : 레지스터 내용확인 및 변경
* -r 레지스터 : 특정 레지스터만 조회 및 변경
* -g : 실행명령
* -g=시작번지,끝번지 : 범위내 실행
* -t : 라인 단위로 실행
* -d : 메모리 덤프 확인
* -q : 빠져나오기

디버그 모드에서 어셈블리어는 기계어를 단순히 해석해서 나온 것뿐이다. 레이블이 지정된 데이터 값도 기계어로 해석한다. 제일 많이 보는것은 0000을 `ADD [BX+SI], AL` 로 해석하는 것ㅋㅋ

ex)

![디버그](http://img1.daumcdn.net/thumb/R1920x0/?fname=http%3A%2F%2Fcfile24.uf.tistory.com%2Fimage%2F230FCA3E58E4CFA32A997B)

빨간 박스 안에 `076A:0000 B241 MOV DL,41` 는 각각 **코드세그먼트 값:IP레지스터 값(오프셋) 기계어 어셈블리어** 이다.