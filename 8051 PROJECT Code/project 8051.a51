ORG 00H
MOV P1,#11111111B
MAIN: CLR P3.7 // makes CS=0
      SETB P3.6 // makes RD high
      CLR P3.5 // makes WR low
	
      SETB P3.5 // low to high pulse to WR for starting conversion
WAIT: JB P3.4,WAIT // polls until INTR=0
      CLR P3.7 // ensures CS=0

      CLR P3.6 // high to low pulse to RD for reading the data from ADC
      MOV A,P1 // moves the digital data to accumulator
  // complements the digital data (*see the notes)
      MOV P0,A // outputs the data to P0 for the LEDs
      SJMP MAIN // jumps back to the MAIN program
	  
DELAY: MOV R6,#250D
       MOV R7,#250D
       RET
	  END