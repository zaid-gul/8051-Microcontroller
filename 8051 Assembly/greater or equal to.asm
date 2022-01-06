ORG 00H

MOV P0,#0FFH; setting the port 0 to input mode
MOV A,P0;getting the value on port P0 to acc register
ANL A,#0FH;disabling the higher byte of number as input<=15
MOV B,A;duplicating value for taking square
MUL AB;multiplying val
ACALL CHECK;calling the subr to check if greator than 100

CHECK:
CJNE A,#101,NOT_EQ
MOV P1,A
RET
NOT_EQ:
JC LESSTHAN
MOV P1,A
RET
LESSTHAN:
MOV P3,A
RET

END