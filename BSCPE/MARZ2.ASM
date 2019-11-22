.model small
.code
org 100h

jmp main

word1 db'BISU-MAIN CAMPUS TAGBILARAN CITY, BOHOL',0ah,0dh,'$'
word2 db 39 dup('*'),0ah,0dh,'$'

main proc near

	mov ax,03h
	int 10h
	
	mov ah,09h
	lea dx,word1
	int 21h
	
	mov si,38
	mov di,0 
	
process:
		cmp si,-1
		if e jmp here
		mov ah,word1[si]
		mov word2[di],ah
		inc di
		dec si
		jmp process
		
here:
	mov ah,09h
	lea dx, word2
	int 21h
	
	int 20h
	main endp
	end main
