.model small
.code
org 100H
JMP main 
;----------------
pkbl    db      '                                         '
        db      '                                         '
        db      '  00      00  000000  000000000 0000000  ' 
        db      '  00      00 000  000 000000000 000      ' 
        db      '  000    000 000  000      000  00000    ' 
        db      '  0000  0000 00000000     000   00000    ' 
        db      '  0000000000 00000000    000    000      ' 
        db      '  00  00  00 000  000  0000     000      ' 
        db      '  00      00 000  000 000000000 0000000  '  
        db      '  00      00 00    00 000000000 0000000  '
        db      '                                         '
        db      '                                         ','$'

main	proc	near
        MOV     bh,     15
        JMP     strtup1
Gref:
	MOV	cl,	10
	INC	ch
        JMP     GBck

cint10s9:
        POP     bx
        MOV     bl,    bh
        CALL    int10s9
        PUSH    bx
        JMP     GBck1


strtup1:
        PUSH    bx
strtup:
	MOV	cl,	10
	MOV	ch,	5
	LEA	di,	pkbl

GenLoop:
        CALL    crsr
	MOV	al,	'0'
	CMP	[di],	al
        JE      cint10s9
GBck1:
        CMP     cl,     51
	JE	GRef
GBck:
	MOV	al,	'$'
	CMP	[di],	al
        JNE     GNxt
        JMP     endstrtup1
GNxt:
        INC     cl
        INC     di
        JMP     GenLoop     
endstrtup1:
        CALL    delay
        POP     bx
	MOV	ch,	bh
        CMP     ch,     0
        JE exit
        MOV     cl,     1
        SUB     ch,     cl
	MOV	bx,	cx
        JMP     strtup1

exit:
	MOV	ax,	4c00h
	INT	21H

main endp
;=============================
;+++++++++++++++++++++++++++++
crsr    proc    near

        MOV     dh,     ch 
        MOV     dl,     cl 
        MOV     ah,     02
        INT     10H

        RET

        crsr    endp
;============================
;++++++++++++++++++++++++++++

int10s9 proc near
	MOV	ah,	09H
		PUSH	cx	
	MOV	cx,	01
        MOV     al,     [di]
	INT	10H	
		POP	cx
	RET
;============================
;++++++++++++++++++++++++++++

delay   proc    near
        PUSH    cx
        MOV     cx,     02FFH

        
DELAY1:
        PUSH    cx
        MOV     cx,     0FFFFH

DELAY2:

       ; NOP
        LOOP    DELAY2

        POP     cx
        LOOP    DELAY1

        POP     cx

        RET

        delay   endp

;============================
end main

