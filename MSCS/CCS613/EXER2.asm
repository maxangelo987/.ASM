;========================================
;========================================

.model small
.code 
org 100h
jmp main

.data

string4 db 60 dup(?),0ah,0dh,'$'		;for reversed

plist label byte									;for input
maxlen db 59
actlen db ?
kybd db 60 dup ('$'),0ah,0dh

string1 db 'INPUT:  ',0ah,0dh,'$'
string2 db 'GAY LINGO: ',0ah,0dh,'$'

main proc near

	mov ah,0h			;video mode
	mov al,03h    
	int 10h
	
	call graphics
	call input
	call output
	
	mov ax,4c00h   ;terminate
	int 21h

main endp

;========================================

graphics proc near

	mov ax,1003h
	mov bx,0   ; disable blinking. 
	int 10h
	
	mov ah,06h
	mov al,00h
	mov bh,02h			;black background,green foreground
	mov ch,0
	mov cl,0
	mov dh,24
	mov dl,79
	int 10h

	mov ah,06h
	mov al,00h
	mov bh,12h			;blue background,green foreground
	mov ch,1
	mov cl,2
	mov dh,5
	mov dl,77
	int 10h
	
	mov ah,06h
	mov al,00h
	mov bh,11100010b			;yellow background,green foreground
	mov ch,2
	mov cl,4
	mov dh,4
	mov dl,75
	int 10h
	
	mov ah,06h
	mov al,00h
	mov bh,12h			;blue background,green foreground
	mov ch,12
	mov cl,2
	mov dh,16
	mov dl,77
	int 10h
	
	mov ah,06h
	mov al,00h
	mov bh,11100010b			;yellow background,green foreground
	mov ch,13
	mov cl,4
	mov dh,15
	mov dl,75
	int 10h
	
	mov ah,2h			;set cursor for string 1
	mov bh,0
	mov dh,3
	mov dl,6
	int 10h
	
	mov ah,09h			;print string1
	lea dx,string1
    int 21h
	
	mov ah,2h			;set cursor for string 2
	mov bh,0
	mov dh,14
	mov dl,6
	int 10h
	
	mov ah,09h			;print string2
	lea dx,string2
    int 21h

ret
graphics endp

;========================================

input proc near

	mov ah,2h			;set cursor for input
	mov bh,0
	mov dh,3
	mov dl,13
	int 10h
		
	mov ah, 0ah		      ;scan input string
	lea dx, plist
	int 21h

ret
input endp

;========================================

output proc near

	mov ah,2h			;set cursor for output
	mov bh,0
	mov dh,14
	mov dl,17
	int 10h
	
	mov bl, actlen
	sub bl, 1h
	mov bp, 0h

	loop1:
	mov cl, kybd[bx]      
	mov string4[bp], cl
	inc bp
	dec bx
	cmp bx, -1h
	je here1
	jne loop1

	here1:

	mov ah,09h			;print string
	lea dx,string4
    int 21h
	
	mov ah,2h			;set cursor to the last line
	mov bh,0
	mov dh,23
	mov dl,0
	int 10h
	
ret
output endp

;========================================
