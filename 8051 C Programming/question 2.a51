ORG 0000H
MOV DPTR,#200H  ;load ROM pointer
ORL P0,#0FH     ;internally pull up
ANL P0,#0FH		; masking of MSB
HERE:
MOV A,P0		 ;moving data from port 1 to A
MOVC A,@A+DPTR	 ;index addressing, direct to the rom location of 200H+value of A
JMP HERE         ; to make loop continuous
ORG 200H		;directive for data byte
DB 0D,1D,4D,9D,16D,25D,36D,49D,64D,81D,100D,121D,144D,169D,196D,225D   ; Look-up table
END             ; END program