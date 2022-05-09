; LEROYRODRIGUES_E-02
; Exp-04 Flashing LEDs

start: MOV P2,#0FFH
CLR P2.1
CLR P2.4
ACALL delay

CLR P2.5
CLR P2.6
ACALL delay

CLR P2.7
CLR P2.2
ACALL delay
SJMP start

delay:
MOV R0,#02H
repeat_again:
MOV A,#0FFH
repeat:
DEC A
JNZ repeat
DJNZ R0,repeat_again
ret
end
