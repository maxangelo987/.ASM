.model small
.code
org 100h
jmp main

plist label byte
maxlen db 30
actlen db ?
kybd db 31 dup ('$'),'$'

word1 db 'Enter Sentence: ','$'
word2 db ' Word(s)','$'

word3 db 'Declarative','$'
word4 db 'Interrogative','$'

counter db 0
d1 db 0
d2 db 68

main proc near
        mov ax, 03h
        int 10h

        mov ah, 09h
        lea dx, word1
        int 21h
	
	mov ah, 0ah
	lea dx, plist
	int 21h
				
	mov bl, actlen
	dec bl
	
	cmp kybd[bx],'?'
	if e jmp intero
	
	cmp kybd[bx],'.'
	if e jmp declar
	
	jmp stop		

declar:
	call declarative
	jmp stop	

intero:
	call interrogative	
	jmp stop

stop:
   	mov ah,0bh
	int 21h

        mov ah, 07h
        int 21h

	mov ax, 4c00h
        int 21h

main endp
end main



declarative proc near

	mov ax, 03h
	int 10h
	
	mov dl, actlen
	lea di, kybd
	
loop1:
	cmp dl, 0
	if e jmp prword
	dec dl

	mov al, [di]
	cmp al, ' '
	if e jmp ctr
	inc di
	jmp loop1

	ctr:
	inc counter
	inc di
	jmp loop1


prword:	
	mov cl, counter
	add cl, 49

	mov ah, 02h
        mov dh, 00h
        mov dl, 00h
        mov bh, 00h
        int 10h
	
	mov ah, 02h
	mov dl, cl
	int 21h
		
	mov ah, 02h
        mov dh, 00h
        mov dl, 01h
        mov bh, 00h
        int 10h

	mov ah, 09h
	lea dx, word2
	int 21h

	mov bl, 70
pdec:
	cmp bl, 0h
	if e jmp here1
	dec bl
	call delay
	call clear101b	

	mov ah, 02h
        mov dh, 12
        mov dl, d1
        mov bh, 00h
        int 10h
	
	mov ah, 09h
	lea dx, word3
	int 21h
	inc d1
	jmp pdec

here1:		
	mov ah,0bh
	int 21h

ret
declarative endp
end declarative




interrogative proc near
	mov ax, 03h
	int 10h
	
	mov dl, actlen
	lea di, kybd

	
loop2:
	cmp dl, 0
	if e jmp prword2
	dec dl

	mov al, [di]
	cmp al, ' '
	if e jmp ctr2
	inc di
	jmp loop2

	ctr2:
	inc counter
	inc di
	jmp loop2


prword2:
	
	mov cl, counter
	add cl, 49

	mov ah, 02h
        mov dh, 00h
        mov dl, 00h
        mov bh, 00h
        int 10h
	
	mov ah, 02h
	mov dl, cl
	int 21h
		
	mov ah, 02h
        mov dh, 00h
        mov dl, 01h
        mov bh, 00h
        int 10h

	mov ah, 09h
	lea dx, word2
	int 21h
	mov bl, 68

pdec2:
	cmp bl, 0h
	if e jmp here2
	dec bl
	call delay
	call clear101b	

	mov ah, 02h
        mov dh, 12
        mov dl, d2
        mov bh, 00h
        int 10h
	
	mov ah, 09h
	lea dx, word4
	int 21h
	dec d2
	jmp pdec2

here2:		
	mov ah,0bh
	int 21h

ret
interrogative endp
end interrogative






;============================
delay proc near

mov cx,10000
 delay1:
    push cx
    mov cx, 2000
 delay2:
    loop delay2
    pop cx
    loop delay1

ret
delay endp
end delay
;============================
;============================
clear101b  proc  near

        mov ah, 06h
        mov al, 00h
        mov ch, 02
        mov cl, 00
        mov dh, 24
        mov dl, 79
        mov bh, 0bh              
        int 10h						
	ret

clear101b endp
end clear101b
;============================