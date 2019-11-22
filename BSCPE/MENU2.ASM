.model small
.code
org 100H
jmp main
;-------------------------------



maze   		db      ' ----------------    ----------------    ----------------    ----------------  '
		db	'| .______________.| | .--------------.| | .--------------.| | .--------------.|'
		db	'| | ____    ____ || | |      __      || | |   ________   || | |  _________   ||'
		db	'| ||_   \  /   _||| | |     /  \     || | |  |  _   __|  || | | |_   ___  |  ||'
		db	'| |  |   \/   |  || | |    / /\ \    || | |  |_/ / /     || | |   | |_  \_|  ||'
		db	'| |  | |\  /| |  || | |   / ____ \   || | |     / /  _   || | |   |  _|  _   ||'
		db	'| | _| |_\/_| |_ || | | _/ /    \ \_ || | |   _/ /__/ |  || | |  _| |___/ |  ||'
		db	'| ||_____||_____||| | ||____|  |____||| | |  |________|  || | | |_________|  ||'
		db	'| |              || | |              || | |              || | |              ||'
		db	'| *______________*| | *--------------*| | *--------------*| | *--------------*|'
        	db      ' ----------------    ----------------    ----------------    ----------------  ','$'


selection       db      '       #########                    *********             @@@@@@@@@@@@@@@      '
                db      '       #       # E                 *         *            @             @      '
                db      '       #       # EE               *   P       *           @     HHH     @      '
                db      '       #          EE             *    PPP      *          @       H     @      '
                db      '       #      EEEEEEE            *    PPPPP    *          @      H      @      '
                db      '       #          EE             *    PPPPPP   *          @             @      '
                db      '       #       # EE              *    PPPPP    *          @      H      @      '
                db      '       #       # E               *    PPP      *          @             @      '
                db      '       #########                  *   P       *           @@@@@@@@@@@@@@@      '
                db      '                                   *         *                                 '
                db      '                                    *********                                  '
                db      '        [E]xit                         [P]lay                  [H]elp            ','$'
    
loading		db	' |\_____/|                 '
		db	' |[O] [O]|  /\ /\    _V_   '
		db	' |   v   | ((OvO))  (OvO)  ' 
		db	' |       | ():::() <  .  > '
                db      '-uuu---uuu---m-m-----"-"---'
		db	'      Loading......        ','$'	


loading2	db	' |\_____/| _hoot hoot hoot '
		db	' |[O] [O]|/ /\ /\ /  _V_ \ '
		db	' |   o   | ((OoO))  (OoO)  ' 
		db	' |       | ():::() <  .  > '
                db      '-uuu---uuu---m-m-----"-"---','$'

help01		db	' NAVIGATION KEYS:                                                             ',0ah,0dh 
		db	'                                                                              ',0ah,0dh
		db	'  W=up , S=down , A=left , D=right                                            ',0ah,0dh
		db	'                                                                              ',0ah,0dh
		db	'                                                                              ',0ah,0dh 
		db	' ACKNOWLEDGEMENT:                                                             ',0ah,0dh
		db	'        A big "Thank You" for the people who helped me doing this project     ',0ah,0dh
		db	' (sila Tilay (The Echoser), Neil (The Planner), Chard(The Hacker),            ',0ah,0dh
		db	' Jeane T.(Ga Hatag sa A86!), Sir Misael (The Teacher), Ma & Pa (The Financers)',0ah,0dh
                db      ' and etc!)! Haha! And also a big thank you to Maam Vina who provided us the   ',0ah,0dh
		db	' DOST Comp-lab! :D And mostly, to GOD! :)                                     ',0ah,0dh
		db	' To GOD be the glory of our project! :)                                       ',0ah,0dh
		db	'                                                                              ',0ah,0dh
		db	'                                                                              ',0ah,0dh
		db      ' INSTRUCTION: (MAZE1)                                                         ',0ah,0dh
        	db      '        Break (Step) all the tiles to go to the next level of the maze. If you',0ah,0dh
        	db      ' step on a broken tile, your progress will be deleted and back from the start.',0ah,0dh
		db	'                                                                              ',0ah,0dh
		db	' INSTRUCTION: (MAZE2)                                                         ',0ah,0dh
		db	'        Hurry go to the X-mark to complete the game!                          ',0ah,0dh
		db	'                                                                              ',0ah,0dh
		db	'        PRESS ANY KEY TO GO AUTOMATICALY TO THE GAME! :D                      ','$'


bord2	  	db      '                                                                                ',0ah,0dh
       		db      ' ²°²°²°                                                                         ',0ah,0dh
        	db      ' ÷÷÷÷÷²                                                                         ',0ah,0dh
        	db      ' ²°²°÷°                ²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°                         ',0ah,0dh
        	db      '    ²÷²                °÷÷÷÷°÷÷÷÷°²°÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷²                         ',0ah,0dh
       		db      '    °÷°          ²°²°²°²÷÷÷÷÷÷÷÷÷²°²÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷°                         ',0ah,0dh
        	db      '    ²÷²         ²°÷÷÷÷²°÷²°²°²°²÷°²°÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷²                         ',0ah,0dh
        	db      '    °÷°     °²°²°²÷²÷÷°²÷÷÷÷÷÷÷÷÷²°²÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷°                         ',0ah,0dh
        	db      '    ²÷²     ²÷÷÷²°÷÷÷°²°÷÷÷÷÷÷÷÷÷°²°÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷²                         ',0ah,0dh
        	db      '    °÷°²°²°²°÷°÷°²÷÷÷÷°²÷÷÷²°²÷÷÷²°÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷°                         ',0ah,0dh
        	db      '    ²÷²°÷÷²°²÷÷÷²°÷°÷÷²°÷÷÷÷÷÷÷÷÷°²÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷°²°²°²°²°²°²°²°²°²°²       ',0ah,0dh
        	db      '    °÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷²°       ',0ah,0dh
        	db      '    ²°²°²÷÷°²÷÷÷²°÷÷²÷²°÷÷÷÷÷÷÷÷²°²÷÷÷²÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷²°²°²°²°²°²°²°²°²°²       ',0ah,0dh
        	db      '        °²°²°÷°÷°²÷÷÷÷°²÷÷²°²°²÷÷²°÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷°                         ',0ah,0dh
        	db      '            ²÷÷÷²°²÷÷÷²°÷÷÷÷÷÷÷÷÷°²°÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷²                         ',0ah,0dh
        	db      '            °²°²°²÷÷²÷°²÷÷÷÷÷÷÷÷÷²°²÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷°                         ',0ah,0dh
        	db      '                 °÷÷÷÷²°÷÷°²°²°÷÷°²°÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷²                         ',0ah,0dh
        	db      '                 ²°²°²°²÷÷÷÷÷÷÷÷÷²°²÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷°                         ',0ah,0dh
        	db      '                       °÷÷÷÷÷÷÷÷÷°²°÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷²                         ',0ah,0dh
        	db      '                       ²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°                         ',0ah,0dh
        	db      '                                                                                ',0ah,0dh
        	db      '                                                                                ',0ah,0dh
        	db      '                                                                                ',0ah,0dh
        	db      '                                                                                ','$'

bord    	db      ' °²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°',0ah,0dh
        	db      ' ²÷÷÷÷÷÷÷÷÷²÷²÷²÷²÷÷÷÷÷²÷÷÷÷÷²÷²÷²÷÷÷²÷÷÷÷÷²÷²÷÷÷÷°÷°÷°÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷°÷÷÷÷²',0ah,0dh
        	db      '  ÷°²°÷°²°÷°÷°÷°÷°÷°÷°÷°÷°÷°÷°÷°÷°÷°÷°÷°÷°²÷÷÷²÷²÷÷÷÷÷÷÷²°²°²°²°²°÷°²°²°²°²°÷°÷°',0ah,0dh
        	db      ' ²÷²÷²÷²÷²÷²÷²÷÷÷²÷²÷²÷²÷²°²÷²÷²÷²÷²÷²÷²÷²°÷°÷°÷°÷°²÷²÷²°÷÷²÷÷÷÷÷²÷÷÷÷÷÷÷÷÷÷÷²÷²',0ah,0dh
        	db      ' °÷°÷°÷°÷°÷°÷°÷°÷°÷°÷°÷°÷°÷÷÷°÷°÷°÷°÷÷÷°÷÷÷÷²÷²°²÷²÷÷°÷°²÷÷÷÷°÷°÷÷²°²°²°²°²°²°÷°',0ah,0dh
        	db      ' ²÷²÷²÷²÷²÷÷÷²°²÷²÷²÷²÷÷÷²÷²÷²÷²÷²÷²÷²°²÷²°÷°÷÷÷°÷°²÷²÷÷°÷°²°²°²°÷°÷÷÷÷÷÷÷÷÷÷÷÷²',0ah,0dh
        	db      ' °÷°÷°÷°÷°÷°÷÷÷°÷°÷°÷°÷°÷°÷°÷°÷°÷°÷°÷°÷÷÷÷²°²°²÷²÷÷°÷°÷°²°²÷÷÷÷÷²°²÷²°²÷²÷²÷²÷²°',0ah,0dh
        	db      ' ²÷²÷²°²÷²÷²÷²÷²÷²÷²°²÷²÷²÷²÷²÷²°²÷²÷²÷²°²°÷÷÷÷÷°÷°²÷²÷÷°÷°²°÷°÷°÷°÷÷÷°²°÷°²÷²÷²',0ah,0dh
        	db      ' °÷÷÷÷÷÷÷°²°÷°÷°÷°÷°÷°÷°÷÷÷°÷°÷°÷°÷°÷°÷÷÷÷²÷²°²°²÷²÷÷°÷°²÷²÷÷÷²÷÷÷÷°÷°÷÷÷÷÷÷÷÷÷°',0ah,0dh
        	db      ' ²÷²÷²°²÷÷÷²÷²÷²÷²÷²÷²÷²÷²÷²÷²÷²÷²÷²÷²÷²°²°÷÷÷÷÷÷÷°÷°²÷÷°÷°²°÷°÷°÷°²°²°²°²°²°÷°²',0ah,0dh
        	db      ' °÷°÷°÷°÷°²°÷°÷°÷°÷÷÷°÷°÷°÷°÷÷÷°÷÷÷°÷°÷÷÷°²°²°²°²°²°÷°÷°²÷÷÷÷÷÷÷²÷÷÷÷÷÷÷÷÷÷÷²÷÷°',0ah,0dh
        	db      ' ²÷²÷²÷²÷²÷²÷²÷²÷²÷²°²÷²÷²÷²÷²÷²÷²÷²°²÷÷°²÷÷÷÷÷÷÷÷÷²÷²÷÷°²°²°²°÷°²°²°²°²°²÷²°÷°²',0ah,0dh
        	db      ' °÷°÷°÷°÷°÷÷÷°÷°÷°÷°÷°÷°÷°÷°²°÷°÷°÷°÷°²÷÷°÷°²÷²°²°²°÷°÷÷²÷÷÷÷÷²÷²÷÷÷÷°÷÷÷÷÷÷÷÷÷°',0ah,0dh
        	db      ' ²÷²÷²÷²÷²÷²÷²÷²÷²÷²÷²÷²÷²°²÷²÷²÷²÷²÷÷÷÷°²÷÷°÷÷÷÷÷÷÷÷²÷÷÷°÷÷°÷°÷°÷°²°²°²°÷°²÷²°²',0ah,0dh
        	db      ' °÷°÷°÷°÷°÷°÷°÷°÷°÷°÷°÷°÷°÷°÷°÷°÷°÷°÷°÷÷÷÷÷÷²÷²÷²°²°²°÷°÷÷÷°²÷²÷²÷÷÷÷÷÷°÷÷÷°÷÷÷°',0ah,0dh
        	db      ' ²÷²÷÷÷²÷²÷²÷²÷²÷²÷²÷²÷²÷²÷÷÷²÷²÷²÷²÷²°²÷²°÷°÷°÷°÷°÷°÷÷²°²÷÷°÷°÷°÷°²°²°÷°²°²°²÷²',0ah,0dh
        	db      ' °÷°÷°÷°÷°÷°÷°÷°÷°÷°÷°÷°÷°÷°÷°÷°÷°÷°÷°÷°²°÷÷²÷²÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷²÷²÷÷÷÷÷²÷÷÷÷÷÷÷÷°',0ah,0dh
        	db      ' ²÷²÷²÷²÷²÷²÷²÷²÷²÷²÷²÷²÷²÷²÷²÷²÷²÷²÷²÷÷÷²÷÷°÷°²°²°²°²°²°²÷²÷÷°÷°÷÷²°²°²°²°²°²°²',0ah,0dh
        	db      ' °÷°÷°÷°÷°÷°÷°÷°÷°÷°÷°÷°÷°÷°÷°÷°÷°÷°÷°÷÷÷°²÷²÷÷÷÷÷÷÷÷°÷÷÷°÷÷²÷²÷²°²°÷÷÷÷÷÷÷÷÷÷÷°',0ah,0dh
        	db      ' ²÷²°²°²÷²÷²÷²÷²÷²÷²÷²÷²÷²÷²÷²÷²÷²÷²÷²÷²°÷°÷°²°²°²°²°²°÷°²°÷°²°÷°÷÷²÷²÷²÷²÷²÷²÷²',0ah,0dh
        	db      ' °÷÷÷°÷°÷÷÷°÷°÷°÷÷÷°÷°÷°÷°÷°÷°÷°÷°÷°÷°÷÷²÷²÷÷÷÷÷÷°÷÷÷÷²÷÷÷÷÷÷°÷÷÷÷÷°÷°÷°÷°²÷²÷²°',0ah,0dh 
        	db      ' ²÷²÷²÷²÷²÷²÷²÷÷÷²÷²÷²÷²÷²÷²÷²÷²÷²÷²÷÷÷÷÷÷°²°²°²÷÷÷²°÷°²°÷°²°²°²÷²÷²÷²÷²÷÷°²÷÷÷X',0ah,0dh
        	db      ' °÷°÷°÷°÷°÷°÷°²°²°²°÷°÷°÷°²°÷°²°÷°÷°÷°²÷²°²÷÷÷÷°÷°²÷÷÷²÷²÷÷÷÷÷÷°÷°÷÷²°÷°²÷÷°²°÷°',0ah,0dh
        	db      ' ²÷²÷÷÷²÷²÷²÷÷÷÷÷÷÷÷÷²÷÷÷÷÷÷÷÷÷÷÷²÷²÷÷÷÷÷÷÷÷÷²÷÷÷÷÷÷°÷÷÷÷÷°²°²÷÷°²÷÷÷÷÷÷÷²÷÷÷÷÷²',0ah,0dh
        	db      ' °²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°²°','$'


ast	        db      01H,'$'

spc		db      'Û','$'


;========================
main	proc	near

MOV     cx,     5

LoopM:
        CALL    delay
        CALL    delay
        CALL    delay
        CALL    delay

        CMP     cx,     5
        JE      argch
        CMP     cx,     4
	JE	argch1		
        CMP     cx,     3
	JE	argch2		
        CMP     cx,     2
	JE	argch3		
        CMP     cx,     1
	JE	argch4		
        CMP     cx,     0
	JE	argch5

	JMP nextstep	

argch:
	PUSH cx
        MOV     ch,     5
	JMP	hehehe
argch1:
	PUSH cx
        MOV     ch,     4
	JMP	hehehe
argch2:
	PUSH cx
        MOV     ch,     3
	JMP	hehehe
argch3:
	PUSH cx
        MOV     ch,     2
	JMP	hehehe
argch4:
	PUSH cx
        MOV     ch,     1
	JMP	hehehe
argch5:
	PUSH cx
        MOV     ch,     0
	JMP	hehehe

hehehe:
        LEA     di,     maze
	MOV	cl,	0

        MOV     ax,     03
	INT	10H


LoopNi:
        MOV     bl,     3	
	MOV	al,	'$'
	CMP	[di],	al
	JE	poedecr
        CALL    crsr

        CALL	int10s9

        CMP     cl,     78
	JE	refrsh
	INC	cl



next:
	INC	di
	JMP	LoopNi
refrsh:
	MOV	cl,	0
	INC	ch
	JMP	next			
poedecr:
	POP	cx
        DEC     cx
	JMP	LoopM

;==========================
nextstep:
        CALL delay7
        MOV     ch,     12
        MOV     cl,     0
        LEA     di,     selection
LoopM3:
        CALL    crsr
        MOV     al,     '$'
        CMP     [di],   al
        JE      nextsteps00

        CALL    clrsel

        CMP     cl,     78
        JE      refrsh3
        INC     cl
next10:
        INC     di
        JMP     LoopM3

refrsh3:
	MOV	cl,	0
	INC	ch
        JMP     next10             

;==========================
nextsteps00:
        MOV     ah,     07
        INT     21H
        CMP     al,     'e'
        JE      nextsteps02	
        CMP     al,     'E'
        JE      nextsteps02
        CMP     al,     'p'
        JE      nextsteps01
        CMP     al,     'P'
        JE      nextsteps01
        CMP     al,     'h'
        JE      nextsteps03
        CMP     al,     'H'
        JE      nextsteps03
        JMP     nextsteps00
;==========================
nextsteps01:
	
        CALL    loading012
	CALL	gamenani
	JMP	nextsteps02

nextsteps03:
	CALL	loading012
        MOV	ax,	03H
	INT	10H

	MOV	ch,	2
	MOV	cl,	0
	CALL	crsr
	MOV	ah,	09H
	LEA	dx,	help01
	INT	21H
	MOV	ah,	07h
	INT	21H
	JMP	nextsteps01

nextsteps02:
	MOV	ax,	0003H
	INT	10H
	MOV	ax,	4c00H
	INT	21H
;===========================
main	endp

;----------------------------


;----------------------------
crsr    proc    near

        MOV     dh,     ch
        MOV     dl,     cl
        MOV     ah,     02
        INT     10H

        RET

        crsr    endp
delay proc near

        PUSH    cx
        MOV     cx,     01FFFH

        
DELAY1:
        PUSH    cx
        MOV     cx,     0FFFH


DELAY2:

       
        LOOP    DELAY2

        POP     cx
        LOOP    DELAY1

        POP     cx

        RET

        delay   endp

delay5 proc near

        PUSH    cx
        MOV     cx,     0FFH

        
DELAY3:
        PUSH    cx
        MOV     cx,     0AFFH


DELAY4:

       
        LOOP    DELAY4

        POP     cx
        LOOP    DELAY3

        POP     cx

        RET

        delay5   endp


int10s9	proc	near
	
	MOV     ah,     09H
        MOV     al,     [di]
	PUSH	cx
	MOV	cx,	01	
	INT	10H
	POP	cx
	
	RET
	
	int10s9 endp

delay7	proc	near

	CALL	delay
	CALL	delay
	CAll	delay
	CALL	delay

	RET
	delay7	endp
;=========================
clrsel  proc    near

        MOV     al,     '#'
        CMP     [di],   al
        JNE     color1
        MOV     bl,     4
        CALL    int10s9
        JMP     colorend
color1:
        MOV     al,     'E'
        CMP     [di],   al
        JNE     color2
        MOV     bl,     12
        CALL    int10s9
        JMP     colorend

color2:
        MOV     al,     '*'
        CMP     [di],   al
        JNE     color3
        MOV     bl,     2
        CALL    int10s9
        JMP     colorend
color3:
        MOV     al,     'P'
        CMP     [di],   al
        JNE     color4
        MOV     bl,     10
        CALL    int10s9
        JMP     colorend
color4:
        MOV     al,     '@'
        CMP     [di],   al
        JNE     color5
        MOV     bl,     1
        CALL    int10s9
        JMP     colorend
color5:
        MOV     al,     'H'
        CMP     [di],   al
        JNE     color6
        MOV     bl,     9
        CALL    int10s9
        JMP     colorend
color6:
        MOV     bl,     8
        CALL    int10s9

colorend:

        RET
        clrsel  endp
;=======================
loading012     proc    near
	CALL	delay7
	CALL	delay7
	CALL	delay7
	CALL	delay7
	MOV	cx,	0
	MOV     ah,     00
	MOV	al,	03
	INT	10H

LoopM2:
	CALL	delay7
	CALL	delay7
	LEA	di,	loading
		
	CMP	cx,	10	
	JE	exit

	PUSH	cx
        MOV     cl,     25
        MOV     ch,     18
LoopNi2:
	CALL	crsr

	MOV	al,	'$'
	CMP	[di],	al
	JE	LoopNi3e

        MOV     al,     'v'
        CMP     [di],   al
        JE     movbl9        

        MOV     al,     'O'
        CMP     [di],   al
        JE     movbl141        

        MOV     bl,     8
        JMP     jint10s91

movbl9:
        MOV     bl,     6
        JMP     jint10s91

movbl141:
        MOV    bl,      14

jint10s91:

        CALL	int10s9
	
        CMP     cl,     51
	JE	refresh2
	INC	cl
next2:
	INC	di
	JMP	LoopNi2
			
LoopNi3e:
	CALL	delay7
	CALL	delay7
	LEA	di,	loading2
        MOV     cl,     25
        MOV     ch,     18

LoopNi3:
	
	
	CALL	crsr

	MOV	al,	'$'
	CMP	[di],	al
	JE	LoopNi4

        MOV     al,     'o'
        CMP     [di],   al
        JE      movbl91

        MOV     al,     'O'
        CMP     [di],   al
        JE      movbl14

        MOV     bl,     7
        JMP	jint10s9
movbl91:
        MOV     bl,     6
        JMP     jint10s9
movbl14:
        MOV     bl,     14
jint10s9:
	CALL	int10s9

        CMP     cl,     51
	JE	refresh3
	INC	cl
next3:
	INC	di
	JMP	LoopNi3	
	
LoopNi4:
	POP	cx
	INC	cx
	JMP	LoopM2




refresh3:
        MOV     cl,     25
	INC	ch
	JMP	next3	
	
refresh2:
        MOV     cl,     25
	INC	ch
	JMP	next2		
exit:
	RET
        loading012     endp
;++++++++++++++++++++++++++++++++


Gamenani    proc    near
JMP     GMaze1

gotokil:
       JMP GMaze2

GMaze1:
        MOV     cx,     0
        PUSH    cx
	MOV	ah,	0
	MOV	al,	3
	INT	10H
        MOV     ch,     00
        MOV     cl,     00
        CALL    crsr
        CALL    brd2
	MOV	cl,	00
	MOV	ch,	00		
	PUSH	cx			
        MOV     ch,     02
        MOV     cl,     00
               
        CALL    crsr

        CALL    aste

        JMP     bordstrt
        
GMaze2:
	MOV	ah,	0
	MOV	al,	3
	INT	10H

        MOV     ch,     00
        MOV     cl,     00

        CALL    crsr

	CALL    brd

	MOV	cl,	00
	MOV	ch,	00		
	PUSH	cx		
	
        MOV     ch,     02
        MOV     cl,     00

        CALL    crsr

        CALL    aste

bordstrt:

LEAP2:
                
LEAP1:
        MOV     ah,     07
        INT     21H
        CMP     al,     'w'
        JE      upp
	CMP	al,	'W'
	JE	upp
        CMP     al,     's'
        JE      dwnn
	CMP	al,	'S'
	JE	dwnn
        CMP     al,     'a'
        JE      lftt
	CMP	al,	'A'
	JE	lftt
        CMP     al,     'd'
        JE      rghtt
	CMP	al,	'D'
	JE	rghtt
	CMP	al,	'e'
	JE	qwerty

        JMP LEAP1
;-------------------------
upp:
        CALL    ups

        CMP     al,     '°'
        JNE    iinxt
        JMP     skipah
iinxt:
        CMP     al,     '²'
        JNE     inxt
skipah:        
        INC     ch
        JMP LEAP2
gotokilo:
        JMP     gotokil
                        
inxt:
	CMP	al,	'X'
        JE      qwerty2 


        CMP     al,     'Û'
        JNE     nxt
        JMP     GMaze1

        INC     ch
        JMP LEAP2
nxt:
        CALL    aste        
        INC     ch
        CALL    crsr
        CALL    spce
        DEC     ch
        CALL    crsr
        MOV     ax,     cx
        POP     cx
        INC     cx
        CMP     cx,     489
        JE      gotokilo
        PUSH    cx
        MOV     cx,     ax
        JMP     LEAP1
lftt:
        JMP     lftte
JFGMaze2:
        JMP     GMaze2
;---------------------------
dwnn:
        CALL    downs
        CMP     al,     '°'
        JNE    iinxt1
        JMP     skipah1
iinxt1:
        CMP     al,     '²'
        JNE     inxt1
skipah1:
        DEC     ch
        JMP LEAP2
rghtt:
        JMP rghttt
qwerty:
	JMP	qwerty2

inxt1:
	CMP	al,	'X'
        JE      qwerty2 



        CMP     al,     'Û'
        JNE     nxt1
        JMP     GMaze1

        DEC     ch
        JMP LEAP2
nxt1:
        CALL    aste        
        DEC     ch
        CALL    crsr
        CALL    spce
        INC     ch
        CALL    crsr
        MOV     ax,     cx
        POP     cx
        INC     cx
        CMP     cx,     489
        JE      gotokilo
        PUSH    cx
        MOV     cx,     ax
        JMP	LEAP1
JFGMaze1:
        JMP     GMaze1
gotokilo1:
        JMP     gotokilo
qwerty2:
        JMP     qwerty1
;---------------------
lftte:
        CALL    lfts
        CMP     al,     '°'
        JNE    iinxt2
        JMP     skipah2
iinxt2:
        CMP     al,     '²'
        JNE     inxt2
skipah2:
        INC     cl
        JMP LEAP2

inxt2:
        CMP     al,     'X'
        JE      qwerty1 


        CMP     al,     'Û'
        JNE     nxt2
        JMP     JFGMaze1

        INC     cl
        JMP     LEAP2
nxt2:
        CALL    aste        
        INC     cl
        CALL    crsr
        CALL    spce
        DEC     cl
        CALL    crsr
        MOV     ax,     cx
        POP     cx
        INC     cx
        CMP     cx,     489
        JE      gotokilo1
        PUSH    cx
        MOV     cx,     ax
        JMP LEAP1
gotokilo2:
        JMP     gotokilo1
;---------------------
rghttt:
        CALL    rghts
        CMP     al,     '°'
        JNE    iinxt3
        JMP     skipah3
iinxt3:
        CMP     al,     '²'
        JNE     inxt3
skipah3:
	DEC     cl
        JMP LEAP2
inxt3:
        CMP     al,     'X'
        JE      qwerty1 

        CMP     al,     'Û'
        JNE     nxt3
        JMP     JFGMaze1

        DEC     cl
        JMP LEAP2
nxt3:
        CALL    aste        
        DEC     cl
        CALL    crsr
        CALL    spce
        INC     cl
        CALL    crsr
        MOV     ax,     cx
        POP     cx
        INC     cx
        CMP     cx,     489
        JE      gotokilo2
        PUSH    cx
        MOV     cx,     ax

        JMP     LEAP1
;--------------------------------
qwerty1:
	MOV	ah,	0
	MOV	al,	3
	INT	10H

        MOV     ax,     4c00h
        INT     21H
	
RET
;--------------------------------
gamenani    endp
;------------------------------

brd2    proc    near
        LEA     si,     bord2
        
        MOV     cl,     0
CLop1:
       PUSH     cx
       MOV      al,     '°'
       CMP      [si],   al
       JE       a40
       MOV      al,     '²'
       CMP      [si],   al
       JE       a40
       MOV      al,     '÷'
       CMP      [si],   al
       JE       a50
       MOV      al,     ' '
       CMP      [si],   al
       JE       a60
       MOV      bl,     0
       JMP      inter101
a40:
       MOV      bl,     3
       JMP      inter101
a50:
       MOV     al,     '±'
       MOV      bl,     11
       JMP      inter101
a60:
       MOV     al,     '±'
       MOV      bl,     7
       JMP      inter101
        
inter101:
       MOV      ah,     09H
       MOV      cx,     1
       INT      10H            
       POP      cx
       CALL     crsr
       INC      cl
       CMP      cl,     82
       JE       refa2
refa3:
       
       INC      si
       MOV      al,     '$'
       CMP      [di],     al
       JNE      Clop
       JMP      yuiop1
refa2:
        MOV     cl,     0
        INC     ch
        JMP refa3    
        
yuiop1:

        MOV     cl, 0
        INC     ch
        INC     si
        CALL    crsr
RET
        brd2    endp


;------------------------------
brd     proc    near
	
        LEA     si,     bord
        
        MOV     cl,     0
CLop:
       PUSH     cx
       MOV      al,     '°'
       CMP      [si],   al
       JE       a10
       MOV      al,     '²'
       CMP      [si],   al
       JE       a10
       MOV      al,     '÷'
       CMP      [si],   al
       JE       a20
       MOV      al,     'X'
       CMP      [si],   al
       JE       a30
       MOV      bl,     0
       JMP      inter102
a10:
       MOV      bl,     3
       JMP      inter102
a20:
       MOV     al,     '±'
       MOV      bl,     11
       JMP      inter102
a30:
       MOV     bl,     4
       JMP     inter102        
inter102:
       MOV      ah,     09H
       MOV      cx,     1
       INT      10H            
       POP      cx
       CALL     crsr
       INC      cl
       CMP      cl,     82
       JE       refa
refa1:
       
       INC      si
       MOV      al,     '$'
       CMP      [si],     al
       JNE      Clop
       JMP      yuiop
refa:
        MOV     cl,     0
        INC     ch
        JMP refa1    
        
yuiop:

        MOV     cl, 0
        INC     ch
        INC     si
        CALL    crsr

RET
        brd     endp

;---------------------------
aste    proc    near
push CX
        MOV     ah,     09H
        MOV     al,     ast
	MOV	cx,	01H
	MOV	bl,	14
        INT     10H
pop CX
        
        RET
        aste    endp
;----------------------------
spce    proc    near
push CX
        MOV     ah,     09H
        MOV     al,     spc
        MOV     bl,     09H
        MOV     cx,     01H        
        INT     10H
pop CX
        RET
        spce    endp
;---------------------------
ups     proc    near

        DEC     ch
        CALL    crsr
        CALL    cmpr
        RET
        up      endp
;----------------------------
downs   proc    near

        INC     ch
        CALL    crsr
        CALL    cmpr
        RET
        downs   endp
;---------------------------
lfts    proc    near

        DEC     cl
        CALL    crsr
        CALL    cmpr
        RET
        lfts    endp
;--------------------------
rghts   proc    near

        INC     cl
        CALL    crsr
        CALL    cmpr
        RET
        rghts   endp
;--------------------------
cmpr    proc    near

        MOV     ah,     08
        INT     10H
        RET
        cmpr    endp

;--------------------------
main endp 
