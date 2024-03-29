.model small
.code
org 100h
jmp main

word1 db '          BISU-Main $','$'
word2 db '          BISU-MENU $','$'

mode db 00
row db ?
main proc near


menu:
	mov ax, 03h
	int 10h
	call hide_cur
	mov ah, 09h
	lea dx, word2
	int 21h

	mov ah, 07h      
	int 21h

        cmp al, '1'
        if e jmp here1
        cmp al, '2'
        if e jmp here2
        cmp al, '3'
        if e jmp here3
        cmp al, '4'
        if e jmp here4
	cmp al, '5'
	if e jmp finalstop
	jmp finalstop
here1:
call screen1
jmp menu

here2:
call screen2 
jmp menu

here3:
call screen3
jmp menu

here4:
call screen4
jmp menu


main endp
end main




screen1 proc near

 mov row, 5h		; atong i constant ang row ug 5
 
; mov ah, 0fh		; return video state 
; int 10h		; pak ganern

 mov mode, al		;
 mov ah, 00h		; mode nasad 
 mov al, 03		; wako kahibaw ani
 int 10h		; pak ganern

process1:		; loop ni siya
 
 mov ax, 03h 		; clear screen
 int 10h		; 

; mov ah, 08h		; read attribute
; mov bh, ah		; character position
; int 10h		; pak ganern
                                             
 mov ax, 0600h		; scroll up page up
 mov bh, 70h 		; 70h - black/white color
 mov cx, 0000h		; upper left row&column
 mov dx, 0B27h		; lower right row&column
 int 10h		; 

 mov ah, 02h 	        ; 
 mov bh, 00             ; [page number] normal force = N-m
 mov dh, row		; row is change
 mov dl, 5		; column is constant=5
 int 10h		;
 
 call hide_cur		; ma hide and cursor
 
 mov ah, 09h		; 
 lea dx, word1		; print word1="BISU-Main"
 int 21h		; 

 mov ah, 07h		; get character from keyboard (w-s)   
 int 21h		; to use for up and down

        cmp al, 'w'     ; UP
        if e jmp sub1	; moadto sa sub1
        cmp al, 's'     ; DOWN
        if e jmp add1	; moadto sa add1
	jmp process1	; babalik sa process1
add1:
 inc row		; mosaka ang row (0-1-2-3-4-5-6-7-8-9-A-B-C-END) 
 mov al, row		; ibalhin ang row sa al
 cmp al, 0ch		; C=12 ra taman
 if e jmp stop		; if mo ang row==C=12 na undang
 jmp process1		; if dili balik process1! pak ganern2

sub1:
 dec row		; moubos ang row parang ganito: (C-B-A-9-8-7-6-5-4-3-2-1-0--1-END)) 
 mov al, row		; ibalhin ang row sa al
 cmp al, -1h		; 0 ra taman sa row ha? Wag tanga -_-
 if e jmp stop		; if maequal mo undang nata. #PAKGANERN
 jmp process1		; if dili balik process1! pak ganern2

ret			; mamalik nata sa main

screen1 endp		; END SA
end screen1		; PROCESS SA SCREEN 1 PAK GANERN 




screen2 proc near

 mov row, 5h
 
 ;mov ah, 0fh
 ;int 10h

 mov mode, al
 mov ah, 00h
 mov al, 03
 int 10h

process2:

mov ax, 03h 		; clear screen
 int 10h		; 

 mov ah, 06h
 mov bh, ah
 int 10h
                                             
 mov ax, 0600h
 mov bh, 70h
 mov cx, 0028h
 mov dx, 0B4Fh
 int 10h
 

 mov ah, 02h 	        ; 
 mov bh, 00             ; [page number] normal force = N-m
 mov dh, row		; row is change
 mov dl, 45		; column is constant=45
 int 10h		;
 

 call hide_cur		; ma hide and cursor
 
 mov ah, 09h		; 
 lea dx, word1		; print word1="BISU-Main"
 int 21h		; 

 mov ah, 07h		; get character from keyboard (w-s)   
 int 21h		; to use for up and down

        cmp al, 'w'     ; UP
        if e jmp sub2	; moadto sa sub1
        cmp al, 's'     ; DOWN
        if e jmp add2	; moadto sa add1
	jmp process2	; babalik sa process1
add2:
 inc row		; mosaka ang row (0-1-2-3-4-5-6-7-8-9-A-B-C-END) 
 mov al, row		; ibalhin ang row sa al
 cmp al, 0ch		; C=12 ra taman
 if e jmp stop		; if mo ang row==C=12 na undang
 jmp process2		; if dili balik process1! pak ganern2

sub2:
 dec row		; moubos ang row parang ganito: (C-B-A-9-8-7-6-5-4-3-2-1-0--1-END)) 
 mov al, row		; ibalhin ang row sa al
 cmp al, -1h		; 0 ra taman sa row ha? Wag tanga -_-
 if e jmp stop		; if maequal mo undang nata. #PAKGANERN
 jmp process2		; if dili balik process1! pak ganern2

ret			; mamalik nata sa main


ret
screen2 endp
end screen2

screen3 proc near

 mov row, 18

; mov ah, 0fh
; int 10h

 mov mode, al
 mov ah, 00h
 mov al, 03
 int 10h


process3:
 mov ax, 03h 		; clear screen
 int 10h		; 

; mov ah, 08h		; read attribute
; mov bh, ah		; character position
; int 10h		; pak ganern
                                    
 mov ax, 0600h
 mov bh, 70h
 mov cx, 0C00h
 mov dx, 1827h
 int 10h

 mov ah, 02h       ; cursor
 mov bh, 00        ; normal force
 mov dh, row
 mov dl, 5
 int 10h

 call hide_cur		; ma hide and cursor

 mov ah, 09h		; 
 lea dx, word1		; print word1="BISU-Main"
 int 21h		; 

 mov ah, 07h		; get character from keyboard (w-s)   
 int 21h		; to use for up and down

        cmp al, 'w'     ; UP
        if e jmp sub3	; moadto sa sub1
        cmp al, 's'     ; DOWN
        if e jmp add3	; moadto sa add1
	jmp process3	; babalik sa process1
add3:
 inc row		; mosaka ang row (0-1-2-3-4-5-6-7-8-9-A-B-C-END) 
 mov al, row		; ibalhin ang row sa al
 cmp al, 19h		; C=12 ra taman
 if e jmp stop		; if mo ang row==C=12 na undang
 jmp process3		; if dili balik process1! pak ganern2

sub3:
 dec row		; moubos ang row parang ganito: (C-B-A-9-8-7-6-5-4-3-2-1-0--1-END)) 
 mov al, row		; ibalhin ang row sa al
 cmp al, 0bh		; 0 ra taman sa row ha? Wag tanga -_-
 if e jmp stop		; if maequal mo undang nata. #PAKGANERN
 jmp process3		; if dili balik process1! pak ganern2

ret			; mamalik nata sa main

screen3 endp
end screen3

screen4 proc near
mov row,18

; mov ah, 0fh
; int 10h

 mov mode, al
 mov ah, 00h
 mov al, 03
 int 10h

; mov ah, 06h
 ;mov bh, ah
 ;int 10h

process4:            
 ;mov ax, 03h 		; clear screen
; int 10h		; 
                                  
 mov ax, 0600h
 mov bh, 70h
 mov cx, 0C28h
 mov dx, 1850h
 int 10h

 mov ah, 02h       ; cursor
 mov bh, 00        ; normal force
 mov dh, row
 mov dl, 45
 int 10h

 call hide_cur

 mov ah, 09h
 lea dx, word1
 int 21h 

; mov ah, 10h
 ;int 16h
 

mov ah, 07h		; get character from keyboard (w-s)   
 int 21h		; to use for up and down

        cmp al, 'w'     ; UP
        if e jmp sub4	; moadto sa sub1
        cmp al, 's'     ; DOWN
        if e jmp add4	; moadto sa add1
	jmp process4	; babalik sa process1
add4:
 inc row		; mosaka ang row (0-1-2-3-4-5-6-7-8-9-A-B-C-END) 
 mov al, row		; ibalhin ang row sa al
 cmp al, 19h		; C=12 ra taman
 if e jmp stop		; if mo ang row==C=12 na undang
 jmp process4		; if dili balik process1! pak ganern2

sub4:
 dec row		; moubos ang row parang ganito: (C-B-A-9-8-7-6-5-4-3-2-1-0--1-END)) 
 mov al, row		; ibalhin ang row sa al
 cmp al, 0bh		; 0 ra taman sa row ha? Wag tanga -_-
 if e jmp stop		; if maequal mo undang nata. #PAKGANERN
 jmp process4		; if dili balik process4! pak ganern2

mov ah,00h
mov al,mode
int 10h

ret			; mamalik nata sa main

screen4 endp
end screen4
  

stop proc near

 mov ah, 10h
 int 16h
 
 mov ah, 00h
 mov al, mode
 int 10h
 jmp menu
stop endp
end stop

finalstop proc near

int 20h

hide_cur proc near
        mov ah,3
        int 10h
        or ch, 30h

        mov ah,1
        int 10h
	ret	
ret 
hide_cur endp
end hide_cur
