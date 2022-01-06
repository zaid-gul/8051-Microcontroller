MOV A, #38H
		ACALL CMD
		MOV A, #0EH
		ACALL CMD
		MOV A, #01H
		ACALL CMD
		MOV DPTR,#mystring
		ACALL wrtstring
CMD: MOV P1,A
     CLR P2.0
	 CLR P2.1
	 SETB P2.2
	 ACALL DELAY
	 CLR P2.2
	 RET
	  	 
DAT:  MOV P1,A
      SETB P2.0
	  CLR P2.1
	  SETB P2.2
	  ACALL DELAY
	  CLR P2.2
	  RET
	 
DELAY:  MOV R1,#100
		MOV R2,#200
		
LOOP:   DJNZ R2,LOOP
		DJNZ R1,LOOP
		RET
			
wrtstring:	CLR A
			MOVC A,@A+DPTR
			JZ exit
			ACALL DAT
			INC DPTR
			SJMP wrtstring
				
exit:	RET
mystring:	DB"TAQI HAIDER 14-MCT-61"		
END