ORG 00H
MAIN:	
CALL READ_ADC
CALL CHECK
JMP MAIN
READ_ADC:
MOV P1,P0
RET
CHECK:
JNB P1.0,DOWN
MOV P3,P1
JMP DOWN1
DOWN:
MOV P2,P1
DOWN1:
RET 
END