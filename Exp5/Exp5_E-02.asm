;LEROYRODRIGUS_E-02
;EXP 5 TIMER

	ORG	0000H
	LJMP	MAIN


	ORG	0050H
MAIN:
	MOV	TMOD, #10H	;TIMER 1 MOD 1
	MOV	TH1, #0FFH	;LOAD TIMER 1 WITH 65526
	MOV	TL1, #0E2H
	SETB	TR1		;STARTING TIMER
DBIT:	JNB	TF1, dbit
	END