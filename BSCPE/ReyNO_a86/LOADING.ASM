~^
#ERROR messages will be removed if you leave these first two lines in     @@@@#
.model small
.code
org 100h
JMP main
;JJJJJJJJJJJJJJJJJJJJJJJJJJJ

ldng    db      'a'


;JJJJJJJJJJJJJJJJJJJJJJJJJJJ
main proc near
a€:
~ ^
#ERROR 01: Unknown Mnemonic                                               @@@@#

refrsh:
MOV     ch,     4
MOV     cl,     4
LEA     di,     ldng
Liap:
	MOV	ah,	02H
        MOV     dh,     ch
        MOV     dl,     cl
        SUB     cl,     3
        MOV     bl,     cl
        MOV     bh,     0
	INT	10H
PUSH cx
        MOV     ah,     09H
	MOV	ch,	1
        MOV     al,     [di]

	INT 10H
POP cx
        ADD     cl,     3
        CALL dly
        MOV     al,    19
        CMP     cl,     al

        JE      refrsh
        INC     cl
JMP Liap
        main     endp

dly     proc near


PUSH    cx

        MOV     cx,     03FFH

        
DELAY1:
PUSH    cx
        MOV     cx,     0FFFFH

DELAY2:

        LOOP    DELAY2

POP     cx
        LOOP    DELAY1

POP     cx




RET
dly endp


end main
