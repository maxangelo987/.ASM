.model small
.code 
org 100h
jmp main 

rno 	label 	byte
max 	db 		20
act		db 		?
inp1	db 		21 dup (' ')

pass101 db 		'luthang','$'
life	db		3
paa		db 		7
print101	db 		0ah,0dh,'Entered Password is Correct.','$' 
intro1          db      0ah,0dh,'Enter Password: ','$'


main proc near
	mov ax, 03h
	int 10h
a1: 
	mov ah, 09h
	lea dx, intro1
	int 21h

	mov ah, 0ah 
	lea dx, rno 
	int 21h
	
	lea di, pass101
	lea si, inp1
	mov cl, act
	
	cmp cl, 07h
	je comp_1
	jne hill
	
hill: 
	dec life 
	jz exit101
	jnz	a1
	
comp_1:
	mov al, [si]
	mov bl, [di]
	cmp al, bl
	je comp_2
	jne hill
	
comp_2:
	inc si
	inc di
	dec paa 
	jnz comp_1  
	jz pass_11
	
pass_11:
		mov ah, 09h 
		lea dx, print101
		int 21h
		
exit101:
	mov ax, 4c00h
	int 21h
	
main endp
end main	
	
