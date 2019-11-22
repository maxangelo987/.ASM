.model small
.code
org 100h
jmp main

ins1 db 'Enter Your Filename: ','$'

plist label byte
maxlen db 40
actlen db ?
kybd db 41 dup ('$')

str1 db 21 dup ('$')
exte db '.ASM','$'

match1 db 'MATCH','$'
notmth1 db 'NOT MATCH','$'

main proc near
	mov ax, 03h
	int 10h

	mov ah, 09h
	lea dx, ins1
	int 21h

	mov ah, 0ah
	lea dx, plist
	int 21h

lea si, kybd
lea di, str1
	
	mov ch, 00
	mov cl, actlen
	mov bx, cx
	mov dh, 4
p1:
	mov al, kybd[bx-4]
	mov [di], al
	inc di
	inc bx
	dec dh
	cmp dh, 0
	jne p1

	
;here:
;	mov ax, 03h
;	int 10h

;	mov ah, 09h
;	lea dx, str1
;	int 21h

lea si, str1
lea di, exte
	
	mov dl, 4
p2:
	mov al, [si]
	mov bl, [di]
	cmp al, bl
	je same1
	jne notsm

same1:
	inc si
	inc di
	dec dl
	cmp dl, 0
	jne p2
	je fok
fok:

	mov ch, 00
	mov cl, actlen
	mov bx, cx
	mov kybd[bx], 0

	mov ah, 3ch
	lea dx, kybd
	int 21h

	mov ax, 03h
	int 10h

	mov ah, 09h
	lea dx, match1
	int 21h
	jmp exit
notsm:
	mov ax, 03h
	int 10h

	mov ah, 09h
	lea dx, notmth1
	int 21h
	jmp exit
	
exit:
	int 20h
main endp
end main




