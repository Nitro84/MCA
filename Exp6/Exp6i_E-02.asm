; Experiment  6 Timer Interrupts
; LERORRODRIGUES_E-02

	ORG	0000H
	LJMP	MAIN

	ORG	001BH		;ISR TF1
	CPL	P2.5

	MOV	TH1, #0F0H	;delay of 4ms
	MOV	TL1, #060H
	RETI



	ORG	0040H
MAIN:

	MOV	TMOD, #10H	;Set timer 1 to ,mode
	MOV	TH1, #0F0H	;delay of 4ms
	MOV	TL1, #060H
	SETB	TR1		;start Timer 1
	MOV	IE, #88H	;Enabling TF1 Interrupt

Label:
	MOV	A, #55H		;infinite loop
	DEC	A
	MOV	B, A
	DEC	B
	SJMP	Label