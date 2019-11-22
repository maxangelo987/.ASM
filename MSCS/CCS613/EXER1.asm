;========================================
;========================================

.model small
.code 
org 100h
jmp main
string1 db 'C E B U  I N S T I T U T E  O F  T E C H N O L O G Y',0ah,0dh,'$'
string2 db 'C C S  6 1 3 / 6 3 5',0ah,0dh,'$'
string3 db 'COMPUTER SYSTEM ORGANIZATION',0ah,0dh,'$'
string4 db 'A S S E M B L Y  L A N G U A G E',0ah,0dh,'$'
string5 db 'P R O G R A M M I N G',0ah,0dh,'$'
string6 db 'Perin, Max Angelo',0ah,0dh,'$'
string7 db '  MS-CS  ',0ah,0dh,'$'
string8 db 'MS Computer Science I',0ah,0dh,'$'

main proc near

	mov ah,0h			;video mode
	mov al,03h    
	int 10h

	mov bh,71h			;gray background,blue foreground
    mov ch,0
    mov cl,0
    mov dh,24
    mov dl,79
	call hey
	
	call title1
	call definition
	call name1
	
	mov bh,7Fh			;gray background,white foreground
    mov ch,23
    mov cl,0
    mov dh,24
    mov dl,79
	call hey
	
	mov ah,01				;hide cursor
	mov ch,32
	int 10h
	
	mov ah,07				;press any key
	int 21h
	
	mov ah,2h			;set cursor to the last line
	mov bh,0
	mov dh,23
	mov dl,0
	int 10h
	
	mov ah,01			;display cursor again
	mov ch,6
	mov cl,7
	int 10h
	
	mov ax,4c00h  	 ;terminate
	int 21h

main endp

;========================================
;========================================

hey proc near

	mov ah,06h
	mov al,00h
	int 10h

	mov ax,1003h
	mov bx,0   ; disable blinking. 
	int 10h

ret
hey endp

;========================================

title1 proc near

	mov bh,12h			;blue background,green foreground
    mov ch,0
    mov cl,2
    mov dh,04
    mov dl,77
	call hey
	
	mov bh,11100010b		;yellow background,green foreground
    mov ch,1
    mov cl,4
    mov dh,3
    mov dl,75
	call hey
	
	mov ah,2h			;set cursor
	mov bh,0
	mov dh,2
	mov dl,15
	int 10h
	
	mov ah,09h			;print string1
	lea dx,string1
    int 21h

ret
title1 endp

;========================================

definition proc near

	mov bh,2Eh		;green background,yellow foreground
    mov ch,6
    mov cl,6
    mov dh,15
    mov dl,77
	call hey
	
	mov bh,1Eh			;blue background,yellow foreground
    mov ch,8
    mov cl,2
    mov dh,17
    mov dl,73
	call hey
	
	mov bh,4Eh		;red background,yellow foreground
    mov ch,7
    mov cl,4
    mov dh,16
    mov dl,75
	call hey
	
	mov ah,2h			;set cursor
	mov bh,0
	mov dh,8
	mov dl,30
	int 10h
	
	mov ah,09h			;print string2
	lea dx,string2
    int 21h
	
	mov ah,2h			;set cursor
	mov bh,0
	mov dh,10
	mov dl,26
	int 10h
	
	mov ah,09h			;print string3
	lea dx,string3
    int 21h
	
	mov ah,2h			;set cursor
	mov bh,0
	mov dh,13
	mov dl,24
	int 10h
	
	mov ah,09h			;print string4
	lea dx,string4
    int 21h
	
	mov ah,2h			;set cursor
	mov bh,0
	mov dh,15
	mov dl,30
	int 10h
	
	mov ah,09h			;print string5
	lea dx,string5
    int 21h
	
	call greenstripes

ret
definition endp

;========================================

greenstripes proc near

	mov bh,2Eh		;1st green stripe,yellow foreground
    mov ch,8
    mov cl,6
    mov dh,15
    mov dl,6
	call hey
	
	mov bh,2Eh		;2nd green stripe,yellow foreground
    mov ch,8
    mov cl,8
    mov dh,15
    mov dl,8
	call hey
	
	mov bh,2Eh		;3rd green stripe,yellow foreground
    mov ch,8
    mov cl,10
    mov dh,15
    mov dl,10
	call hey
	
	mov bh,2Eh		;4th green stripe,yellow foreground
    mov ch,8
    mov cl,12
    mov dh,15
    mov dl,12
	call hey
	
	mov bh,2Eh		;5th green stripe,yellow foreground
    mov ch,8
    mov cl,67
    mov dh,15
    mov dl,67
	call hey
	
	mov bh,2Eh		;6th green stripe,yellow foreground
    mov ch,8
    mov cl,69
    mov dh,15
    mov dl,69
	call hey
	
	mov bh,2Eh		;7th green stripe,yellow foreground
    mov ch,8
    mov cl,71
    mov dh,15
    mov dl,71
	call hey
	
	mov bh,2Eh		;8th green stripe,yellow foreground
    mov ch,8
    mov cl,73
    mov dh,15
    mov dl,73
	call hey

ret
greenstripes endp

;========================================

name1 proc near

	mov bh,1Eh		;blue background,yellow foreground
    mov ch,20
    mov cl,6
    mov dh,22
    mov dl,32
	call hey
	
	mov bh,4Eh		;red background,yellow foreground
    mov ch,19
    mov cl,4
    mov dh,21
    mov dl,30
	call hey
	
	mov ah,2h			;set cursor
	mov bh,0
	mov dh,20
	mov dl,6
	int 10h
	
	mov ah,09h			;print string6
	lea dx,string6
    int 21h
	
	mov bh,1Eh		;blue background,yellow foreground
    mov ch,20
    mov cl,51
    mov dh,22
    mov dl,77
	call hey
	
	mov bh,4Eh		;red background,yellow foreground
    mov ch,19
    mov cl,49
    mov dh,21
    mov dl,75
	call hey
	
	mov ah,2h			;set cursor
	mov bh,0
	mov dh,20
	mov dl,37
	int 10h
	
	mov ah,09h			;print string7
	lea dx,string7
    int 21h
	
	mov ah,2h			;set cursor
	mov bh,0
	mov dh,20
	mov dl,52
	int 10h
	
	mov ah,09h			;print string8
	lea dx,string8
    int 21h

ret
name1 endp

;========================================
