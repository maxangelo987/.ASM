.model small
.code
org 100h

jmp main

word1 db'BISU-MAIN $','$'
Word2 db'BISU-MENU $','$'

mode db 00
row db ?

main proc near
menu:
	mov ax,03h
	int 10h
	
	call hide_cur
	
	mov ah,09h
	lea dx,word2
	int 21h
	
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
main endp
end main

screen1 proc near
	mov row,5h
	mov mode,al
	mov ah,00h
	mov al,03h
process1:
	mov ax,03h
	int 21h
	
	mov ax,0600h
	mov bh,70h
	mov cx,0000h
	mov dx,0B27h
	
	mov ah,02h
	mov bh,00
	mov dh,row
	mov dl,5
	
	call hide_cur
a10:	
	mov ah,09h
	lea dx,word1
	int 21h
	
	mov ah,07h
	int 21h
	
	cmp al,'w'
	if e jmp sub1
	cmp al,'s'
	if e jmp add1
	jmp process1
	jmp a10
	
add1:
	inc row
	mov ah,row
	cmp al,0ch
	if e jmp stop
	jmp process1
	jmp a10
sub1:
	dec row
	mov al,row
	cmp al,-1h
	if e jmp stop
	jmp process1
	jmp a10
	ret
	
	screen1 endp
	end screen1

screen2 proc near
	jmp screen1
	
process2:
	mov ax,03h
	int 10h
	
	mov ax,0600h
	mov bh,70h
	mov cx,0028h
	mov dx,0B4Fh
	
a20:
	mov ah,02h
	mov bh,00
	mov dh,row
	mov dl,45
	
	call hide_cur
	jmp a10
	jmp add1
	jmp sub1
	
ret
 screen2 endp
end screen2
	
screen3 proc near
	mov row,18
	mov mode,al
	mov ah,00h
	mov al,03
process3:
	mov ax,03h
	int 10h
	
	mov ax,0600h
	mov bh,70h
	mov cx,0C00h
	mov dx,1827h
	
	mov ah,02h
	mov bh,00
	mov dh,row
	mov dl,5

	call hide_cur
	jmp a10
	
add3:
	inc row
	mov al,row
	cmp al,18h
	if e jmp stop
	jmp process3
sub3:
	dec row
	mov al,row
	cmp al,0Bh
	if e jmp stop
	jmp process3
	ret
screen3 endp
end screen3

screen4 proc near
	mov row,18
	mov mode,al
	mov ah,00h
	mov al,03
	
process4:
	mov ax,0600h
	mov bh,70h
	mov cx,0C28h
	mov dx,1850h
	
	jmp a20
	call hide_cur
	jmp a10
add4:
	inc row
	mov al,row
	cmp al,19h
	if e jmp stop
	jmp process4
sub4:
	dec row
	mov al,row
	cmp al,0Bh
	if e jmp stop
	jmp process4
	ret
	
screen4 endp
end screen4
	
stop proc near
	mov ah,10h
	int 16h
	
	jmp menu
	stop endp
	end stop
	
finalstop proc near
	int 20h
	
	hide_cur proc near
	mov ah,3
	int 10h
	mov ah,1
	int 20h
	ret
	ret hide_cur
	end hide_cur
