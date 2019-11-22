.model small
.code
org 100h
jmp menu

block1  db  '                                                                    ',0ah,0dh
        db  '                лллллллллллллллллллллллллллллллллллллллллллллллллл  ',0ah,0dh
        db  '                лллллллллллллллллллллллллллллллллллллллллллллллллл  ',0ah,0dh
        db  '                лллллллллллллллллллллллллллллллллллллллллллллллллл  ',0ah,0dh  
        db  '                лл                                              лл  ',0ah,0dh
        db  '                лл                                              лл  ',0ah,0dh 
        db  '                лл  л   л  лл   л  ллл  л      ллл   ллл  л  л  лл  ',0ah,0dh
        db  '                лл  л   л  л л  л  л  л л     л   л л     л л   лл  ',0ah,0dh
        db  '                лл  л   л  л  л л  ллл  л     л   л л     лл    лл  ',0ah,0dh
        db  '                лл  л   л  л   лл  л  л л     л   л л     л л   лл  ',0ah,0dh
        db  '                лл   ллл   л    л  ллл  ллллл  ллл   ллл  л  л  лл  ',0ah,0dh,'$'
block2  db  '                лл                                              лл  ',0ah,0dh
        db  '                лл             л  л  л  лл   л   ллл            лл  ',0ah,0dh
        db  '                лл             л л      л л  л  л               лл  ',0ah,0dh
        db  '                лл             лл    л  л  л л  л  лл           лл  ',0ah,0dh
        db  '                лл             л л   л  л   лл  л   л           лл  ',0ah,0dh
        db  '                лл             л  л  л  л    л   ллл            лл  ',0ah,0dh
        db  '                лл                                              лл  ',0ah,0dh 
        db  '                лллллллллллллллллллллллллллллллллллллллллллллллллл  ',0ah,0dh
        db  '                лллллллллллллллллл PRESS ANY KEY ллллллллллллллллл  ',0ah,0dh
        db  '                лллллллллллллллллллллллллллллллллллллллллллллллллл  ',0ah,0dh,'$'


menu proc near
 mov ax, 03h
 int 10h
 

 mov ah, 06h        ;set color background 
 mov al, 00h
 mov ch, 00
 mov cl, 00
 mov dh, 15
 mov dl, 79
 mov bh, 64h
 int 10h
	
 mov ah, 02h
 mov dh, 2
 mov dl, 00
 mov bh, 00h
 int 10h

 mov ah, 09h
 lea dx, block1
 int 21h

	
 mov ah, 06h        ;set color background 
 mov al, 00h
 mov ch, 13
 mov cl, 00
 mov dx, 4F4Fh
     
 mov bh,61h ; 27
 int 10h
		
 mov ah, 02h
 mov dh, 13
 mov dl, 00
 mov bh, 00h
 int 10h

 mov ah, 09h
 lea dx, block2
 int 21h

 mov ah, 0bh
 int 21h
 mov ah, 07h
 int 21h
 
 				
 menu endp
end menu

help proc near
	mov ax, 03h
	int 10h
	
	mov ah,06h                      ; set color background 
        mov al,00h
        mov ch,00
        mov cl,00
        mov dh,24
        mov dl,79
        mov bh,51h ; 51h
        int 10h
	
	mov ah, 02h
        mov dh, 00h
        mov dl, 00h
        mov bh, 00h
        int 10h

;	mov ah, 09h
;       lea dx, marg1
;       int 21h

		
        mov ah, 02h
        mov dh, 03h
        mov dl, 00h
        mov bh, 00h
        int 10h
		
;       mov ah, 09h
;       lea dx, intro1		; load intro
;       int 21h
		
	mov ah,0bh
	int 21h
        mov ah,07h
	int 21h
		
	call main

help endp
end help


main proc near
        		
	mov ax,03h				;clear screen for end of the game.
        int 10h
		
	mov ah, 02h
        mov dh, 00h
        mov dl, 00h
        mov bh, 00h
        int 10h
		
	mov ah,06h
        mov al,00h
        mov ch,00
        mov cl,00
        mov dh,24
        mov dl,79
        mov bh,57h
        int 10h
		
	mov ah, 02h
        mov dh, 00h
        mov dl, 00h
        mov bh, 00h
        int 10h
		
	mov ah,0bh		;red_key or Press_Any Key.. to Continue
	int 21h
        mov ah,07h
	int 21h	
		
	call menu
		
main endp
end main
