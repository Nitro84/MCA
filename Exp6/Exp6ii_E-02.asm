;EXP 6 Case 2: EXTERNAL INTERRUPTS INT0
;LEROYRODRIGUS_E-02

	ORG	0000H
	LJMP	MAIN


	ORG	0003H   ;INT0 ISR LOCATION
	CPL	P2.5
	RETI

	ORG	0040H
MAIN:
	MOV	IE, #81H ;ENABLING EX0


NANAWARE:
	CPL	P1.2
	SJMP	NANAWARE

	END

