        ;INTR signal P1.3
 
	adc_port equ P1      ;ADC data pins P2
	adc_val equ A       ;ADC read value stored here
 
	org 0H
start:                    ;Start of Program
	acall conv            ;Start ADC conversion
	acall read            ;Read converted value
	mov P0,adc_val        ;Move the value to Port 3
	sjmp start            ;Do it again
 
conv:                     ;Start of Conversion
	clr P3.7              ;Make CS low
	clr P3.5                 ;Make WR Low
	nop
	setb P3.5                ;Make WR High
	setb P3.7               ;Make CS high
wait:
	jb P3.4,wait          ;Wait for INTR signal
	ret                   ;Conversion done
 
read:                     ;Read ADC value
	clr P3.7                ;Make CS Low
	clr P3.6                ;Make RD Low
	mov a,adc_port        ;Read the converted value
	         ;Store it in local variable
	setb P3.6              ;Make RD High
	setb P3.7               ;Make CS High
	ret                   ;Reading done
	end