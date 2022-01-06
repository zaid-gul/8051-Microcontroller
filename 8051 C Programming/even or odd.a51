ORG 0000H
	HERE:
CALL CHECK
JMP HERE
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
	