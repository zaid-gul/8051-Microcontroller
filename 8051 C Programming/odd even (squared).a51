ORG 0000H
MOV DPTR,#200H
HERE:
MOV A,P0
CALL CHECK
ANL A,#0X0F
MOVC A,@A+DPTR
JMP HERE
ORG 200H
DB 0,1,4,9,16,25,36,49,64,81,100,121,144,169,196,225
CHECK:
clr P2.0
clr P2.1
clr P2.2
clr P2.3
clr P2.4
clr P2.5
clr P2.6
clr P2.7
clr P1.0
clr P1.1
clr P1.2
clr P1.3
clr P1.4
clr P1.5
clr P1.6
clr P1.7
clr C
MOV C,P0.0
JNC DOWN
MOV P1,P0
JMP DOWN1
DOWN:
MOV P2,P0
DOWN1:
RET 
END