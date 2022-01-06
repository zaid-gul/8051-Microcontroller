ORG 0000H
MOV DPTR,#200H ;load ROM pointer
HERE:
ORL P0,#0FH ;internally pull up
ANL P0,#0FH ; masking of MSB
MOV A,P0 ;moving data from port 1 to A
MOVC A,@A+DPTR ;index addressing, direct to the rom location of 200H+value of A
CALL CHECK ;calling subroutine
JMP HERE ; to make loop continuous
ORG 200H ; directive for data byte
DB 0D,1D,4D,9D,16D,25D,36D,49D,64D,81D,100D,121D,144D,169D,196D,225D ; Look-up table
CHECK: ;subroutine
CJNE A,#100,NOT_EQ ;compare and jump if not equal
MOV P3,A ; displaying on port 3 A=100
RET ;return
NOT_EQ: ; if A<100
JC LESS_THAN ;jump if carry is set
MOV P1,A ; displaying on port 1 A>100
RET ;return
LESS_THAN:
MOV P3,A ; displaying on port 3 A<100
RET ;return
END ;end program