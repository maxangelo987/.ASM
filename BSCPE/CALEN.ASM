.model small
.code
.org 100h
jmp main

selection db 'Browse Date [a]' ,10, 13
		  db 'Goto Date   [s]' ,10, 13
		  db 'Enter Date  [d]' ,10, 13
		  db 'Exit        [e]' ,10, 13
		  db 'Enter Here   : $'

daysdisp db 'SUN  MON  TUE  WED  THU  FRI  SAT$' ,10, 13		  

myrow db ?
mycol db ?
countdays db ?	  
startcol dw ?		  
keysel db ?
yearnum dw ?
monthnum dw ?
yeardiff dw ?
monthdiff dw ?
totaldays_diff dw ?
yeardiffcount dw ?
start_day dw ?
countrow dw ?
mycount db ?

listofyear db 10,13, ' ',10,13
		   db '2006 2007 2008 2009 2010' ,10 ,13
           db '2011 2012 2013 2014 2015' ,10 ,13
		   db '2016 2017 2018 2019 2020' ,10 ,13
		   db '2021 2022 2023 2024 2025' ,10 ,13
		   db '2026 2027 2028 2029 2030' ,10 ,13
		   db '2031 2032 2033 2034 2035' ,10 ,13
		   db ' Enter year here : $' ,10, 13

myword1 label byte
maxlen1 db 5
actlen1 db ?
word1 db 6 dup('$')

listofmonth db 10,13, ' ',10,13
		   db 'January  February  March' ,10 ,13
           db 'April    May       June ' ,10 ,13
		   db 'July     August    September' ,10 ,13
		   db 'October  November  December' ,10 ,13
		   db ' Enter month here : $' ,10, 13

one db '1$'		   
two db '2$'
three db '3$'
four db '4$'
five db '5$'
six db '6$'
seven db '7$'
eight db '8$'
nine db '9$'
ten db '10$'
eleven db '11$'
twelve db '12$'
thirteen db '13$'
fourteen db '14$'
fifteen db '15$'
sixteen db '16$'
seventeen db '17$'
eighteen db '18$'
nineteen db '19$'
twenty db '20$'
twentyone db '21$'
twentytwo db '22$'
twentythree db '23$'
twentyfour db '24$'
twentyfive db '25$'
twentysix db '26$'
twentyseven db '27$'
twentyeight db '28$'
twentynine db '29$'
thirty db '30$'
thirtyone db '31$'		   
		   
myword2 label byte
maxlen2 db 15
actlen2 db ?
word2 db 16 dup('$')


endl db 10, 13 ,'$'
hello db 10,13,"hello$"
w2006 db "2006",0
w2007 db "2007",0
w2008 db "2008",0
w2009 db "2009",0
w2010 db "2010",0
w2011 db "2011",0
w2012 db "2012",0
w2013 db "2013",0
w2014 db "2014",0
w2015 db "2015",0
w2016 db "2016",0
w2017 db "2017",0
w2018 db "2018",0
w2019 db "2019",0
w2020 db "2020",0
w2021 db "2021",0
w2022 db "2022",0
w2023 db "2023",0
w2024 db "2024",0
w2025 db "2025",0
w2026 db "2026",0
w2027 db "2027",0
w2028 db "2028",0
w2029 db "2029",0
w2030 db "2030",0
w2031 db "2031",0
w2032 db "2032",0
w2033 db "2033",0
w2034 db "2034",0
w2035 db "2035",0

wjan db "January",0
wfeb db "February",0
wmar db "March",0
wapr db "April",0
wmay db "May",0
wjun db "June",0
wjul db "July",0
waug db "August",0
wsep db "September",0
woct db "October",0
wnov db "November",0
wdec db "December",0

main proc near

call clrscr

process1:
	call clrscr
	call menu

call exit

main endp

;----------------------------------------------
menu proc near
	
	
	mov ah, 09h
	lea dx, selection
	int 21h

	mov ah, 1
	int 21h
	mov keysel, al
	
	cmp keysel, 'e'
	jne process2
	ret
	

menu endp
;---------------------------------------------
process2 proc near
	cmp keysel, 'a'
	jne process3
	
	mov ah, 09h
	lea dx, listofyear
	int 21h
		
	mov ah, 0ah
	lea dx, maxlen1
	int 21h
	
	call conv_yearstr_yearnum
	
	call clrscr

	mov ah, 09h
	lea dx, listofmonth
	int 21h
	
	mov ah, 0ah
	lea dx, maxlen2
	int 21h
	
	call conv_monthstr_monthnum
	
	call analyze_start_day
		
	call display_calendar_for_month
	
	
	
	jmp process1
process2 endp
;------------------------------------------------
process3 proc near
	
	
	jmp process1
process3 endp
;---------------------------------------------
display_calendar_for_month proc near
	
	call clrscr
	
	mov myrow, 1
	mov mycol, 24
	call setcursor
	
	mov ah, 09h
	lea dx, daysdisp
	int 21h	
	
	mov mycol, 25
	mov myrow, 2
	
	mov startcol, 0
	mov mycount, 1
	
	displayhere1:
	
		mov ax, start_day
		cmp ax, startcol
		if e jmp printdisplay1
		
		call setcursor
		mov ah, 02
		mov dl, ' '
		int 21h
		
		mov al, mycol
		add al, 5
		mov mycol, al
		
		inc startcol
		
		jmp displayhere1
		
		
	printdisplay1:
		cmp mycount, 31
		if g jmp printdisplay2
		
		cmp startcol, 7
		if e jmp printdisplay0
		jmp printdisplay0a
		
	printdisplay0:
		
		mov al, myrow
		add al, 1
		mov myrow, al
		mov mycol, 25
		mov startcol, 0
		
	printdisplay0a:		
		
		call setcursor
		mov bl, mycount
		call convnum
		inc startcol
		inc mycount
		mov al, mycol
		add al, 5
		mov mycol, al
		
		jmp printdisplay1

	printdisplay2:
	
	call debug
	
	
	ret
	
	
	
	
	
	
	
display_calendar_for_month endp
;-----------------------------------------------
display_start_day proc near	
	cmp start_day, 0
	if e jmp my1
	cmp start_day, 1
	if e jmp my2
	cmp start_day, 2
	if e jmp my3
	cmp start_day, 3
	if e jmp my4
	cmp start_day, 4
	if e jmp my5
	cmp start_day, 5
	if e jmp my6
	cmp start_day, 6
	if e jmp my7
	ret
	
	my1:
		mov ah, 02
		mov dl, '0'
		int 21h
		call debug
		ret
	my2:
	mov ah, 02
		mov dl, '1'
		int 21h
		call debug
		ret
	my3:
	mov ah, 02
		mov dl, '2'
		int 21h
		call debug
		ret
	my4:
	mov ah, 02
		mov dl, '3'
		int 21h
		call debug
		ret
	my5:
	mov ah, 02
		mov dl, '4'
		int 21h
		call debug
		ret
	my6:
	mov ah, 02
		mov dl, '5'
		int 21h
	call debug	
		ret
	my7:
	mov ah, 02
		mov dl, '6'
		int 21h
	call debug
	ret
		
display_start_day endp	
	

;---------------------------------------------
convnum proc near
	cmp bl, 1
	if e jmp convhere1
	cmp bl, 2
	if e jmp convhere2
	cmp bl, 3
	if e jmp convhere3
	cmp bl, 4
	if e jmp convhere4
	cmp bl, 5
	if e jmp convhere5
	cmp bl, 6
	if e jmp convhere6
	cmp bl, 7
	if e jmp convhere7
	cmp bl, 8
	if e jmp convhere8
	cmp bl, 9
	if e jmp convhere9
	cmp bl, 10
	if e jmp convhere10
	cmp bl, 11
	if e jmp convhere11
	cmp bl, 12
	if e jmp convhere12
	cmp bl, 13
	if e jmp convhere13
	cmp bl, 14
	if e jmp convhere14
	cmp bl, 15
	if e jmp convhere15
	cmp bl, 16
	if e jmp convhere16
	cmp bl, 17
	if e jmp convhere17
	cmp bl, 18
	if e jmp convhere18
	cmp bl, 19
	if e jmp convhere19
	cmp bl, 20
	if e jmp convhere20
	cmp bl, 21
	if e jmp convhere21
	cmp bl, 22
	if e jmp convhere22
	cmp bl, 23
	if e jmp convhere23
	cmp bl, 24
	if e jmp convhere24
	cmp bl, 25
	if e jmp convhere25
	cmp bl, 26
	if e jmp convhere26
	cmp bl, 27
	if e jmp convhere27
	cmp bl, 28
	if e jmp convhere28
	cmp bl, 29
	if e jmp convhere29
	cmp bl, 30
	if e jmp convhere30
	cmp bl, 31
	if e jmp convhere31

	convhere1:
		lea dx, one
		jmp convherea
	convhere2:
		lea dx, two
		jmp convherea
	convhere3:
		lea dx, three
		jmp convherea
	convhere4:
		lea dx, four
		jmp convherea
	convhere5:
		lea dx, five
		jmp convherea
	convhere6:
		lea dx, six
		jmp convherea
	convhere7:
		lea dx, seven
		jmp convherea
	convhere8:
		lea dx, eight
		jmp convherea
	convhere9:
		lea dx, nine
		jmp convherea
	convhere10:
		lea dx, ten
		jmp convherea
	convhere11:
		lea dx, eleven
		jmp convherea
	convhere12:
		lea dx, twelve
		jmp convherea
	convhere13:
		lea dx, thirteen
		jmp convherea
	convhere14:
		lea dx, fourteen
		jmp convherea
	convhere15:
		lea dx, fifteen
		jmp convherea
	convhere16:
		lea dx, sixteen
		jmp convherea
	convhere17:
		lea dx, seventeen
		jmp convherea
	convhere18:
		lea dx, eighteen
		jmp convherea
	convhere19:
		lea dx, nineteen
		jmp convherea
	convhere20:
		lea dx, twenty
		jmp convherea
	convhere21:
		lea dx, twentyone
		jmp convherea
	convhere22:
		lea dx, twentytwo
		jmp convherea
	convhere23:
		lea dx, twentythree
		jmp convherea
	convhere24:
		lea dx, twentyfour
		jmp convherea
	convhere25:
		lea dx, twentyfive
		jmp convherea
	convhere26:
		lea dx, twentysix
		jmp convherea
	convhere27:
		lea dx, twentyseven
		jmp convherea
	convhere28:
		lea dx, twentyeight
		jmp convherea
	convhere29:
		lea dx, twentynine
		jmp convherea
	convhere30:
		lea dx, thirty
		jmp convherea
	convhere31:
		lea dx, thirtyone
		jmp convherea
	
	convherea:
		mov ah, 09h
		int 21h
		ret

convnum endp
;--------------------------------------------
analyze_start_day proc near
	mov totaldays_diff, 0		
	
	mov ax, yearnum
	sub ax, 2006
	mov yeardiff, ax
		
	mov ax, monthnum
	sub ax, 1
	mov monthdiff, ax
	
	mov ax, yeardiff
	mov bx, 365
	mul bx
	
	mov totaldays_diff, ax
	
	mov ax, yeardiff                       ; checking for the leap year
	
	mov yeardiffcount, 0
	
	here1:
		cmp ax, 4
		jl here1a
		inc yeardiffcount
		sub ax, 4
		jmp here1
		
	here1a:
		cmp ax, 2	
		if l jmp here2a                             ; if rem is greater than 1 , add one for hte leap year
		cmp monthdiff, 2
		if l jmp here2a
		inc yeardiffcount
	
	here2a:
		mov ax,totaldays_diff
		add ax, yeardiffcount
		mov totaldays_diff,ax
	
		
	here2:	
		cmp monthdiff, 1
		if e jmp here3
		cmp monthdiff, 2
		if e jmp here4
		cmp monthdiff, 3
		if e jmp here5
		cmp monthdiff, 4
		if e jmp here6
		cmp monthdiff, 5
		if e jmp here7
		cmp monthdiff, 6
		if e jmp here8
		cmp monthdiff, 7
		if e jmp here9
		cmp monthdiff, 8
		if e jmp here10
		cmp monthdiff, 9
		if e jmp here11
		cmp monthdiff, 10
		if e jmp here12
		cmp monthdiff, 11
		if e jmp here13
		cmp monthdiff, 0
		if e jmp here14
	
	here3:
		mov ax, totaldays_diff
		add ax, 31
		mov totaldays_diff, ax
		dec monthdiff
		jmp here2
	here4:
		mov ax, totaldays_diff
		add ax, 28
		mov totaldays_diff, ax
		dec monthdiff
		jmp here2
	here5:
		mov ax, totaldays_diff
		add ax, 31
		mov totaldays_diff, ax
		dec monthdiff
		jmp here2
	here6:
		mov ax, totaldays_diff
		add ax, 30
		mov totaldays_diff, ax
		dec monthdiff
		jmp here2
	here7:
		mov ax, totaldays_diff
		add ax, 31
		mov totaldays_diff, ax
		dec monthdiff
		jmp here2
	here8:
		mov ax, totaldays_diff
		add ax, 30
		mov totaldays_diff, ax
		dec monthdiff
		jmp here2
	here9:
		mov ax, totaldays_diff
		add ax, 31
		mov totaldays_diff, ax
		dec monthdiff
		jmp here2
	here10:
		mov ax, totaldays_diff
		add ax, 31
		mov totaldays_diff, ax
		dec monthdiff
		jmp here2
	here11:
		mov ax, totaldays_diff
		add ax, 30
		mov totaldays_diff, ax
		dec monthdiff
		jmp here2
	here12:
		mov ax, totaldays_diff
		add ax, 31
		mov totaldays_diff, ax
		dec monthdiff
		jmp here2
	here13:
		mov ax, totaldays_diff
		add ax, 30
		mov totaldays_diff, ax
		dec monthdiff
		jmp here2
	
	here14:		
	mov ax, totaldays_diff
	
	here15:
		cmp ax, 7
		if l jmp here15a
		sub ax, 7
		jmp here15
	
	here15a:	
		mov start_day, ax
	
		ret
		
analyze_start_day endp
;---------------------------------------------
conv_yearstr_yearnum proc near
	mov bx, offset actlen1
	mov dx, offset word1
	add dl, byte [bx]
	mov bx, dx
	mov byte [bx], 0
	
	mov ax, offset word1
	mov di, ax
	mov ax, offset w2006
	mov si, ax
	mov ax, 121Eh
	int 2fh
	if e jmp y2006
	
	mov ax, offset w2007
	mov si, ax
	mov ax, 121Eh
	int 2fh
	if e jmp y2007
	
	mov ax, offset w2008
	mov si, ax
	mov ax, 121Eh
	int 2fh
	if e jmp y2008
	
	mov ax, offset w2009
	mov si, ax
	mov ax, 121Eh
	int 2fh
	if e jmp y2009
	
	mov ax, offset w2010
	mov si, ax
	mov ax, 121Eh
	int 2fh
	if e jmp y2010
	
	mov ax, offset w2011
	mov si, ax
	mov ax, 121Eh
	int 2fh
	if e jmp y2011
	
	mov ax, offset w2012
	mov si, ax
	mov ax, 121Eh
	int 2fh
	if e jmp y2012
	
	mov ax, offset w2013
	mov si, ax
	mov ax, 121Eh
	int 2fh
	if e jmp y2013
	
	mov ax, offset w2014
	mov si, ax
	mov ax, 121Eh
	int 2fh
	if e jmp y2014
	
	mov ax, offset w2015
	mov si, ax
	mov ax, 121Eh
	int 2fh
	if e jmp y2015
	
	mov ax, offset w2016
	mov si, ax
	mov ax, 121Eh
	int 2fh
	if e jmp y2016
	
	mov ax, offset w2017
	mov si, ax
	mov ax, 121Eh
	int 2fh
	if e jmp y2017
	
	mov ax, offset w2018
	mov si, ax
	mov ax, 121Eh
	int 2fh
	if e jmp y2018
	
	mov ax, offset w2019
	mov si, ax
	mov ax, 121Eh
	int 2fh
	if e jmp y2019
	
	mov ax, offset w2020
	mov si, ax
	mov ax, 121Eh
	int 2fh
	if e jmp y2020
	
	mov ax, offset w2021
	mov si, ax
	mov ax, 121Eh
	int 2fh
	if e jmp y2021
	
	mov ax, offset w2022
	mov si, ax
	mov ax, 121Eh
	int 2fh
	if e jmp y2022
	
	mov ax, offset w2023
	mov si, ax
	mov ax, 121Eh
	int 2fh
	if e jmp y2023
	
	mov ax, offset w2024
	mov si, ax
	mov ax, 121Eh
	int 2fh
	if e jmp y2024
	
	mov ax, offset w2025
	mov si, ax
	mov ax, 121Eh
	int 2fh
	if e jmp y2025
	
	mov ax, offset w2026
	mov si, ax
	mov ax, 121Eh
	int 2fh
	if e jmp y2026
	
	mov ax, offset w2027
	mov si, ax
	mov ax, 121Eh
	int 2fh
	if e jmp y2027
	
	mov ax, offset w2028
	mov si, ax
	mov ax, 121Eh
	int 2fh
	if e jmp y2028
	mov ax, offset w2029
	mov si, ax
	mov ax, 121Eh
	int 2fh
	if e jmp y2029
	
	mov ax, offset w2030
	mov si, ax
	mov ax, 121Eh
	int 2fh
	if e jmp y2030
	
	mov ax, offset w2031
	mov si, ax
	mov ax, 121Eh
	int 2fh
	if e jmp y2031
	
	mov ax, offset w2032
	mov si, ax
	mov ax, 121Eh
	int 2fh
	if e jmp y2032
	
	mov ax, offset w2033
	mov si, ax
	mov ax, 121Eh
	int 2fh
	if e jmp y2033
	
	mov ax, offset w2034
	mov si, ax
	mov ax, 121Eh
	int 2fh
	if e jmp y2034
	
	mov ax, offset w2035
	mov si, ax
	mov ax, 121Eh
	int 2fh
	if e jmp y2035
	
	mov yearnum, 0
	ret
	
	y2006:
		mov yearnum, 2006
		ret
	y2007:
		mov yearnum, 2007
		ret
	y2008:
		mov yearnum, 2008
		ret
	y2009:
		mov yearnum, 2009
		ret
	y2010:
		mov yearnum, 2010
		ret
	y2011:
		mov yearnum, 2011
		ret
	y2012:
		mov yearnum, 2012
		ret
	y2013:
		mov yearnum, 2013
		ret
	y2014:
		mov yearnum, 2014
		ret
	y2015:
		mov yearnum, 2015
		ret
	y2016:
		mov yearnum, 2016
		ret
	y2017:
		mov yearnum, 2017
		ret
	y2018:
		mov yearnum, 2018
		ret
	y2019:
		mov yearnum, 2019
		ret
	y2020:
		mov yearnum, 2020
		ret
	y2021:
		mov yearnum, 2021
		ret
	y2022:
		mov yearnum, 2022
		ret
	y2023:
		mov yearnum, 2023
		ret
	y2024:
		mov yearnum, 2024
		ret
	y2025:
		mov yearnum, 2025
		ret
	y2026:
		mov yearnum, 2026
		ret
	y2027:
		mov yearnum, 2027
		ret
	y2028:
		mov yearnum, 2028
		ret
	y2029:
		mov yearnum, 2029
		ret
	y2030:
		mov yearnum, 2030
		ret
	y2031:
		mov yearnum, 2031
		ret
	y2032:
		mov yearnum, 2032
		ret
	y2033:
		mov yearnum, 2033
		ret
	y2034:
		mov yearnum, 2034
		ret
	y2035:
		mov yearnum, 2035
		ret
	
conv_yearstr_yearnum endp
;-------------------------------------
conv_monthstr_monthnum proc near
	mov bx, offset actlen2
	mov dx, offset word2
	add dl, byte [bx]
	mov bx, dx
	mov byte [bx], 0
	
	mov ax, offset word2
	mov di, ax
	mov ax, offset wjan
	mov si, ax
	mov ax, 121Eh
	int 2fh
	if e jmp mjan
	
	mov ax, offset wfeb
	mov si, ax
	mov ax, 121Eh
	int 2fh
	if e jmp mfeb
	
	mov ax, offset wmar
	mov si, ax
	mov ax, 121Eh
	int 2fh
	if e jmp mmar
	
	mov ax, offset wapr
	mov si, ax
	mov ax, 121Eh
	int 2fh
	if e jmp mapr
	
	mov ax, offset wmay
	mov si, ax
	mov ax, 121Eh
	int 2fh
	if e jmp mmay
	
	mov ax, offset wjun
	mov si, ax
	mov ax, 121Eh
	int 2fh
	
	if e jmp mjun
	mov ax, offset wjul
	mov si, ax
	mov ax, 121Eh
	int 2fh
	if e jmp mjul
	
	mov ax, offset waug
	mov si, ax
	mov ax, 121Eh
	int 2fh
	
	if e jmp maug
	mov ax, offset wsep
	mov si, ax
	mov ax, 121Eh
	int 2fh
	if e jmp msep
	
	
	mov ax, offset woct
	mov si, ax
	mov ax, 121Eh
	int 2fh
	
	if e jmp moct
	
	mov ax, offset wnov
	mov si, ax
	mov ax, 121Eh
	int 2fh
	if e jmp mnov
	
	
	mov ax, offset wdec
	mov si, ax
	mov ax, 121Eh
	int 2fh
	if e jmp mdec
	
	
	ret
	
	mjan:
		mov monthnum, 1
		ret
	mfeb:
		mov monthnum, 2
		ret
	mmar:
		mov monthnum, 3
		ret
	mapr:
		mov monthnum, 4
		ret
	mmay:
		mov monthnum, 5
		ret
	mjun:
		mov monthnum, 6
		ret
	mjul:
		mov monthnum, 7
		ret
	maug:
		mov monthnum, 8
		ret
	msep:
		mov monthnum, 9
		ret
	moct:
		mov monthnum, 10
		ret
	mnov:
		mov monthnum, 11
		ret
	mdec:
		mov monthnum, 12
		ret
	
	
conv_monthstr_monthnum endp

;----------------------------------------------------------------
clrscr:
		mov ah, 00h
		mov al, 03h
		int 10h
		
		mov ah, 06h
		mov al, 00h
		mov bh, 07
		mov cx, 00h
		mov dh, 24
		mov dl, 80
		int 10h
		
		ret

exit:
		mov ax, 4c00h
		int 21h
		ret

debug:

		mov ah, 09h
		lea dx, hello
		int 21h
		
		mov ah, 01
		int 21h
		ret
		
setcursor:
		mov dh, myrow
		mov dl, mycol
		mov ah, 2
		mov bh, 00
		int 10h
		ret