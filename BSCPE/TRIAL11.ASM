.model small
.code
org 100h
jmp menu


crys0 db '      љ              Њ _ ­ Ў Џ А Б В Г',0ah,0dh,0ah,0dh

     db 'Д Е Ж З И Й К Л М Н  ПР С Т У Ф Х Ц Ч Ш Щ Ъ Ы Ь Э Ю Я а б ',0ah,0dh,0ah,0dh

     db 'в г д е ж з и й к л м н  п ћ ў ј є ѕ',0ah,0dh,0ah,0dh,'$'

marg1   db  'кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП',0ah,0dh
        db  'Г                                                                             Г',0ah,0dh
        db  'Г                                                                             Г',0ah,0dh 
        db  'Г                                                                             Г',0ah,0dh 
        db  'Г                                                                             Г',0ah,0dh
        db  'Г                                                                             Г',0ah,0dh 
        db  'Г                                                                             Г',0ah,0dh
        db  'Г                                                                             Г',0ah,0dh
        db  'Г                                                                             Г',0ah,0dh 
        db  'Г                                                                             Г',0ah,0dh
        db  'Г                                                                             Г',0ah,0dh
        db  'Г                                                                             Г',0ah,0dh
        db  'Г                                                                             Г',0ah,0dh
        db  'Г                                                                             Г',0ah,0dh
        db  'Г                                                                             Г',0ah,0dh
        db  'Г                                                                             Г',0ah,0dh
        db  'Г                                                                             Г',0ah,0dh
        db  'Г                                                                             Г',0ah,0dh
        db  'Г                                                                             Г',0ah,0dh
        db  'Г                                                                             Г',0ah,0dh
        db  'Г                                                                             Г',0ah,0dh
        db  'Г                                                                             Г',0ah,0dh
        db  'Г                                                                             Г',0ah,0dh
        db  'Г                                                                             Г',0ah,0dh
        db  'РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФй',0ah,0dh,'$'


marg2	db  'кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП',0ah,0dh
        db  'Г                                    Г',0ah,0dh
        db  'Г лллллллллллллллллллллллллллллллллл Г',0ah,0dh
        db  'Г лллллллллллллллллллллллллллллллллл Г',0ah,0dh
        db  'Г лллл          ллллллл          ллл Г',0ah,0dh
        db  'Г лллл          ллллллл          ллл Г',0ah,0dh
        db  'Г лллл          ллллллл          ллл Г',0ah,0dh
        db  'Г лллллллллллллллллллллллллллллллллл Г',0ah,0dh
        db  'Г лллл          ллллллл          ллл Г',0ah,0dh
        db  'Г лллл          ллллллл          ллл Г',0ah,0dh
        db  'Г лллл          ллллллл          ллл Г',0ah,0dh
        db  'Г лллллллллллллллллллллллллллллллллл Г',0ah,0dh
        db  'Г                                    Г',0ah,0dh
        db  'РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФй','$'

marg3	db  'кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП',0ah,0dh
        db  'Г                                    Г',0ah,0dh
        db  'Г лл Let us play ллллллллллллллллллл Г',0ah,0dh
        db  'Г л   лл  лл лл   ллл  лл ллл лл  лл Г',0ah,0dh
        db  'Г л ллл лл л лл лл л лл л  л  л лл л Г',0ah,0dh
        db  'Г л   л лллл лл лл л    л л л л    л Г',0ah,0dh
        db  'Г ллл л лл л лл лл л лл л ллл л лл л Г',0ah,0dh
        db  'Г л   лл  лл лл   лл лл л ллл л лл л Г',0ah,0dh
        db  'Г лллллллллллллллллллллл JAGUAR лллл Г',0ah,0dh
        db  'Г                                    Г',0ah,0dh
        db  'РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФй','$'

marg4	db  '','$'


symbol1	db	'+         -         -         +','$'
symbol2	db	'-         +         +         -','$'


block201	db  '                                                                ',0ah,0dh
        	db  '              лллллллллллллллллллллллллллллллллллллллллллллллллл',0ah,0dh
        	db  '              ллллллллллллллллллллллллллллллллjaguar_rangerллллл',0ah,0dh
        	db  '              лл                                              лл',0ah,0dh
        	db  '              лл л     л ллл л    лл  лл  л   л ллл  ллл  лл  лл',0ah,0dh
        	db  '              лл  л л л  лл  л   л   л  л лл лл лл    л  л  л лл',0ah,0dh
        	db  '              лл   л л   ллл ллл  лл  лл  л л л ллл   л   лл  лл',0ah,0dh
        	db  '              лл                                              лл',0ah,0dh
		db  '              лл   лллл  ллл  ллл     ллл   лл  л     л  лл   лл',0ah,0dh
        	db  '              лл  л     л   л  л      л  л л  л лл   лл л  л  лл',0ah,0dh
        	db  '              лл   ллл  л      л  ллл л  л лллл л л л л лллл  лл',0ah,0dh
        	db  '              лл      л л   л  л      л  л л  л л  л  л л  л  лл',0ah,0dh
        	db  '              лл  лллл   ллл  ллл     ллл  л  л л     л л  л  лл',0ah,0dh
        	db  '              лл                                              лл',0ah,0dh 
        	db  '              лллллллллллллллллллллллллллллллллллллллллллллллллл',0ah,0dh
        	db  '              ллллллллллллллллллллPress Any Keyллллллллллллллллл',0ah,0dh
        	db  '              лллллллллллллллллллллллллллллллллллллллллллллллллл',0ah,0dh,'$'


player01	db  '     лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл',0ah,0dh
		db  '     ллллл   ллл лллллл  ллл ллл лл    лл   ллллл     ллллллллллллллллллллл',0ah,0dh
		db  '     ллллл лл лл ллллл лл лл ллл лл ллллл лл лллллл ллллллл            лллл',0ah,0dh
		db  '     ллллл лл лл ллллл лл ллл л ллл   ллл лл лллллл ллллллл            лллл',0ah,0dh
		db  '     ллллл   ллл ллллл    лллл лллл ллллл   ллллллл ллллллл            лллл',0ah,0dh
		db  '     ллллл ллллл ллллл лл лллл лллл ллллл лл лллллл ллллллллллллллллллллллл',0ah,0dh
		db  '     ллллл ллллл    лл лл лллл лллл    лл лл лллл     ллллллллллллллллллллл',0ah,0dh
		db  '     лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл',0ah,0dh,'$'

player02	db  '     лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл',0ah,0dh
		db  '     ллллл   ллл лллллл  ллл ллл лл    лл   ллллл     ллллллллллллллллллллл',0ah,0dh
		db  '     ллллл лл лл ллллл лл лл ллл лл ллллл лл ллллл л лллллл            лллл',0ah,0dh
		db  '     ллллл лл лл ллллл лл ллл л ллл   ллл лл ллллл л лллллл            лллл',0ah,0dh
		db  '     ллллл   ллл ллллл    лллл лллл ллллл   лллллл л лллллл            лллл',0ah,0dh
		db  '     ллллл ллллл ллллл лл лллл лллл ллллл лл ллллл л лллллллллллллллллллллл',0ah,0dh
		db  '     ллллл ллллл    лл лл лллл лллл    лл лл лллл     ллллллллллллллллллллл',0ah,0dh
		db  '     лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл',0ah,0dh,'$'

decision	db  '					Do you wish to continue?',0ah,0dh
		db  '							[Y]es',0ah,0dh
		db  '							[N]o ','$'



string1 label byte
	maxlen1	db	8
	actlen1	db	?
	kybd1	db	9 dup('$')
string2 label byte
	maxlen2	db	8
	actlen2	db	?
	kybd2	db	9 dup('$')

spc	db	'',0ah,0dh,'$'



horizon db	'ABCDEFGH','$'
vert	db	'12345678','$'
blank	db 	'H','$'
col101  db      41
row101  db      24
col202  db      38
row202  db      01
row303	db	02
col303	db	43
ctr1	db	00

row	db	?
col	db	?
row1	db	?
col1	db	?
row2 	db	?
col2	db	?
BR1	db	'30 55 90 115','$'
BR2	db	'75 110 35 10 ','$'
BR3	db	'50 15 70 95 ','$'
BR4	db	'95 70 15 50 ','$'
BR5	db	'10 35 110 75 ','$'
BR6	db	'11590 55 30 ','$'
case	db	'012','$'

bg	db	?
cnt	db	?
ctr	db	?

prow	db	?
pcol	db	?
prow1	db	?
pcol1	db	?
prow2	db	?
pcol2	db	?

p1row	db	?
p1col	db	?
p1row1	db	?
p1col1	db	?
p1row2	db	?
p1col2	db	?

p2row	db	?
p2col	db	?
p2row1	db	?
p2col1	db	?
p2row2	db	?
p2col2	db	?

pr1	db	'50 ','$'
pr2	db	'15 ','$'
pr3	db	'70 ','$'
pr4	db	'95 ','$'
pr5	db	'75 ','$'
pr6	db	'110','$'
pr7	db	'35 ','$'
pr8	db	'10 ','$'
pr9	db	'30 ','$'
pr10	db	'55 ','$'
pr11	db	'90 ','$'
pr12	db	'115','$'



;==================================================
;==================================================

sd_main proc near

	call board
	mov bl, 03
m1:
	call player1
	call player2
	dec bl
	cmp bl, 0
	jne m1
	
	call exit101
sd_main endp

;==================================================
;==================================================

board proc near
	call clearscreen
	call mainlabel

ret
board endp


;--------------------
clearscreen proc near

	mov ax, 0600h
	mov cx, 0000h
	mov dx, 184fh
	int 10h 

	mov ch, 00
	mov dh, 02
start:
	mov cl, 39
	mov dl, 43

here:
	call visual101
	cmp dl, 78
	je next
	jne here1
here1:
	add cl, 05
	add dl, 05
here2:
	call visual202
	cmp dl, 78
	je next
	jne here3
here3:
	add cl, 05
	add dl, 05
	jmp here
next:
	cmp ch, 21
	jne next1
        je back1
next1:
	add ch, 03
	add dh, 03
	jmp astart	

astart:
	mov cl, 39
	mov dl, 43

ahere:
	call visual202
	cmp dl, 78
	je anext
	jne ahere1
ahere1:
	add cl, 05
	add dl, 05
ahere2:
	call visual101
	cmp dl, 78
	je anext
	jne ahere3
ahere3:
	add cl, 05
	add dl, 05
	jmp ahere
anext:
	cmp ch, 21
	jne anext1
        je back1
anext1:
	add ch, 03
	add dh, 03
	jmp start	

back1:
	mov ch, 00
	mov cl, 00
	mov dh, 10
	mov dl, 37
	call background101

	mov ch, 11
	mov cl, 00
	mov dh, 24
	mov dl, 37
	call background202

	call allpiece

ret
clearscreen endp


;--------------------
display proc near
	mov ah, 02h
	mov bh, 00
	mov dh, 02
	mov dl, 02
	int 10h
ret
display endp


;--------------------
visual101 proc near
	mov ax, 0600h
	mov bh, 30h
	int 10h
ret
visual101 endp


;--------------------
visual202 proc near
	mov ax, 0600h
	mov bh, 16h
	int 10h
ret
visual202 endp


;--------------------
background101 proc near
	mov ax, 0600h
	mov bh, 09h
	int 10h
ret
background101 endp


;--------------------
background202 proc near
	mov ax, 0600h
	mov bh, 03h
	int 10h
ret
background202 endp


;--------------------

allpiece proc near
	mov bg, 47h
	call piece_br1
	call piece_br2
	call piece_br3
	mov bg, 07h
	call piece_br4
	call piece_br5
	call piece_br6

ret
allpiece endp

;--------------------


piece_br1 proc near

	mov row, 01
	mov col, 39
	mov row1, 01
	mov col1, 43

	mov row2, 01
	mov col2, 40

	mov cnt, 04
	lea si, BR1

p1:
	mov bh, bg	
	mov ch, row
	mov cl, col
	mov dh, row1
	mov dl, col1
	call scroll101

	mov dh, row2
	mov dl, col2
	call cursor101

	mov ctr, 03
	lea di, case
r1:
	mov al, [si]
	mov [di], al
	inc si
	inc di

	dec ctr
	jnz r1

	lea dx, case
	call print101

	add col, 10
	add col1, 10
	add col2, 10

	dec cnt
	cmp cnt, 0
	jne p1

ret
piece_br1 endp



;--------------------


piece_br2 proc near

	mov row, 04
	mov col, 44
	mov row1, 04
	mov col1, 48

	mov row2, 04
	mov col2, 45

	mov cnt, 04
	lea si, BR2

p1:
	mov bh, bg	
	mov ch, row
	mov cl, col
	mov dh, row1
	mov dl, col1
	call scroll101

	mov dh, row2
	mov dl, col2
	call cursor101

	mov ctr, 03
	lea di, case
r1:
	mov al, [si]
	mov [di], al
	inc si
	inc di

	dec ctr
	jnz r1

	lea dx, case
	call print101

	add col, 10
	add col1, 10
	add col2, 10

	dec cnt
	cmp cnt, 0
	jne p1

ret
piece_br2 endp



;--------------------



piece_br3 proc near

	mov row, 07
	mov col, 39
	mov row1, 07
	mov col1, 43

	mov row2, 07
	mov col2, 40

	mov cnt, 04
	lea si, BR3

p1:
	mov bh, bg	
	mov ch, row
	mov cl, col
	mov dh, row1
	mov dl, col1
	call scroll101

	mov dh, row2
	mov dl, col2
	call cursor101

	mov ctr, 03
	lea di, case
r1:
	mov al, [si]
	mov [di], al
	inc si
	inc di

	dec ctr
	jnz r1

	lea dx, case
	call print101

	add col, 10
	add col1, 10
	add col2, 10

	dec cnt
	cmp cnt, 0
	jne p1

ret
piece_br3 endp

;--------------------

piece_br4 proc near

	mov row, 16
	mov col, 44
	mov row1, 16
	mov col1, 48

	mov row2, 16
	mov col2, 45

	mov cnt, 04
	lea si, BR4

p1:
	mov bh, bg	
	mov ch, row
	mov cl, col
	mov dh, row1
	mov dl, col1
	call scroll101

	mov dh, row2
	mov dl, col2
	call cursor101

	mov ctr, 03
	lea di, case
r1:
	mov al, [si]
	mov [di], al
	inc si
	inc di

	dec ctr
	jnz r1

	lea dx, case
	call print101

	add col, 10
	add col1, 10
	add col2, 10

	dec cnt
	cmp cnt, 0
	jne p1

ret
piece_br4 endp

;--------------------


piece_br5 proc near

	mov row, 19
	mov col, 39
	mov row1, 19
	mov col1, 43

	mov row2, 19
	mov col2, 40

	mov cnt, 04
	lea si, BR5

p1:
	mov bh, bg	
	mov ch, row
	mov cl, col
	mov dh, row1
	mov dl, col1
	call scroll101

	mov dh, row2
	mov dl, col2
	call cursor101

	mov ctr, 03
	lea di, case
r1:
	mov al, [si]
	mov [di], al
	inc si
	inc di

	dec ctr
	jnz r1

	lea dx, case
	call print101

	add col, 10
	add col1, 10
	add col2, 10

	dec cnt
	cmp cnt, 0
	jne p1

ret
piece_br5 endp

;--------------------

piece_br6 proc near

	mov row, 22
	mov col, 44
	mov row1, 22
	mov col1, 48

	mov row2, 22
	mov col2, 45

	mov cnt, 04
	lea si, BR6

p1:
	mov bh, bg	
	mov ch, row
	mov cl, col
	mov dh, row1
	mov dl, col1
	call scroll101

	mov dh, row2
	mov dl, col2
	call cursor101

	mov ctr, 03
	lea di, case
r1:
	mov al, [si]
	mov [di], al
	inc si
	inc di

	dec ctr
	jnz r1

	lea dx, case
	call print101

	add col, 10
	add col1, 10
	add col2, 10

	dec cnt
	cmp cnt, 0
	jne p1

ret
piece_br6 endp


;--------------------
mainlabel proc near
	
	call label101
	call label202
	call vertical	
	call label303
	
ret
mainlabel endp

;-------------------------


label101 proc near


	lea si, horizon
	lea di, blank

        mov ch, 24
	mov cl, 39
	mov dh, 24
	mov dl, 79
	mov bh, 0e0h
	call scroll101

	mov bl, 08h

l1:
	mov dh, row101
	mov dl, col101
	call cursor101
	
	mov al, [si]
	mov [di], al

	inc si
	dec bl
	add col101, 05

	lea dx, blank
	call print101

	cmp bl, 0
	jne l1
 		
ret
label101 endp



;--------------------


label202 proc near

	lea si, vert
	lea di, blank

        mov ch, 00
	mov cl, 38
	mov dh, 24
	mov dl, 38
	mov bh, 0e0h
	call scroll101

	mov bl, 08h

l1:
	mov dh, row202
	mov dl, col202
	call cursor101
	
	mov al, [si]
	mov [di], al

	inc si
	dec bl
	add row202, 03

	lea dx, blank
	call print101

	cmp bl, 0
	jne l1
 		
ret
label202 endp



;--------------------

vertical proc near

	mov ch, 00
	mov cl, 79
	mov dh, 24
	mov dl, 79
	mov bh, 0e0h
	call scroll101
	

ret
vertical endp

;--------------------

label303 proc near

	mov bl, 02
s1:	
	call specialcursor
	lea dx, symbol1
	call print101

	add row303, 03
	add col303, 05

	call specialcursor
	lea dx, symbol2
	call print101
	
	add row303, 03
	sub col303, 05

	call specialcursor
	lea dx, symbol2
	call print101
	
	add row303, 03
	add col303, 05

	call specialcursor
	lea dx, symbol1
	call print101

	add row303, 03
	sub col303, 05

	dec bl
	cmp bl, 0
	jne s1	

	mov dh, 00
	mov dl, 00
	call cursor101
	
	lea dx, marg3
	call print101

	mov dh, 11
	mov dl, 00
	call cursor101

	lea dx, marg2
	call print101

	mov row202, 00
h1:
	mov dh, row202
	mov dl, 79
	call cursor101

	lea dx, marg4
	call print101

	add row202, 01
	cmp row202, 24
	jne h1
	
ret
label303 endp

;--------------------

specialcursor proc near
	mov dh, row303
	mov dl, col303
	call cursor101

ret
specialcursor endp
;--------------------

scroll101 proc near
	mov ax, 0600h
	int 10h
ret
scroll101 endp


;--------------------
print101 proc near
	mov ah, 09h
	int 21h		
	
ret
print101 endp


;--------------------

cursor101 proc near
	mov ah, 02h
	mov bh, 00h
	int 10h
ret
cursor101 endp


;--------------------
;********************
;--------------------
;==============

blankfunction proc near

ret
blankfunction endp

;==============
player1 proc near

	mov dh, 20
	mov dl, 07
	call cursor101

	lea dx, kybd2
	call print101

	mov dh, 16
	mov dl, 07
	call cursor101

	lea dx, kybd1
	call print101


	mov bg, 17h
	mov row, 15
	mov col, 06
	mov row1, 17
	mov col1, 15	
	call color_player

	mov dh, 16
	mov dl, 07
	call cursor101

	lea dx, kybd1
	call print101


	mov bg, 03h
	call color_player

	call piece1


ret
player1 endp


;-----------------------------
piece1 proc near

	call anykey

	mov prow, 07
	mov pcol, 39
	mov prow1, 07
	mov pcol1, 43
	mov prow2, 07
	mov pcol2, 40

	mov dh, prow2
	mov dl, pcol2
	call cursor101

	call check_coordinate
	call possible_move


	mov dh, prow2
	mov dl, pcol2
	call cursor101

	lea si, pr1

	call print202

	lea dx, case
	call print101

g1:
	call scan202
	cmp bh, 00
	mov ah, 4dh
	if e call piece2

	cmp ah, 1Ch
	je g2

	jne g1
g2:

ret
piece1 endp


check_coordinate proc near


	call check101
	cmp ah, ' '
	jne b1
b1:
	call piece_highlighter

ret
check_coordinate endp


piece_highlighter proc near

	mov ch, prow
	mov cl, pcol
	mov dh, prow1
	mov dl, pcol1
	mov bh, 67h
	call scroll101

	mov dh, prow2
	mov dl, pcol2
	call cursor101

	lea si, pr1

	call print202

	lea dx, case
	call print101

ret
piece_highlighter endp

possible_move proc near
	
	call check_left
	call check_right
	call normalizer202

ret
possible_move endp


check_left proc near
	add prow, 03
	sub pcol, 05
	add prow1, 03

	sub pcol1, 05
	add prow2, 03
	sub pcol2, 05

	cmp pcol, 34
	je hlt1

	mov dh, prow2
	mov dl, pcol2
	call cursor101

	call check101
	cmp ah, ' '
	if ne call highlighter101

	call anykey
	call normalizer101

hlt1:
	sub prow, 03
	add pcol, 05
	sub prow1, 03
	add pcol1, 05
	sub prow2, 03
	add pcol2, 05

	
ret	
check_left endp


check_right proc near
	call anykey
	add prow, 03
	add pcol, 05
	add prow1, 03
	add pcol1, 05
	add prow2, 03
	add pcol2, 05

	cmp pcol, 79
	je hlt2

	mov dh, prow2
	mov dl, pcol2
	call cursor101

	call check101
	cmp ah, ' '
	if ne call highlighter101

	call anykey
	call normalizer101

hlt2:
	sub prow, 03
	sub pcol, 05
	sub prow1, 03
	sub pcol1, 05
	sub prow2, 03
	sub pcol2, 05

ret	
check_right endp

highlighter101 proc near
	mov ch, prow
	mov cl, pcol
	mov dh, prow1
	mov dl, pcol1
	mov bh, 0e7h	
	call scroll101

ret
highlighter101 endp

normalizer101 proc near
	mov bg, 31h

	mov ch, prow
	mov cl, pcol
	mov dh, prow1
	mov dl, pcol1
	mov bh, bg
	call scroll101

ret
normalizer101 endp	


normalizer202 proc near
	mov bg, 47h

	mov ch, prow
	mov cl, pcol
	mov dh, prow1
	mov dl, pcol1
	mov bh, bg
	call scroll101

ret
normalizer202 endp



;---------------------------


piece2 proc near

	call anykey
	
	mov p1row, 07
	mov p1col, 49
	mov p1row1, 07
	mov p1col1, 53
	mov p1row2, 07
	mov p1col2, 50

	mov dh, p1row2
	mov dl, p1col2
	call cursor101

	call check_coordinate1
	call possible_move1


	mov dh, p1row2
	mov dl, p1col2
	call cursor101

	lea si, pr2

	call print202

	lea dx, case
	call print101


f1:
	call scan202
	cmp ah, 4bh
	if e call piece1

	cmp ah, 4dh
	if e call piece3

	cmp ah, 1ch
	je f2

	jne f1

f2:

ret
piece2 endp



check_coordinate1 proc near


	call check101
	cmp ah, ' '
	jne b2
b2:
	call piece_highlighter1

ret
check_coordinate1 endp


piece_highlighter1 proc near

	mov ch, p1row
	mov cl, p1col
	mov dh, p1row1
	mov dl, p1col1
	mov bh, 67h
	call scroll101

	mov dh, p1row2
	mov dl, p1col2
	call cursor101

	lea si, pr2

	call print202

	lea dx, case
	call print101

ret
piece_highlighter1 endp

possible_move1 proc near
	
	
	call check_left1
	call check_right1
	call normalizer1202

ret
possible_move1 endp


check_left1 proc near
	add p1row, 03
	sub p1col, 05
	add p1row1, 03
	sub p1col1, 05
	add p1row2, 03
	sub p1col2, 05

	cmp p1col, 34
	je hlt101

	mov dh, p1row2
	mov dl, p1col2
	call cursor101

	call check101
	cmp ah, ' '
	if ne call highlighter1101

	call anykey
	call normalizer1101

hlt101:
	sub p1row, 03
	add p1col, 05
	sub p1row1, 03
	add p1col1, 05
	sub p1row2, 03
	add p1col2, 05

	
ret	
check_left1 endp


check_right1 proc near
	call anykey
	add p1row, 03
	add p1col, 05
	add p1row1, 03
	add p1col1, 05
	add p1row2, 03
	add p1col2, 05

	cmp p1col, 79
	je hlt202

	mov dh, p1row2
	mov dl, p1col2
	call cursor101

	call check101
	cmp ah, ' '
	if ne call highlighter1101

	call anykey
	call normalizer1101

hlt202:
	sub p1row, 03
	sub p1col, 05
	sub p1row1, 03
	sub p1col1, 05
	sub p1row2, 03
	sub p1col2, 05

ret	
check_right1 endp

highlighter1101 proc near
	mov ch, p1row
	mov cl, p1col
	mov dh, p1row1
	mov dl, p1col1
	mov bh, 0e7h
	call scroll101

ret
highlighter1101 endp

normalizer1101 proc near

	mov ch, p1row
	mov cl, p1col
	mov dh, p1row1
	mov dl, p1col1
	mov bh, 31h
	call scroll101

ret
normalizer1101 endp	

normalizer1202 proc near
	mov bg, 47h

	mov ch, p1row
	mov cl, p1col
	mov dh, p1row1
	mov dl, p1col1
	mov bh, bg
	call scroll101

ret
normalizer1202 endp



;---------------------------



piece3 proc near

	call anykey
	
	mov p2row, 07
	mov p2col, 59
	mov p2row1, 07
	mov p2col1, 63
	mov p2row2, 07
	mov p2col2, 60

	mov dh, p2row2
	mov dl, p2col2
	call cursor101

	call check_coordinate2
	call possible_move2


	mov dh, p2row2
	mov dl, p2col2
	call cursor101

	lea si, pr3

	call print202

	lea dx, case
	call print101


j1:
	call scan202
 
	cmp ah, 4bh
	if e call piece2

	cmp ah, 4dh
	if e call piece1

	cmp ah, 1ch
	je j2

	jne j1

j2:

ret
piece3 endp



check_coordinate2 proc near


	call check101
	cmp ah, ' '
	jne b3
b3:
	call piece_highlighter2

ret
check_coordinate2 endp


piece_highlighter2 proc near

	mov ch, p2row
	mov cl, p2col
	mov dh, p2row1
	mov dl, p2col1
	mov bh, 67h
	call scroll101

	mov dh, p2row2
	mov dl, p2col2
	call cursor101

	lea si, pr3

	call print202

	lea dx, case
	call print101

ret
piece_highlighter2 endp

possible_move2 proc near
	
	call check_left2
	call check_right2
	call normalizer2202

ret
possible_move2 endp


check_left2 proc near
	add p2row, 03
	sub p2col, 05
	add p2row1, 03
	sub p2col1, 05
	add p2row2, 03
	sub p2col2, 05

	cmp p2col, 34
	je hlt303

	mov dh, p2row2
	mov dl, p2col2
	call cursor101

	call check101
	cmp ah, ' '
	if ne call highlighter2101

	call anykey
	call normalizer2101

hlt303:
	sub p2row, 03
	add p2col, 05
	sub p2row1, 03
	add p2col1, 05
	sub p2row2, 03
	add p2col2, 05

	
ret	
check_left2 endp


check_right2 proc near
	call anykey
	add p2row, 03
	add p2col, 05
	add p2row1, 03
	add p2col1, 05
	add p2row2, 03
	add p2col2, 05

	cmp p2col, 79
	je hlt303

	mov dh, p2row2
	mov dl, p2col2
	call cursor101

	call check101
	cmp ah, ' '
	if ne call highlighter2101

	call anykey
	call normalizer2101

hlt404:
	sub p2row, 03
	sub p2col, 05
	sub p2row1, 03
	sub p2col1, 05
	sub p2row2, 03
	sub p2col2, 05

ret	
check_right2 endp

highlighter2101 proc near
	mov bg, 0e7h
	mov ch, p2row
	mov cl, p2col
	mov dh, p2row1
	mov dl, p2col1
	mov bh, bg
	call scroll101

ret
highlighter2101 endp

normalizer2101 proc near
	mov ch, p2row
	mov cl, p2col
	mov dh, p2row1
	mov dl, p2col1
	mov bh, 31h
	call scroll101

ret
normalizer2101 endp	

normalizer2202 proc near
	mov ch, p2row
	mov cl, p2col
	mov dh, p2row1
	mov dl, p2col1
	mov bh, 47h
	call scroll101

ret
normalizer2202 endp



;---------------------------



print202 proc near

	lea di, case
	mov ctr, 03
s1:
	mov al, [si]
	mov [di], al
	inc si
	inc di
	dec ctr
	jnz s1

ret
print202 endp

;===================
;===================

color_player proc near

	mov bh, bg
	mov ch, row
	mov cl, col
	mov dh, row1
	mov dl, col1
	call scroll101
		
ret
color_player endp

;--------------------

color_possible_move proc near
	mov bh, 0e7h
	mov ch, prow
	mov cl, pcol
	mov dh, prow1
	mov dl, pcol1
	call scroll101
ret
color_possible_move endp

;--------------------

check101 proc near
	mov ah, 08h
	int 10h
ret
check101 endp

;--------------------

	
;===================
;===================

player2 proc near

	mov dh, 16
	mov dl, 07
	call cursor101

	lea dx, kybd1
	call print101

	mov dh, 20
	mov dl, 07
	call cursor101

	lea dx, kybd2
	call print101

	mov bg, 17h
	mov row, 19
	mov col, 06
	mov row1, 21
	mov col1, 15	
	call color_player

	mov dh, 20
	mov dl, 07
	call cursor101

	lea dx, kybd2
	call print101

	call anykey

	mov bg, 03h
	call color_player


ret
player2 endp


;--------------------
;********************
;--------------------


menu proc near
	mov ax, 03h
	int 10h

	mov ax, 0600h
	mov cx, 0000h
	mov dx, 184fh
        mov bh, 01h
	int 10h

	mov ah, 02h
	mov dh, 02
	mov dl, 04
	mov bh, 00
	int 10h

        lea dx, block201
	call print101

	call scan101
	cmp al, 4Dh
	je z1

z1:	
	call players_profile
	call sd_main

ret
menu endp


;---------------------

players_profile proc near

	mov ax, 03h
	int 10h

	mov ch, 00
	mov cl, 00
	mov dh, 24
	mov dl, 79
	mov bh, 6eh
	call scroll101

	mov dh, 03
	mov dl, 00
	call cursor101

	lea dx, player01
	call print101

	mov dh, 12
	mov dl, 00
	call cursor101

	lea dx, player02
	call print101

	mov dh, 21
	mov dl, 00
	call cursor101

	lea dx, decision
	call print101

f1:	

	mov dh, 06
	mov dl, 60
	call cursor101

	mov ah, 0ah
	lea dx, string1
	int 21h

f2:

	mov dh, 15
	mov dl, 60
	call cursor101

	mov ah, 0ah
	lea dx, string2
	int 21h
s1:
	call scan101
	cmp al, 'Y'
	je yes
	cmp al, 'y'
	je yes

	cmp al, 'n'
	je no
	cmp al, 'N'
	je no

	jne s1
	
yes:	
	call sd_main

no:	
	call exit101

players_profile endp


;---------------------

scan101 proc near
	mov ah, 07h
	int 21h

ret
scan101 endp

;---------------------

scan202 proc near
	mov ah, 00
	int 16h
ret
scan202 endp

;---------------------

anykey proc near
	mov ah, 07h
	int 21h

ret
anykey endp

;---------------------

exit101 proc near
	mov ax, 4c00h
	int 21h

ret
exit101 endp

;==================================================================
end board
;==================================================================
