.model small
.code
org 100h

jmp main

plist label byte
maxlen db 59
actlen db ?
kybd db 60 dup('$'),0ah,0dh,'$'

word1 db 0ah,0dh,'$'


ctr db 0
newx db 40  dup('$'),0ah,0dh,'$'
color db 1

main proc near

	mov ax,03h
	int 10h
	
	mov ah,0ah
	lea dx,plist
	int 21h
	
	lea si,kybd
	
	mov bl, actlen
	mov di, 0
	

	
	
process:
	cmp bx,-1
	if e jmp here
	mov al,kybd[bx]
	mov newx[di],al
	dec bx
	inc di
	jmp process
	
	call color1
	
here:
	mov ah,09h
	lea dx,kybd
	int 21h
	
	mov ah,09h
	lea dx,word1
	int 21h
	
	;call color1
	

	mov ah,09h
	lea dx,newx
	int 21h
		
	
	int 20h


color1 proc near

a1:
	mov bl,actlen
	cmp ctr,bl
	if e jmp exit
	if ne jmp b1
	
b1:
	mov ah,02h
	mov bh,00
	mov dh,01
	mov dl,00
	int 10h
	
	mov bh,00
	mov al,color
	mov bl,[si]
	mov cx,0001h
	mov ah,09h
	int 10h
	
	inc ctr
	jmp b2
	
b2:
	inc si
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

ret	
color endp


	

