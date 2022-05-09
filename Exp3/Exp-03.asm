; Leroy Rodrigues_E-02
; Exp-03 7 Segment Display
start:
MOV P1,#03FH ;Display 0
ACALL delay

MOV P1,#06H ;Display 1
ACALL delay

MOV P1,#05BH ;Display 2
ACALL delay

MOV P1,#04FH ;Display 3
ACALL delay

MOV P1,#066H ;Display 4
ACALL delay

MOV P1,#06DH ;Display 5
ACALL delay

MOV P1,#07DH ;Display 6
ACALL delay

MOV P1,#07H ;Display 7
ACALL delay

MOV P1,#07FH ;Display 8
ACALL delay

MOV P1,#06FH ;Display 9
ACALL delay

SJMP start

Delay:
MOV R0,#02H
repeat_again:
MOV A,#0FFH
repeat:
DEC A
JNZ repeat
DJNZ R0, repeat_again

ret

