.model small
.code
org 100h

jmp main

plist label byte
maxlen db 59
actlen db ?
kybd db 60 dup('$'),0ah,0dh,'$'

word1 db 'enter string:' ,'$'

main proc near
	mov ax,03h
	int 10h
	
	mov ah,0ah
	lea dx,plist
	int 21h
	
	mov ah,09h
	lea dx,word1
	int 21h

process:








color proc near:
	
	
	
int 20h	
main endp
end main
	
	
	
