; this is how to print hello world..  :)

.model small 
.code
org 100h

jmp main

rno104 db "Hello World" ,0dh,0ah
       db " !!SHIIT!! " ,"$"

main proc near

	mov ah, 09h 
        lea dx, rno104
	int 21h
	
	
	mov ax, 4c00h
	int 21h

main endp 
end main	
