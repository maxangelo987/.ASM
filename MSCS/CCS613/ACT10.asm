;========================================
;========================================

.model small
.code 
org 100h
jmp main

.data

string1 db 'Select a program to execute:  ',0ah,0dh,'$'

string2 db 9,' [1] MY PROFILE         ',179,0ah,0dh
			db 9,' [2] GRAPHICAL DISPLAYS ',179,0ah,0dh
			db 9,' [3] REVERSE STRING     ',179,0ah,0dh
			db 9,' [4] FIBONACCI SERIES   ',179,0ah,0dh
			db 9,' [5] ODD/EVEN           ',179,0ah,0dh
			db 9,' [6] SORTING INTEGERS   ',179,0ah,0dh
			db 9,' [7] EXIT               ',179,0ah,0dh,'$'
			
string3 db 'Your Choice:  ',0ah,0dh,'$'

filename1 db "example1.exe",0

main proc near

return:

	mov ah,0h			;video mode
	mov al,01h    
	int 10h
	
	call graphics
	call input
	
	mov ah,2h			;set cursor to the last line
	mov bh,0
	mov dh,23
	mov dl,0
	int 10h
	
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
	mov bh,01h		;white background,blue foreground
	mov ch,0
	mov cl,0
	mov dh,23
	mov dl,79
	int 10h

	mov ah,06h
	mov al,00h
	mov bh,11110001b			;white background,blue foreground
	mov ch,3
	mov cl,6
	mov dh,3
	mov dl,33
	int 10h
	
	mov ah,2h			;set cursor for string1
	mov bh,0
	mov dh,3
	mov dl,6
	int 10h
	
	mov ah,09h
	lea dx,string1
	int 21h
	
	mov ah,2h			;set cursor for char
	mov bh,0
	mov dh,2
	mov dl,5
	int 10h
	
	mov ah,09h			;print character '196'  _
	mov al,196
	mov bh,0
	mov bl,02h
	mov cx,30
	int 10h
	
	mov ah,2h			;set cursor for char
	mov bh,0
	mov dh,4
	mov dl,5
	int 10h
	
	mov ah,09h			;print character '196'  _
	mov al,196
	mov bh,0
	mov bl,02h
	mov cx,30
	int 10h
	
	mov ah,2h			;set cursor for char
	mov bh,0
	mov dh,2
	mov dl,4
	int 10h
	
	mov ah,09h			;print character '218'  upper corner left
	mov al,218
	mov bh,0
	mov bl,02h
	mov cx,1
	int 10h
	
	mov ah,2h			;set cursor for char
	mov bh,0
	mov dh,2
	mov dl,35
	int 10h
	
	mov ah,09h			;print character '191'  upper corner right
	mov al,191
	mov bh,0
	mov bl,02h
	mov cx,1
	int 10h
	
	mov ah,2h			;set cursor for char
	mov bh,0
	mov dh,3
	mov dl,4
	int 10h
	
	mov ah,09h			;print character '179'  l
	mov al,179
	mov bh,0
	mov bl,02h
	mov cx,1
	int 10h
	
	mov ah,2h			;set cursor for char
	mov bh,0
	mov dh,3
	mov dl,35
	int 10h
	
	mov ah,09h			;print character '179'  l
	mov al,179
	mov bh,0
	mov bl,02h
	mov cx,1
	int 10h
	
	mov ah,2h			;set cursor for char
	mov bh,0
	mov dh,4
	mov dl,4
	int 10h
	
	mov ah,09h			;print character '192'  lower left corner
	mov al,192
	mov bh,0
	mov bl,02h
	mov cx,1
	int 10h
	
	mov ah,2h			;set cursor for char
	mov bh,0
	mov dh,4
	mov dl,35
	int 10h
	
	mov ah,09h			;print character '217'  lower right corner
	mov al,217
	mov bh,0
	mov bl,02h
	mov cx,1
	int 10h
	
	mov ah,2h			;set cursor for string
	mov bh,0
	mov dh,7
	mov dl,0
	int 10h	
	
	mov ah,09h
	lea dx,string2
	int 21h
	
	mov ah,2h			;set cursor for char
	mov bh,0
	mov dh,5
	mov dl,8
	int 10h	
	
	mov ah,09h			;print character '196'  _
	mov al,196
	mov bh,0
	mov bl,01h
	mov cx,24
	int 10h
	
	mov ah,2h			;set cursor for char
	mov bh,0
	mov dh,15
	mov dl,8
	int 10h	
	
	mov ah,09h			;print character '196'  _
	mov al,196
	mov bh,0
	mov bl,01h
	mov cx,24
	int 10h
	
	mov ah,2h			;set cursor for char
	mov bh,0
	mov dh,5
	mov dl,7
	int 10h	
	
	mov ah,09h			;print character '218'  _
	mov al,218
	mov bh,0
	mov bl,01h
	mov cx,1
	int 10h
	
	mov ah,2h			;set cursor for char
	mov bh,0
	mov dh,5
	mov dl,32
	int 10h	
	
	mov ah,09h			;print character '218'  _
	mov al,191
	mov bh,0
	mov bl,01h
	mov cx,1
	int 10h
	
	mov ah,2h			;set cursor for char
	mov bh,0
	mov dh,6
	mov dl,7
	int 10h	
	
	mov ah,09h			;print character '218'  _
	mov al,179
	mov bh,0
	mov bl,01h
	mov cx,1
	int 10h
	
	mov ah,2h			;set cursor for char
	mov bh,0
	mov dh,7
	mov dl,7
	int 10h	
	
	mov ah,09h			;print character '218'  _
	mov al,179
	mov bh,0
	mov bl,01h
	mov cx,1
	int 10h
	
	mov ah,2h			;set cursor for char
	mov bh,0
	mov dh,8
	mov dl,7
	int 10h	
	
	mov ah,09h			;print character '218'  _
	mov al,179
	mov bh,0
	mov bl,01h
	mov cx,1
	int 10h
	
	mov ah,2h			;set cursor for char
	mov bh,0
	mov dh,9
	mov dl,7
	int 10h	
	
	mov ah,09h			;print character '218'  _
	mov al,179
	mov bh,0
	mov bl,01h
	mov cx,1
	int 10h
	
	mov ah,2h			;set cursor for char
	mov bh,0
	mov dh,10
	mov dl,7
	int 10h	
	
	mov ah,09h			;print character '218'  _
	mov al,179
	mov bh,0
	mov bl,01h
	mov cx,1
	int 10h
	
	mov ah,2h			;set cursor for char
	mov bh,0
	mov dh,11
	mov dl,7
	int 10h	
	
	mov ah,09h			;print character '218'  _
	mov al,179
	mov bh,0
	mov bl,01h
	mov cx,1
	int 10h
	
	mov ah,2h			;set cursor for char
	mov bh,0
	mov dh,12
	mov dl,7
	int 10h	
	
	mov ah,09h			;print character '218'  _
	mov al,179
	mov bh,0
	mov bl,01h
	mov cx,1
	int 10h
	
	mov ah,2h			;set cursor for char
	mov bh,0
	mov dh,13
	mov dl,7
	int 10h	
	
	mov ah,09h			;print character '218'  _
	mov al,179
	mov bh,0
	mov bl,01h
	mov cx,1
	int 10h
	
	mov ah,2h			;set cursor for char
	mov bh,0
	mov dh,14
	mov dl,7
	int 10h	
	
	mov ah,09h			;print character '218'  _
	mov al,179
	mov bh,0
	mov bl,01h
	mov cx,1
	int 10h
	
	mov ah,2h			;set cursor for char
	mov bh,0
	mov dh,15
	mov dl,7
	int 10h	
	
	mov ah,09h			;print character '218'  _
	mov al,192
	mov bh,0
	mov bl,01h
	mov cx,1
	int 10h
	
	mov ah,2h			;set cursor for char
	mov bh,0
	mov dh,15
	mov dl,32
	int 10h	
	
	mov ah,09h			;print character '218'  _
	mov al,217
	mov bh,0
	mov bl,01h
	mov cx,1
	int 10h
	
	mov ah,2h			;set cursor for char
	mov bh,0
	mov dh,14
	mov dl,32
	int 10h	
	
	mov ah,09h			;print character '218'  _
	mov al,179
	mov bh,0
	mov bl,01h
	mov cx,1
	int 10h
	
	mov ah,2h			;set cursor for char
	mov bh,0
	mov dh,6
	mov dl,32
	int 10h	
	
	mov ah,09h			;print character '218'  _
	mov al,179
	mov bh,0
	mov bl,01h
	mov cx,1
	int 10h
	
	mov ah,06h
	mov al,00h
	mov bh,11110001b			;white background,blue foreground
	mov ch,17
	mov cl,13
	mov dh,18
	mov dl,26
	int 10h
	
	mov ah,2h			;set cursor for char
	mov bh,0
	mov dh,17
	mov dl,14
	int 10h	
	
	mov ah,09h
	lea dx,string3
	int 21h

ret
graphics endp

;========================================

input proc near

	mov ah,2h			;set cursor for char
	mov bh,0
	mov dh,18
	mov dl,20
	int 10h	
	
	mov ah,1
	int 21h
	
	mov ch,al
	sub ch,48
	
	cmp ch,1
	je here1
	
	;cmp ch,2
	
	;cmp ch,3
	
	;cmp ch,4
	
	;cmp ch,5
	
	;cmp ch,6
	
	;cmp ch,7

ret
input endp

;========================================

choice1 proc near

here1:

mov ah,3dh
mov al,0
mov dx,offset filename1
int 21h

jmp return

ret
choice1 endp