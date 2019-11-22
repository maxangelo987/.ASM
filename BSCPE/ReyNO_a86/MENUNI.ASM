.model small
.code
org 100H
JMP main 
;----------------
pkbl	db	'              MMMMMMMMMMM               ',0ah,0dh
	db	'            MMMMMMMMMMMMMMMMM           ',0ah,0dh
        db	'         MMMMMMWWWWWWWWWZZMMMM          ',0ah,0dh
	db	'       MMMMWWWWWWWWWWWWWWZZZMMMM        ',0ah,0dh 
	db	'     MMMMWWWWWWWWWWWWWWWWWWZZZMMMM      ',0ah,0dh 
	db	'    MMMWWWWWWWWWWWWWWWWWWWWWZZZZMMM     ',0ah,0dh 
	db	'    MMMWWWWWWWWWWWWWWWWWWWWWWWZZZZMMM   ',0ah,0dh 
        db      '  MMMWWWWWWWWWWWWWWWWWWWWWWWWWWZZZZMM   ',0ah,0dh 
        db      ' MMMWWWWWWWWWWWWWWWWWWWWWWWWWWWZZZZMMM  ',0ah,0dh 
	db	'MMMWWWWWWWWWWWWMMMMMMMMMWWWWWWWWZZZZMMM ',0ah,0dh 	
        db      'MMMWWWWWWWWWWMMM       MMMWWWWWWWWZZZMM ',0ah,0dh
        db      'MMWWWWWWWWWWMMM   MMM   MMWWWWWWWWWZZZM ',0ah,0dh
	db	'MMMMMMMMMMMMMMM  MMMMM  MMMMMMMMMMMMMMM ',0ah,0dh
	db	'MMMMMMMMMMMMMMN  MMMMM  MMMMMMMMMMMMMMM ',0ah,0dh
        db      'MMOOOOOOOOOOMMM   MMM   MMOOOOOOQQQQQMM ',0ah,0dh
        db      'MMOOOOOOOOOOOMMM      MMMMOOOOOOQQQQMMM ',0ah,0dh
        db      'MMMOOOOOOOOOOOOMMMMMMMMMOOOOOOOOQQQQMMM ',0ah,0dh
        db      ' MMOOOOOOOOOOOOOOOMMMOOOOOOOOOOQQQQMMM  ',0ah,0dh
        db      ' MMMOOOOOOOOOOOOOOOOOOOOOOOOOOQQQQQMMM  ',0ah,0dh
        db      '  MMMOOOOOOOOOOOOOOOOOOOOOOOOQQQQQMMM   ',0ah,0dh
        db      '   MMMMOOOOOOOOOOOOOOOOOOOOOQQQQMMMM    ',0ah,0dh
        db      '     MMMOOOOOOOOOOOOOOOOOOOQQQQMMMM     ',0ah,0dh
        db      '      MMMMMOOOOOOOOOOOOOOQQQMMMMM       ',0ah,0dh
        db      '        MMMMMMOOOOOOOOOQMMMMMMM         ',0ah,0dh
	db	'           MMMMMMMMMMMMMMMM             ',0ah,0dh
	db	'                MMMMMMM                 ','$'

main proc near

JMP afst
bang:
MOV     bl,     08
JMP     trce
bang2:
MOV     bl,     04
JMP     trce
bang3:
MOV     bl,     12
JMP     trce
bang4:
MOV     bl,     15
JMP     trce
bang5:
MOV     bl,     7
JMP     trce

afst:
        LEA     di,     pkbl
        MOV     ch,     0
refrsh:
        
        MOV     cl,     0
mraz:

       
        CALL    crsr
        push    cx

        MOV     ah,     09H
	MOV	al,	[di]

        MOV     al,     'M'
        CMP     [di],    al
        JE      bang

        MOV     al,     'M'
        CMP     [di],    al
        JE      bang
        MOV     al,     'W'
        CMP     [di],   al
        JE      bang2
        MOV     al,     'Z'
        CMP     [di],   al
        JE      bang3
        MOV     al,     'Q'
        CMP     [di],   al
        JE      bang4
        MOV     al,     'O'
        CMP     [di],   al
        JE      bang5
        JMP procd

trce:
        MOV     cx,     1
	INT	10H
	pop	cx

procd:
        CMP     cl,40
        JE      incrmnt        
        INC     cl
	INC	di
	MOV	al,	'$'
	CMP	[di],	al
	JNE	mraz
	JMP	exit

incrmnt:
        INC     ch
        ADD di, 2
        JMP     refrsh

exit:
	MOV	ax,	4c00h
	INT	21H

main endp

crsr    proc    near

        MOV     dh,     ch ;vertical
        MOV     dl,     cl ;horizontal
        MOV     ah,     02
        INT     10H

        RET

        crsr    endp

end main

