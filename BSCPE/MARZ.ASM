.model small
.code
org 100h

jmp main
                
 string1 db 'BISU-MAIN CAMPUS',0ah,0dh,'$'
 string2 db 16 dup('$'),0ah,0dh,'$'
 
 main proc near
	mov ax, 03h
	int 10h
	
	mov ah,09h
	lea dx,string1 
	int 21h
	
	;lea si,string1
	;lea di,string2xd
	;mov cx,16
	
	mov si, 15
	mov di, 0

	
process:
		cmp si, -1h
		if e jmp here
		
		mov al,string1[si]
		mov string2[di],al
		dec si
		inc di
		jmp process
	
	
here:
mov ah,09h
lea dx,string2
int 21h

int 20h
main endp
end main
		
	
