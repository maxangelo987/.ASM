.model small
.code
org 100h

jmp main

intro	db 	0ah,0dh,"Enter Input: ",'$'
outro	db 	0ah,0dh,"Output: ",'$'

row		db 	0
colom	db  0

parlist 	label		byte
maxlen		db 			30
actlen		db 			?
input		db	 		31 dup (' ')
output		db 			1 dup (' '),'$' 

main proc near
	mov ax, 03h
	int 10h
	
	mov ah, 09h
	lea dx, intro
	int 21h
	
	mov ah, 0ah
	lea dx, parlist
	int 21h
	
	lea si, input 
	mov cl, actlen
	
	mov al, 00
	
a0:
	lea di, output
	mov dx, 0
	mov ah, [si]
	mov [di],ah
	
	mov ah, 02h
	mov bh, 00
	mov dh, row
	mov dl, colom
	int 10h
	
	mov ah, 06h
	mov al, 00
	mov dh, row
	mov dl, colom 
	mov bh, row
	mov bl, colom
	mov bh, al
	int 10h
	
	mov ah, 09h
	lea dx, output
	int 21h
	
	add ax, 10
	inc si
	loop a0
	
        mov ah,0bh
        int 21h
        mov ah,07h
        int 21h	

		mov ax, 4c00h
int 21h

main endp
end main 
	
	
	
	