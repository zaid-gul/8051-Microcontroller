ORG 0000H
HERE:
ORL P0,#0FH   	;internally pull up
ANL P0,#0FH     ;masking of MSB
CALL CHECK		;calling of subroutine 
JMP HERE		; to make loop continuous
CHECK:          ;subroutine
JNB P0.0,DOWN    ;jumps if bit is 0
SETB RS0          ;rs0=1
CLR RS1           ;rs1=0
MOV R5,P0  ; odd number stored in R5 of bank 1
JMP DOWN1        
DOWN:           
CLR RS0       ;rs0=0
SETB RS1		;rs1=1
MOV R5,P0  ;even number stored in in R5 of bank 2
DOWN1:     
RET         ;return
END       ;end program