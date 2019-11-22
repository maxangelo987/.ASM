.model small
.code
org 100h


jmp main

parlist label	byte	
maxlen 	db		20
actlen 	db 		?
input1	db 		21 dup (' ')
output1	db	 	21 dup (' '),'$'


nwl		db 		0ah,0dh,'$'
intro	db 		0ah,0dh,"Enter Input: ",'$'
outro	db 		0ah,0dh,"Output: ",'$'
main proc near
	mov ax, 03h
	int 10h

	mov ah, 09h
	lea dx, intro
	int 21h
	
	mov ah, 0ah
	lea dx, parlist 
	int 21h

	mov ah, 09h
	lea dx, outro
	int 21h	
	
	lea di, input1
	mov bl, actlen
	mov cl, actlen
	lea si,	output1
	dec bl
	
	
	a0:
		mov al, input1[bx]
		mov [si], al
		inc si
		dec bl
		dec cl
		jnz a0
	
		
	mov ah, 09h
	lea dx, output1
	int 21h
	
end101:
	mov ax, 4c00h
	int 21h

main endp 
end main	
	
	


	
	
	
