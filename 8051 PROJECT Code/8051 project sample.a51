ORG 00H
MOV P1,#11111111B   // initializes P1 as input port
MOV P0,#00000000B   // initializes P0 as output port
MOV P3,#00000000B   // initializes P3 as output port
     // loads the address of "LABEL" to DPTR
MAIN: MOV R4,#250D  // loads register R4 with 250D
      CLR P2.0    // makes Cs=0
      SETB P2.1   // makes RD high
      CLR P2.2     // makes WR low
      SETB P2.2     // low to high pulse to WR for starting conversion
WAIT: JB P2.3,WAIT  // polls until INTR=0
      CLR P2.0      // ensures CS=0
      CLR P2.1      // high to low pulse to RD for reading the data from ADC
      MOV A,P1      // moves the digital output of ADC to accumulator A
	  ;Reading done
MOV P0,A 

end