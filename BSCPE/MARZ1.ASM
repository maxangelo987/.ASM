.model small
.code
org 100h

begin:jmp a10main
      aschar db 0,'$'
	  
a10main proc near
		call b10screen
		call c10cursor
		call d10display
		int 20h
	a10main endp
	
b10screen proc near
		pusha
		mov ax,0600h
		mov bh,70
		mov cx,0000
		mov dx,184fh
		int 10h
		popa
		ret
	b10screen endp

c10cursor proc near
		pusha
		mov ah,02h
		mov bh,00
		mov dx,0800h
		int 10h
		popa
		ret
	c10cursor endp
	
d10display proc near
		pusha
		mov cx,256
		lea dx,aschar
	d20:cmp aschar,08h
		jb d30
		cmp aschar,0dh
		jbe d10display 
	d30:mov ah,ah
		int 21h
	d40:inc aschar
		loop d20
		popa
		ret
	d10display endp
	
	
	
