ORG 00H
MOV A,#38H   
ACALL CMD
MOV A,#0EH   
ACALL CMD
MOV A,#01H   
ACALL CMD
MOV A,#06H   ;increment
ACALL CMD
MOV A,#0EH    ;display on cursor on
ACALL CMD
MOV A ,#82H   
ACALL CMD
MOV A,#'H'
ACALL DT
ACALL DELAY
MOV A ,#84H
ACALL CMD
MOV A,#'E'
ACALL DT
ACALL DELAY
MOV A ,#86H
ACALL CMD
MOV A,#'L'
ACALL DT
ACALL DELAY
MOV A ,#88H
ACALL CMD
MOV A,#'L'
ACALL DT
ACALL DELAY
MOV A,#8AH
ACALL CMD
MOV A,#'O'
ACALL DT
ACALL DELAY
MOV A ,#0C4H
ACALL CMD
MOV A,#'U'
ACALL DT
ACALL DELAY
MOV A ,#0C6H
ACALL CMD
MOV A,#'E'
ACALL DT
ACALL DELAY
MOV A ,#0C8H
ACALL CMD
MOV A,#'T'
ACALL DT
ACALL DELAY
CMD:
MOV P1,A
CLR P2.0
CLR P2.1
SETB P2.2
ACALL DELAY
CLR P2.2
RET
DT:
MOV P1,A
SETB P2.0
CLR P2.1
SETB P2.2
ACALL DELAY
CLR P2.2
RET
DELAY:  MOV R6,#250D
        MOV R7,#250D
LABEL1: DJNZ R6,LABEL1
LABEL2: DJNZ R7,LABEL2
RET      
END