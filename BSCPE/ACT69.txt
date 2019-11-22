.model small
.code
org 100h
	jmp main
	
	block db ?
	base db ?
	q1 db ?
	
main proc near
new:
	call clear
	mov base, 19h
start:
	mov block, 02h
	mov dh, 00h
	mov dl, 24h
box:
call set_cur
	mov ah, 09h
	mov bh, 00h
	mov bl, 33h
	mov cx, 0006h
	mov al, 40h
	int 10h

	inc dh
call delay
call delay
call delay
call delay
	cmp dh, block
	jne box
	je fall
	
fall:
	inc block
	
call set_cur
	mov ah, 09h
	mov bh, 00h
	mov bl, 33h
	mov cx, 0006h
	mov al, 40h
	int 10h
	
	inc dh
	call delay
	call delay
	call delay
	call delay
	mov q1, dh
	call erase_line	
	mov al, base
	cmp block, al
	je reduce
	jne fall
reduce:
	mov ah, 09h
	mov bh, 00h
	mov bl, 33h
	mov cx, 0006h
	mov al, 40h
	int 10h
sub base, 3
cmp base, 01h
	jne start
	jmp new
main endp
	
set_cur proc near

	mov ah, 02h
	mov bh, 00h
	int 10h
	ret
	 
set_cur endp

delay proc near

	mov bp, 0ffffh
	delay1:
	mov si, 0ffffh
	delay2:
	nop
	dec si
	jnz delay2
	dec bp
	cmp si, 0
	jnz delay1
	ret
	
delay endp

erase_line proc near
	
	sub q1, 3
	pusha
	mov dh, q1
	mov dl, 24h
	
	call set_cur
	
	mov ah, 09h
	mov bh, 00h
	mov bl, 00h
	mov cx, 0006h
	mov al, 40h
	int 10h
	popa
	ret
	
erase_line endp

clear proc near

	mov ax, 0600h
	mov bh, 07h
	mov cx, 0000h
	mov dx, 184fh
	int 10h
	ret
clear endp
end main
