.model small
.code
org 100h

jmp main

plist label byte
maxlen db 59
actlen db ?
kybd db 60 dup('$'),0ah,0dh,'$'

word3 db 'enter a string: ','$' 


main proc near

	mov ax,03h
	int 10h
	
	mov ah,09h
	lea dx,word3
	int 21h
	
	mov ah,0ah
	lea dx,plist
	int 21h
	
	mov bx, 00
	mov cx, 00
process:
	cmp bx, 60
	if e jmp stop 
	cmp kybd[bx],'o'
	if e jmp count
	jmp unchange
		
count:

		inc cx
		cmp cx, 02
		if e jmp change
		inc bx
		jmp process
		
change:

	mov al,'e'
	mov kybd[bx], al
	dec bx

	mov al,'e'
	mov kybd[bx], al
	inc bx
	inc bx
	jmp process
	
unchange:
	mov cx, 00
	inc bx
	 jmp process
	 
	 
stop:
	mov ax, 03h
	int 10h
	
	
	
	mov ah, 09h
	lea dx, kybd
	int 21h
	
	int 20h
	
main endp 
end main
		