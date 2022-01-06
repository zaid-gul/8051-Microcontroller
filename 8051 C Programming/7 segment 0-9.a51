ORG 0000H
START:	
MOV R0,#10   ; counter
MOV DPTR,#200H	;load ROM pointer
HERE:	
CLR A          ;A=0
MOVC A,@A+DPTR	   ;index addressing, direct to the rom location of 200H+value of A
MOV P2,A	;Display on port 2
ACALL DELAY    ;Calling subroutine
INC DPTR        ;increasing value
DJNZ R0,HERE     ; decrement and jump if not zero 
SJMP START      ;make loop continuous
ORG 200H          ; directive for data byte
DB 3FH,06H,5BH,4FH,66H,6DH,7DH,07H,7FH,6FH      ;look-up table
DELAY: MOV R4,#05H ; subroutine for delay 1/2 sec
WAIT1: MOV R3,#00H
WAIT2: MOV R2,#00H
WAIT3: DJNZ R2,WAIT3     ; decrement and jump if not zero  
DJNZ R3,WAIT2             ; decrement and jump if not zero 
DJNZ R4,WAIT1         ; decrement and jump if not zero       
RET             ;return
END   ;end program