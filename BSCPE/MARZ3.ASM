.model small
.code
org 100h

jmp main

plist label byte
maxlen db 59
actlen db ?
kybd db 60 dup('$'),0ah,0dh,'$'

word1 db 0ah,0dh,'$'
word2 db 40 dup ('$'),0ah,0dh,'$'

main proc near

	mov ax,03h
	int 10h
	
	mov ah,0ah
	lea dx,plist
	int 21h
	
	
	mov bl, actlen
	mov di, 0
	
process:
	cmp bx,-1
	if e jmp here
	mov al,kybd[bx]
	mov word2[di],al
	dec bx
	inc di
	jmp process
	
here:
	mov ah,09h
	lea dx,kybd
	int 21h
	
	mov ah,09h
	lea dx,word1
	int 21h
	
	mov ah,09h
	lea dx,word2
	int 21h
	
	int 20h

main endp 
end main
