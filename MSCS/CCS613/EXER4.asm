;========================================
;========================================

.model small
.code
org 100h
jmp main                     ; jump to main


plist1 label byte
maxlen db 59
actlen db ?
kybd db 60 dup ('$'),0ah,0dh

msg2 db 10,13, 'odd$'
msg3 db 10,13, 'even$'

msg4 db 'Enter integers: $'
even1 db 'Even: $'
odd1 db 'Odd: $'

space1 db '',0ah,0dh
       db '$'

word3 db 60 dup  ('$'),0ah,0dh     ; word3 will be now the will save

v1      db      00h      ; even count
v2      db      00h	 ; odd count

nl      db      00h,20h,'$' ; 00h null


main proc near

	mov ah,0h			;video mode
	mov al,03h    
	int 10h

	call graphics
	call process
	
	mov ah,2h			;set cursor to the last line
	mov bh,0
	mov dh,23
	mov dl,0
	int 10h
	
	mov ax,4c00h  	 ;terminate
	int 21h

main endp
end main

;========================================
;========================================

graphics proc near

	mov ax,1003h
	mov bx,0   ; disable blinking. 
	int 10h
	
	mov ah,06h
	mov al,00h
	mov bh,10110000b		;light cyan background,black foreground
	mov ch,5
	mov cl,10
	mov dh,8
	mov dl,68
	int 10h
	
	mov ah,06h
	mov al,00h
	mov bh,11110000b		;white background,black foreground
	mov ch,6
	mov cl,12
	mov dh,7
	mov dl,66
	int 10h
	
	mov ah,2h			;set cursor for string enter integers
	mov bh,0
	mov dh,6
	mov dl,12
	int 10h
	
	mov ah,09h
	lea dx,msg4
	int 21h
	
	mov ah,06h
	mov al,00h
	mov bh,02h			;black background,green foreground
	mov ch,10
	mov cl,10
	mov dh,13
	mov dl,68
	int 10h
	
	mov ah,2h			;set cursor for char
	mov bh,0
	mov dh,10
	mov dl,11
	int 10h
	
	mov ah,09h			;print character '196' 
	mov al,196
	mov bh,0
	mov bl,02h
	mov cx,57
	int 10h
	
	mov ah,2h			;set cursor for char
	mov bh,0
	mov dh,10
	mov dl,10
	int 10h
	
	mov ah,09h			;print character '218' 
	mov al,218
	mov bh,0
	mov bl,02h
	mov cx,1
	int 10h
	
	mov ah,2h			;set cursor for char
	mov bh,0
	mov dh,11
	mov dl,10
	int 10h
	
	mov ah,09h			;print character '179' 
	mov al,179
	mov bh,0
	mov bl,02h
	mov cx,1
	int 10h
	
	mov ah,2h			;set cursor for char
	mov bh,0
	mov dh,12
	mov dl,10
	int 10h
	
	mov ah,09h			;print character '179' 
	mov al,179
	mov bh,0
	mov bl,02h
	mov cx,1
	int 10h
	
	mov ah,2h			;set cursor for char
	mov bh,0
	mov dh,13
	mov dl,10
	int 10h
	
	mov ah,09h			;print character '179' 
	mov al,179
	mov bh,0
	mov bl,02h
	mov cx,1
	int 10h
	
	mov ah,2h			;set cursor for char
	mov bh,0
	mov dh,14
	mov dl,10
	int 10h
	
	mov ah,09h			;print character '192' 
	mov al,192
	mov bh,0
	mov bl,02h
	mov cx,1
	int 10h
	
	mov ah,2h			;set cursor for char
	mov bh,0
	mov dh,14
	mov dl,11
	int 10h
	
	mov ah,09h			;print character '196' 
	mov al,196
	mov bh,0
	mov bl,02h
	mov cx,57
	int 10h
	
	mov ah,2h			;set cursor for char
	mov bh,0
	mov dh,10
	mov dl,68
	int 10h
	
	mov ah,09h			;print character '191' 
	mov al,191
	mov bh,0
	mov bl,02h
	mov cx,1
	int 10h
	
	mov ah,2h			;set cursor for char
	mov bh,0
	mov dh,11
	mov dl,68
	int 10h
	
	mov ah,09h			;print character '179' 
	mov al,179
	mov bh,0
	mov bl,02h
	mov cx,1
	int 10h
	
	mov ah,2h			;set cursor for char
	mov bh,0
	mov dh,12
	mov dl,68
	int 10h
	
	mov ah,09h			;print character '179' 
	mov al,179
	mov bh,0
	mov bl,02h
	mov cx,1
	int 10h
	
	mov ah,2h			;set cursor for char
	mov bh,0
	mov dh,13
	mov dl,68
	int 10h
	
	mov ah,09h			;print character '179' 
	mov al,179
	mov bh,0
	mov bl,02h
	mov cx,1
	int 10h
	
	mov ah,2h			;set cursor for char
	mov bh,0
	mov dh,14
	mov dl,68
	int 10h
	
	mov ah,09h			;print character '217' 
	mov al,217
	mov bh,0
	mov bl,02h
	mov cx,1
	int 10h
	
	mov ah,06h
	mov al,00h
	mov bh,11110001b			;white background,blue foreground
	mov ch,11
	mov cl,12
	mov dh,13
	mov dl,66
	int 10h
	
	mov ah,2h			;set cursor for string even
	mov bh,0
	mov dh,11
	mov dl,15
	int 10h
	
	mov ah,09h
	lea dx,even1
	int 21h
	
	mov ah,2h			;set cursor for string odd
	mov bh,0
	mov dh,13
	mov dl,15
	int 10h
	
	mov ah,09h
	lea dx,odd1
	int 21h

ret
graphics endp

;========================================

process proc near

	mov ah,2h			;set cursor for  input
	mov bh,0
	mov dh,6
	mov dl,29
	int 10h

	mov bp, 0h

loop1:

    mov ah, 1	      	     ; scanning 
  	int 21h
	
	mov ah, 09h
	lea dx, nl
	int 21h

	mov cl,al
    sub cl,30h                   ; minus 48
	
  	mov word3[bp], al
  	inc bp
	mov word3[bp], ' '
	inc bp

	cmp cl, 0
	je done
	
	mov ah, 0

check:

	mov dl, 2
	div dl
	cmp ah, 0
	jne odd
	
even:
	
	add v1, 1

	jmp loop1
	
odd:	

	add v2, 1

	jmp loop1
	
done:

	mov ah,2h			;set cursor for number of even
	mov bh,0
	mov dh,11
	mov dl,21
	int 10h

	mov ah,02h
    mov dl,v1                  ;print even count
    add dl,30h
    int 21h
	
	mov ah,2h			;set cursor for string even
	mov bh,0
	mov dh,13
	mov dl,20
	int 10h

    mov ah,02h
    mov dl,v2                  ;print odd count
    add dl,30h
    int 21h

ret
process endp

;========================================
