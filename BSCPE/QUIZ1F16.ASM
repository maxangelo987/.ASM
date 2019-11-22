.model small
.code
org 100h

jmp main

plist label byte
maxlen db 59
actlen db ?
kybd db 60 dup('$'),0ah,0dh,'$'

word3 db 'enter a string: ','$'
word1 db 0ah,0dh,'$'
word2 db 40 dup ('$'),0ah,0dh,'$'

str1 db 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789 ','$' 

main proc near

	mov ax,03h
	int 10h
	
	mov ah,09h
	lea dx,word3
	int 21h
	
	mov ah,0ah
	lea dx,plist
	int 21h
	
	
	mov bl, actlen
	mov di, 0

process:
	cmp bl, 0
	if e jmp stop
	mov al, kybd[di]
	mov si, 0
	process2:
		cmp si, 63
		if e jmp process4
		mov cl, str1[si]
		cmp al, cl		
		if e jmp taysa
		jmp process3
		
		process3:
			inc si
			jmp process2
		
	
process4:
jmp pulihan
			
		
		
	
taysa:
     inc di
	 dec bl
	 jmp process

pulihan:
	mov al, '_'
	mov kybd[di], al
	inc di 
	dec bl
	jmp process
	
stop:

	
	mov ah, 09h
	lea dx, word1
	int 21h
	
	mov ah, 09h
	lea dx, kybd
	int 21h
	
	int 20h
	
main endp 
end main
