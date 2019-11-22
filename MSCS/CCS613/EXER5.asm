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

msg2 db 'Ascending Order: $'
msg3 db 'Descending Order: $'

msg4 db 'Enter integers: $'
even1 db 'Even: $'
odd1 db 'Odd: $'

enter1 db '',0ah,0dh
       db '$'
	   
space1 db ' $'

word3 db 60 dup  ('$'),0ah,0dh     ; word3 will temporary
word4 db 60 dup  ('$'),0ah,0dh     ; word3 will be ascending order
word5 db 60 dup  ('$'),0ah,0dh     ; word3 will be descending order


V1      db      00H      ; even count
V2      db      00H	 ; odd count

	j db 00h
	i db 00h
	tp db 0


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

graphics proc near

	mov ax,1003h
	mov bx,0   ; disable blinking. 
	int 10h

	mov ah,06h
	mov al,00h
	mov bh,11100000b	;yellow background,black foreground
	mov ch,4
	mov cl,8
	mov dh,7
	mov dl,72
	int 10h
	
	mov ah,06h
	mov al,00h
	mov bh,40h		;red background,black foreground
	mov ch,9
	mov cl,8
	mov dh,12
	mov dl,72
	int 10h
	
	mov ah,2h			;set cursor for msg4
	mov bh,0
	mov dh,5
	mov dl,12
	int 10h
	
	mov ah, 09h
	lea dx, msg4
	int 21h
	
	mov ah,2h			;set cursor for msg2
	mov bh,0
	mov dh,10
	mov dl,12
	int 10h
	
	mov ah, 09h
	lea dx, msg2
	int 21h
	
	mov ah,2h			;set cursor for msg3
	mov bh,0
	mov dh,11
	mov dl,12
	int 10h
	
	mov ah, 09h
	lea dx, msg3
	int 21h
	
	mov ah,2h			;set cursor for input
	mov bh,0
	mov dh,6
	mov dl,18
	int 10h

ret

graphics endp
end graphics

;========================================

process proc near

mov bp, 0h

loop1:

    mov ah, 1	      	     ; SCANNING 
  	int 21h	

	mov cl,al
    sub cl,30H                   ; minus 48
	
	
  	mov word3[bp], al
	
  	inc bp
	
	mov word3[bp], ' '
	
	inc bp
	
	cmp cl, 0
	je done
		
	mov ah, 09h
	lea dx, space1
	int 21h   
	
	jmp loop1
	
done:

	mov tp, bl

	mov bp, 0
	
lx:	

	mov al, word3[bp]
	mov word4[bp], al
	mov word5[bp], al
	
	inc bp
	
	cmp word3[bp], '0'
	
	jne lx
	
; ASCENDING 	
;;;;;;;;;;;; 
	
	mov bx, 00                             ;  bx is for kybd[i]
	mov i, 00

for1:

	cmp word4[bx], '$'
	je done1
  	
	mov j, 00
	mov bp, 00 ; bp is for kybd[j]
		
for2:

	cmp word4[bp], '$'
	je here2
	
	mov dl, word4[bx]      ; bx- i ; bp - j 
	mov dh, word4[bp]	
	cmp dl, dh
	
	jl here1
	jg for22
	
	
for22:
	inc bp
	inc bp
	inc j
	inc j
	jmp for2
	
here1:	

	mov dl, word4[bx]
	mov al, word4[bp]
    mov word4[bx], al
    mov word4[bp], dl		
	inc bp
	inc bp
	inc j
	inc j
	jmp for2
	
here2:
     inc bx
	 inc bx
     inc i
	 inc i
     jmp for1
				
done1:

; DESCENDING 	
;;;;;;;;;;;;
  
	mov bx, 00                             ;  bx is for kybd[i]
	mov i, 00

for1d:

	cmp word5[bx], '$'
	je done2
  	
	mov j, 00
	mov bp, 00 ; bp is for kybd[j]
		
for2d:

	cmp word5[bp], '$'
	je here2d
	
	mov dl, word5[bx]      ; bx- i ; bp - j 
	mov dh, word5[bp]	
	cmp dl, dh
	
	jg here1d
	jl for22d
	
	
for22d:
	inc bp
	inc bp
	inc j
	inc j
	jmp for2d
	
here1d:	

	mov dl, word5[bx]
	mov al, word5[bp]
    mov word5[bx], al
    mov word5[bp], dl		
	inc bp
	inc bp
	inc j
	inc j
	jmp for2d

	
here2d:
     inc bx
	 inc bx
     inc i
	 inc i
     jmp for1d
	

done2:

	mov ah,2h			;set cursor
	mov bh,0
	mov dh,10
	mov dl,30
	int 10h
		
	mov ah, 09h
	lea dx, word4			;print ascending
	int 21h   
		
	mov ah,2h			;set cursor
	mov bh,0
	mov dh,11
	mov dl,30
	int 10h
	
	mov ah, 09h			;print descending
	lea dx, word5
	int 21h   

ret

process endp
end process

;========================================
