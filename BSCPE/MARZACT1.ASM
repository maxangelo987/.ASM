.model small
.code
org 100h

jmp main

plist label byte
maxlen db 59
actlen db ?
kybd db 60 dup('$'),0ah,0dh,'$'

word2 db 60 dup ('$'),0ah,0dh,'$'

ctr db 0
newx db 0
color db 1

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
	
	
	lea si, word2+1

a1:
	mov al,actlen
	cmp ctr,al
	if e jmp exit
	if ne jmp b1
b1:
	mov ah,02h
	mov bh,00
	mov dh,05
	mov dl,newx
	int 10h
	
	mov bh,00
	mov bl,color
	mov al,[si]
	mov cx,0001h
	mov ah,09h
	int 10h
	
	inc ctr
	jmp b2
	
b2:
	inc si
	inc newx
	mov al,color
	cmp al,15
	if e jmp b3
	if ne jmp b4
	
	
b3:
	mov color,1
	jmp a1
	
b4:
	inc color
	jmp a1
	
exit:
	int 20h
	
main endp
end main
