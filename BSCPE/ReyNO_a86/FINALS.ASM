.model small
.code
org 100h

jmp main 

;-------------------------------
parlist   label   byte
maxlen          db              30
actlen 		db 		?
input           db              31 dup (' ')
output		db 		1	dup (' '),'$'
;-------------------------------

row	 db  0
colom	db 0	
counter	db 	?
color 	db 	36h

main proc near

	mov ax, 03h
	int 10h
	
	mov ah, 0ah
	lea dx, parlist
	int 21h

	lea di,input
	mov cl,actlen
	mov counter, cl
	
	cmp counter,0
	je exit
	
	

a0:		
		lea si, output
		mov si, 0
		
		mov ah, 02h
		mov dh, row
		mov dl, colom
		mov bh, 00h
		int 10h

		
		mov ah,06h
        mov al,00h
        mov ch,row
        mov cl,colom
        mov dh,row
        mov dl,colom
        mov bh, color
        int 10h
		
		mov ah, 02h
		mov dh, row
		mov dl, colom
		mov bh, 00h
		int 10h
		
		mov bl, [di]
;-------------------------------	
		mov dl, bl
		
		mov ah, 02h
		int 21h
;-------------------------------		
		add color, 21h
		
		inc colom
		inc di 
		
		
		dec counter
		jnz a0
exit:		
mov ax, 4c00h
int 21h

main endp
end main 		
