.model small
.code
org 100h

jmp main

plist label byte
maxlen db 59
actlen db ?
kybd db 60 dup('$'),0ah,0dh,'$'

plist1 label byte
maxlen1 db 59
actlen1 db ?
kybd1 db 60 dup('$'),0ah,0dh,'$'


word2 db ('ENTER COMPARE STRING: '),'$',0ah,0dh

word3 db ('WORD FOUND '),'$',0ah,0dh
word4 db ('WORD NOT FOUND '),'$',0ah,0dh


ctr db 0

ctr1 db 0
newx db 0
color db 1
row1 db ?
col1 db ?

counter db 48

tigihap db 60 dup('$'),0ah,0dh,'$'


main proc near

	mov ax,03h
	int 10h
	
	mov ah,0ah
	lea dx,plist
	int 21h
	
	mov row1, 0
	mov col1, 0
	call curse	
	
	mov ah,09h
	lea dx,kybd
	int 21h
	
 	mov row1, 1
	call curse
	
	mov ah, 09h
	lea dx, word2
	int 21h
		
	mov ah,0ah
	lea dx,plist1
	int 21h

	mov bp, 0
	mov bx, 0
	mov si, 0
	
	mov dl,actlen+1

loop1:
	dec dl
	cmp dl, 0
	if e jmp final

	
	
	mov cl, kybd[bp]
	mov al, kybd1[bx]
	cmp al, cl
	if e jmp here1
	if ne jmp here3
	
		here1:
			mov al, kybd[bp+1]
			cmp al, " "
			if e jmp naayword
				
			mov al, kybd[bp+1]
			cmp al, "$"
			if e jmp naayword

		
			if ne jmp here2
			
			here2:
				inc bx
				inc bp
				jmp loop1
	
		here4:
			inc bp
			inc counter
		
			mov bx, 0
			jmp loop1
		
		here3:
			mov al, kybd[bp]
			cmp al, " "
			if e jmp here4
			cmp al, "$"
			if e jmp here6
			
			inc bp
			jmp here3

here6:
	jmp final
			
naayword:
		inc counter
		mov al, counter
		mov tigihap[si],al
		inc si
		mov al, " "
		mov tigihap[si],al
		inc si
		mov bx, 0
		dec counter
		inc bp
		jmp loop1
			

final:
	mov al, "$"
	mov tigihap[si],al
		
	mov al, tigihap[0]
	cmp al, '$'
	if e jmp walayword
	jmp finalna
			
				
		
			
walayword:
	mov row1, 2
	call curse
	
	mov ah, 09h
	lea dx, word4
	int 21h
	jmp exit	

		
finalna:

	mov row1, 2
	call curse
	
	mov ah, 09h
	lea dx, kybd1
	int 21h

	mov row1, 3
	call curse
	
	mov ah, 09h
	lea dx, word3
	int 21h
	
	
loop4:
	mov row1, 4
	call curse
	
	mov ah, 09h
	lea dx, tigihap
	int 21h


	
	
	; ANI NAGSUGOD LAHAT
	
	
	mov bp, 0

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

	mov bx, 0
	mov ch, actlen1
	mov ctr1, ch 

loop1c:		
		cmp ctr1, 0
		if e jmp loop3c
		
		mov dh, kybd1[bx]
		mov dl, kybd[bp]
		cmp dl, dh
		if e jmp color1c
		jmp loop2c
		
		loop2c:
		 inc bx
		 dec ctr1
		 jmp loop1c
	
	
loop3c:
	mov bh,00
	mov bl, 07 
	mov al,kybd[bp]
	mov cx,0001h
	mov ah,09h
	int 10h
	
	inc ctr
	inc bp
	
	jmp b2
	
	
color1c:
	mov bh,00
	mov bl,2
	mov al,kybd[bp]
	mov cx,0001h
	mov ah,09h
	int 10h
	
	inc ctr
	inc bp
	
	jmp b2
	
b2:
	inc newx;
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


curse proc near
        mov ah,02h
        mov dh,row1
        mov dl,col1
        mov bh,00
        int 10h
        ret
        curse endp
