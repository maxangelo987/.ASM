.model small
.code
org 100h
	
jmp main

	size db ?
	main proc near
	
	mov ax, 0600h
	mov bh, 07h
	mov cx, 0000h
	mov dx, 184fh
	int 10h
	
block_size:
	mov dh, 05h
	mov size, dh
	mov cx, 0020h
	mov dx, 003ah
	
block:

	mov ax, 0600h
	mov bh, 25h;para asa ni
	int 10h
	
	call delay
	
	cmp dh, size
	je fall
	inc dh
	jmp block
	
fall:

	call clear
	
	cmp size, 18h
	je block_size
	inc ch
	inc dh
	inc size
	jmp block
	
	main endp

clear proc near

	pusha;unsay sud sa a
	mov ax, 0600h
	mov bh, 07h
	mov cx, 0000h
	mov dx, 184fh
	int 10h
	popa
	ret
	
clear endp
	
delay proc near
	mov bp, 0ffffh
	delay1:
	mov si, 0ffffh
	delay2:
	nop
	dec si;importante
	jnz delay2
	dec bp
	cmp si, 0
	jnz delay1
	ret
delay endp
	
stop proc near
int 20h
ret
stop endp
end main