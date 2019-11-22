~^
#ERROR messages will be removed if you leave these first two lines in     @@@@#
.model small
.code
org 100h

jmp a10main
	parlist label byte
	maxnlen db 20
	actulen db ?
	kbname db 21 dup(' ')
	prompt db 'name?','$'
a10main proc near
	call q10clear
	
	mov ah,07h
	int 21h
	
	cmp al,'1'
	if e jmp here1
	cmp al,'2'
	if e jmp here2
	cmp al,'3'
	if e jmp here3
	cmp al,'4'
	if e jmp here4
	cmp al,'5'
	if e jmp finalstop
	jmp finalstop
	
here1:
	call screen1
	jmp menu
here2:
	call screen2
	jmp menu
here3:
	call screen3
	jmp menu
here4:
	call screen4
	jmp menu
	
a20:
	mov dx,0000
	call q20cursor
	call b10prmpt
	call c10input
	call q10clear
	cmp actulen,00
	je a30
	call d10code
	call e10center
	jmp a20
a30:
	mov ax,4c00h
	int 21h
a20main endp

screen1 proc near
	mov row,5h
~	           ^
#ERROR 45: Is It Byte Or Word?                                            @@@@#
	mov mode,al
	mov ah,00h
	mov al,03


process1:
	mov ax,03h
	int 10h
	
	mov ax,0600h
	mov bh,70h
	mov cx,0000h;mausob ang starting point sa row sa screen1
	mov dx,0B27h;mausob ang starting point sa column sa screen1
	int 10h
	
	mov ah,02h
	mov bh,00
	mov dh,row
	mov dl,5
	int 10h
	
	mov ah,07h
	int 21h
	
	cmp al,'w'
	if e jmp sub1
	cmp al,'s'
	if e jmp add1
	jmp process1

add1:
	inc row
	mov al,row
	cmp al,0ch
	if e jmp stop
	jmp process1
sub1:
	dec row
	mov al,row
	cmp al,-1h
	if e jmp stop
	jmp process1
	
b10prmpt proc near
	
	mov ah,09h
	lea dx,prompt
	int 21h
	ret
b10prmpt endp	

c10input proc near
	mov ah,0ah
	lea dx,parlist
	int 21h
	
	ret
c10input endp

d10code proc near
	mov bl,actulen
	mov bh,00
	mov kbname[bx],07
	mov kbname[bx+1],'$'
	ret
d10code endp

e10center proc near
	;mov dl,actulen
	;shr dl,1
	;neg dl
	;add dl,40
	;mov dh,12
	call q20cursor
	mov ah,09h
	lea dx,kbname
	int 21h
	ret
e10center endp

q10clear proc near
	
	mov ax,0600h
	mov bh,30
	mov cx,0000
	mov dx,0b27h
	int 10h
	ret
q10clear endp

q20cursor proc near
	mov ah,02h
	mov bh,00
	int 10h
	ret
q20cursor endp
	
	
end a10main
	
