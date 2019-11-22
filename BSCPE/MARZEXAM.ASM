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
	cmp al, 'a'
	if e jmp  unchange
	cmp al, 'b'
	if e jmp  unchange
	cmp al, 'c'
	if e jmp  unchange
	cmp al, 'd'
	if e jmp  unchange
	cmp al, 'e'
	if e jmp  unchange
	cmp al, 'f'
	if e jmp  unchange
	cmp al, 'g'
	if e jmp  unchange
	cmp al, 'h'
	if e jmp  unchange
	cmp al, 'i'
	if e jmp  unchange
	cmp al, 'j'
	if e jmp  unchange
	cmp al, 'k'
	if e jmp  unchange
	cmp al, 'l'
	if e jmp  unchange
	cmp al, 'm'
	if e jmp  unchange
	cmp al, 'n'
	if e jmp  unchange
	cmp al, 'o'
	if e jmp  unchange
	cmp al, 'p'
	if e jmp  unchange
	cmp al, 'q'
	if e jmp  unchange
	cmp al, 'r'
	if e jmp  unchange
	cmp al, 's'
	if e jmp  unchange
	cmp al, 't'
	if e jmp  unchange
	cmp al, 'u'
	if e jmp  unchange
	cmp al, 'v'
	if e jmp  unchange
	cmp al, 'w'
	if e jmp  unchange
	cmp al, 'x'
	if e jmp  unchange
	cmp al, 'y'
	if e jmp  unchange
	cmp al, 'z'
	if e jmp  unchange
	cmp al, 'A'
	if e jmp  unchange
	cmp al, 'B'
	if e jmp  unchange
	cmp al, 'C'
	if e jmp  unchange
	cmp al, 'D'
	if e jmp  unchange
	cmp al, 'E'
	if e jmp  unchange
	cmp al, 'F'
	if e jmp  unchange
	cmp al, 'G'
	if e jmp  unchange
	cmp al, 'H'
	if e jmp  unchange
	cmp al, 'I'
	if e jmp  unchange
	cmp al, 'J'
	if e jmp  unchange
	cmp al, 'K'
	if e jmp  unchange
	cmp al, 'L'
	if e jmp  unchange
	cmp al, 'M'
	if e jmp  unchange
	cmp al, 'N'
	if e jmp  unchange
	cmp al, 'O'
	if e jmp  unchange
	cmp al, 'P'
	if e jmp  unchange
	cmp al, 'Q'
	if e jmp  unchange
	cmp al, 'R'
	if e jmp  unchange
	cmp al, 'S'
	if e jmp  unchange
	cmp al, 'T'
	if e jmp  unchange
	cmp al, 'U'
	if e jmp  unchange
	cmp al, 'V'
	if e jmp  unchange
	cmp al, 'W'
	if e jmp  unchange
	cmp al, 'X'
	if e jmp  unchange
	cmp al, 'Y'
	if e jmp  unchange
	cmp al, 'Z'
	if e jmp  unchange
	cmp al, '0'
	if e jmp  unchange
	cmp al, '1'
	if e jmp  unchange
	cmp al, '2'
	if e jmp  unchange
	cmp al, '3'
	if e jmp  unchange
	cmp al, '4'
	if e jmp  unchange
	cmp al, '5'
	if e jmp  unchange
	cmp al, '6'
	if e jmp  unchange
	cmp al, '7'
	if e jmp  unchange
	cmp al, '8'
	if e jmp  unchange
	cmp al, '9'
	if e jmp  unchange
	cmp al, ' '
	if e jmp unchange
	jmp change

unchange:
     inc di
	 dec bl
	 jmp process
change:
	mov al, '_'
	mov kybd[di], al
	inc di 
	dec bl
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
