ORG 0000H
MOV DPTR,#200H
HERE:
ORL P0,#0FH
ANL P0,#0FH
MOV A,P0
MOVC A,@A+DPTR
CALL CALCULATE
JMP HERE
ORG 200H
DB 0D,1D,4D,9D,16D,25D,36D,49D,64D,81D,100D,121D,144D,169D,196D,225D
CALCULATE:      ;subroutine
MOV P1,A        ;moving value from A to Port1   (temporarily)
CLR A             ;A=0
MOV R0,#1         ;Assigning a value to R0
JNB P1.0,DOWN0     ; jump if bit is zero
ADD A,R0            ;Adding R0 and A
JMP DOWN0
DOWN0:
JNB P1.1,DOWN1        ; jump if bit is zero
ADD A,R0 			;Adding R0 and A
JMP DOWN1
DOWN1:
JNB P1.2,DOWN2       ; jump if bit is zero
ADD A,R0 				;Adding R0 and A
JMP DOWN2
DOWN2:
JNB P1.3,DOWN3       ; jump if bit is zero
ADD A,R0 				;Adding R0 and A
JMP DOWN3
DOWN3:
JNB P1.4,DOWN4       ; jump if bit is zero
ADD A,R0           ;Adding R0 and A
JMP DOWN4
DOWN4:
JNB P1.5,DOWN5      ; jump if bit is zero
ADD A,R0             ;Adding R0 and A
JMP DOWN5
DOWN5:
JNB P1.6,DOWN6       ; jump if bit is zero
ADD A,R0               ;Adding R0 and A
JMP DOWN6
DOWN6:
JNB P1.7,RESULT      ; jump if bit is zero
ADD A,R0                 ;Adding R0 and A
JMP RESULT       
RESULT:
MOV P2,A              ; final calculated answer is stored in P2
RET             ;return
END     ; end program