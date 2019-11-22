;========================================
;========================================

.model small
.stack 64
.code 
org 100h
jmp main

plist label byte									;for input
maxlen db 3
actlen db ?
kybd db 4 dup ('$'),0ah,0dh

string1 db 'Enter number of integers:  ',0ah,0dh,'$'
string2 db 'The fibonacci series is:  ',0ah,0dh,'$'
string3 db 60 dup(?),0ah,0dh,'$'		;for reversed
string4 db 'error!: input 1-9 only  ',0ah,0dh,'$'

       val1    db      01h
        val2   db      01h
        lp       db      00h
        v1      db      00h
        v2      db      00h
        nl       db      00h,20h,'$' ; 00h null

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

;========================================
;========================================

graphics proc near

	mov ax,1003h
	mov bx,0   ; disable blinking. 
	int 10h
	
	mov ah,06h
	mov al,00h
	mov bh,10110100b		;light cyan background,red foreground
	mov ch,5
	mov cl,15
	mov dh,8
	mov dl,64
	int 10h
	
	mov ah,06h
	mov al,00h
	mov bh,21h		;green background,blue foreground
	mov ch,10
	mov cl,15
	mov dh,13
	mov dl,64
	int 10h
	
	mov ah,2h			;set cursor for string1
	mov bh,0
	mov dh,6
	mov dl,17
	int 10h
	
	mov ah,09h
	lea dx,string1
	int 21h
	
	mov ah,2h			;set cursor for string2
	mov bh,0
	mov dh,11
	mov dl,17
	int 10h
	
	mov ah,09h
	lea dx,string2
	int 21h
	
	mov ah,2h			;set cursor for char
	mov bh,0
	mov dh,5
	mov dl,15
	int 10h
	
	mov ah,09h			;print character '223' 
	mov al,223
	mov bh,0
	mov bl,10110111b
	mov cx,50
	int 10h
	
	mov ah,2h			;set cursor for char
	mov bh,0
	mov dh,8
	mov dl,15
	int 10h
	
	mov ah,09h			;print character '220' 
	mov al,220
	mov bh,0
	mov bl,10110111b
	mov cx,50
	int 10h
	
	mov ah,2h			;set cursor for char
	mov bh,0
	mov dh,10
	mov dl,15
	int 10h
	
	mov ah,09h			;print character '223' 
	mov al,223
	mov bh,0
	mov bl,00100111b
	mov cx,50
	int 10h
	
	mov ah,2h			;set cursor for char
	mov bh,0
	mov dh,13
	mov dl,15
	int 10h
	
	mov ah,09h			;print character '220' 
	mov al,220
	mov bh,0
	mov bl,00100111b
	mov cx,50
	int 10h
	
ret
graphics endp

;========================================

process proc near

	mov ah,2h			;set cursor for input                                                                                                                                                     
	mov bh,0
	mov dh,6
	mov dl,43
	int 10h
	
	;mov ah, 0ah		      ;scan input string
	;lea dx, plist
	;int 21h
	
	mov ah,01h
    int 21h
		
    mov cl,al
    sub cl,48
    ;sub cl,1
	
	;check validity
	;cmp cl,1
	;;jle notvalid
	
	;cmp cl,9
	;jge notvalid
	
	mov ah,2h			;set cursor for output                                                                                                                                                     
	mov bh,0
	mov dh,12
	mov dl,23
	int 10h

	mov ah,09h
    lea dx,nl    ; null first
    int 21h		
	
	mov ah,02h
    mov dl,val1		
	cmp dl,0
	je here1	
    add dl,30h
    int 21h
	
	mov ah,09h
    lea dx,nl    ; null first
    int 21h		
		
here1:

	cmp cl,1
	je here

    mov ah,02h
    mov dl,val2
    add dl,30h
    int 21h
		
    mov ah,09h
    lea dx,nl
    int 21h
	
	sub cl,2
	cmp cl,0
	je here

disp:

    mov bl,val1
    add bl,val2

    mov ah,00h
    mov al,bl
    mov lp,cl
    mov cl,10
    div cl
    mov cl,lp

    mov v1,al
    mov v2,ah

    mov dl,v1
	cmp dl,0
	je here2
    add dl,30h
    mov ah,02h
    int 21h
		
here2:

    mov dl,v2
    add dl,30h
    mov ah,02h
    int 21h

    mov dl,val2
    mov val1,dl
    mov val2,bl

    mov ah,09h
    lea dx,nl
    int 21h

    loop disp
		
here:
	
ret
process endp

;========================================
