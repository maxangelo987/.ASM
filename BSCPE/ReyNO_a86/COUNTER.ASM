.model small
.code

org 100h
jmp main

out1		db 	 	10 dup ('$') 

main proc near
	lea di, out1
	
	mov di, '*'
	
	mov ah, 09h
	lea dx, out1
	int 21h
	
	mov ax, 4c00h
	int 21h
	
main endp 
end main  
	
