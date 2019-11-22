.model small
.code
org 100h
jmp main


string12 db ' 00','$'
string24 db ' 01','$'



cong db 'CONGRATS! ','$'

num db 14h
num1 db 0ch

col1 db 08
col2 db 15

col11 db ?


col22 db ?

map1 db   '                                                                         ',0ah,0dh
	db   '          께께께께께께께께께께께께께께께께께          ',0ah,0dh
        db   '          께                             께?                         ',0ah,0dh
        db   '          께                             께?                         ',0ah,0dh
        db   '          께                             께?                         ',0ah,0dh
        db   '          께                             께?                       ',0ah,0dh
        db   '          께                             께?                         ',0ah,0dh
        db   '          께                             께?                         ',0ah,0dh
        db   '          께                             栢?                      ',0ah,0dh
        db   '          께                             栢?                     ',0ah,0dh
	db   '          께                             栢?                     ',0ah,0dh
	db   '          께                             께?                         ',0ah,0dh
	db   '          께                             께?                         ',0ah,0dh      
	db   '          께                             께? UNBLOCK KING "         ',0ah,0dh
        db   '          께                             께?  using a86              ',0ah,0dh
        db   '          께                             께?                        ',0ah,0dh
        db   '          께                             께?                         ',0ah,0dh
        db   '          께                             께?                         ',0ah,0dh
        db   '          께                             께?                        ',0ah,0dh
        db   '          께                             께?                        ',0ah,0dh
        db   '          께께께께께께께께께께께께께께께께께                          ',0ah,0dh,
        db   '                                                                          ',0ah,0dh,'$'
	  

mode db ?
mode1 db  00h
mode2 db  '$' , '$'

col3 db 03h ; start at 3 <-- 1st Block controlled by # 1. Okay?
num3 db 04h ; start at 3
num4 db 0ch ; start at a

 
word1 db 'Enter Number: ','$'
row db 00




;_________________________________________________________________________________

clear101  proc  near

        mov ah, 06h		; clearing the screen w/o a buff
        mov al, 00h
        mov ch, 00
        mov cl, 01
        mov dh, 24
        mov dl, 79
        mov bh, 06h              ; color
        int 10h
				
      ;	    mov ah, 06h		; clearing the screen w/o a buff
      ;       mov al, 00h
      ;      mov ch, 11     ; row
      ;     mov cl, 44     ; column
      ;    mov dh, 13     ; row
      ;   mov dl, 45     ;  column
      ;  mov bh, 11h              ; color
      ;  int 10h			
	ret

clear101 endp
end clear101

;_______________________________________________________________________________

;_______________________________________________________________________________


main proc near
    mov ah, 0fh
    int 10h

	mov mode, al
 	mov ah, 00h
	mov al, 03
 	int 10h
	
ei:
     
        call clear101
        
        mov ah, 02h
        mov dh, 24 ; dh - row
        mov dl, 00h  ; dl - coulumn
        mov bh, 00h
        int 10h	
		
        mov ah, 09h
        lea dx, map1
        int 21h  
        
	;	call stop
		mov dl, col3
		mov col2, dl
		
		
		call red_block_print
		call first_block_print
;		call second_block_print
	
   t1:	
        mov ah, 07h ; 
        int 21h
		
		cmp al, '0'
    	if e jmp hey
		
		cmp al, '1'
		if e jmp hey1
		if ne jmp ei
		
	hey:
;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
	
     	add  col1, 13
		mov al, col1
		mov col11, al
		
				
		mov ah, 02h
		mov bh, 00h
		mov dh, 09h  ; dh - row
		mov dl, col11 ; dl - column  
		int 10h
	
		sub col1, 13
		mov ah, 08h
		mov bh, 00h	
		int 10h
	
		cmp ah,  06h
		if ne jmp t11
		
	;>>>>>>>>>>>>>>>>>	
		add  col1, 13
		mov al, col1
		mov col11, al
				
		mov ah, 02h
		mov bh, 00h
		mov dh, 09h ; dh - row
		mov dl, col11 ; dl - column  
		int 10h
	
		sub col1, 13
		
		mov ah, 08h
		mov bh, 00h	
		int 10h
		
		cmp al, 219
		if  e jmp congrats1
		
jmp f1


congrats1: 
call congrats	

	;>>>>>>>>>>>>>>>>>>>>>
		
	f1:
;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

		add  col1, 13
		mov al, col1
		mov col11, al
				
		mov ah, 02h
		mov bh, 00h
		mov dh, 10  ; dh - row
		mov dl, col11 ; dl - column  
		int 10h
	
		sub col1, 13
	
		mov ah, 08h
		mov bh, 00h	
		int 10h
	
		cmp ah,  06h
		if ne jmp t11
;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
			
		mov dl, col3
		mov col2, dl
		
		
		calL red_block_move
	
	t11:
        dec col11
        jmp a5
		
	hey1:
;		dec col11
;		dec col11

;		mov al, col2
;		mov col22, al

		
;	sub col2, 8	
		
		
;		mov ah, 02h
;		mov bh, 00h;
;		mov dh, col22 ; dh - row
;		mov dl, 37 ; dl - column  
;		int 10h
	
;		add col2, 8
;		mov ah, 08h
;		mov bh, 00h	
;		int 10h
	
;		cmp ah,  06h
;		if ne jmp t11
	;>>>>>>>>>>>>>>>>>	

;		add  col1, 13
;		mov al, col1
;		mov col11, al
				
;		mov ah, 02h
;		mov bh, 00h
;		mov dh, 13  ; dh - row
;		mov dl, col11 ; dl - column  
;		int 10h
	
;		sub col1, 13
		
;		mov ah, 08h
;		mov bh, 00h	
;		int 10h
		
;		cmp al, 219
;		if e jmp congrats
		
	
		;>>>>>>>>>>>>>>>>>>>>>
		
	
;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

;		add  col1, 13
;		mov al, col1
;		mov col11, al
				
;		mov ah, 02h
;		mov bh, 00h
;		mov dh, 11  ; dh - row
;		mov dl, col11 ; dl - column  
;		int 10h
	
;		sub col1, 13
	
;		mov ah, 08h
;		mov bh, 00h	
;		int 10h
	
;		cmp ah,  06h
;		if ne jmp t11
;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
			
;		mov dl, col3
;		mov col2, dl

	    inc col3
	    call first_block_move
		
ei1:
  call stop
    

main endp
end main
;________________________________________________


;____________________________________________________


;________________________________________________________


red_block_print proc near
;______________________________________________________


 ;       mov ax, 0600h
 ;       mov bh, 04h
 ;       mov cx, 0b09h
 ;       mov dx, 0d43h
 ;       int 10h

         mov ah,06h
         mov al,00h
         mov bh,40h  ; color ni
         mov ch,0ah ;b
         mov cl,num1  ; ma usob num1 = 09h starting 
         mov dh,0ch ;nd
         mov dl,num  ; ma usob num = 15h starting
         int 10h

;___________________________________________________________

;        mov ah, 02h
 ;       mov dh, 09      ; constant row = 11
  ;      mov dl, col1      ; mausob col start = 9
  ;      mov bh,  00h
  ;      int 10h	
		
  ;      mov ah, 09h
  ;      lea dx, string11
  ;      int 21h
		add col1, 6
        mov ah, 02h
        mov bh, 00h
        mov dh, 11;  constant row = 11+1
        mov dl, col1       ;  mausob col start = 9
        int 10h	
		dec col1, 6
		
        mov ah, 09h
        lea dx, string12
        int 21h
	
;		dec col1
;

       ; mov ah, 02h
       ; mov bh, 00h
       ; mov dh, 09              ; constant row = 11+2
       ; mov dl, col1              ; mausob col start = 9
        ;int 10h	
		
       ; mov ah, 09h
        ;lea dx, string13
        ;int 21h
        


 ret
 red_block_print endp
 end red_block_print
;__________________________________________________________






;___________________________________________________________
red_block_move proc near
 
;__________________________________________________________ 
        
     ;   mov ah,0bh ; nangayug letter sa keyboard
     ;  int 21h

        mov ah, 07h
        int 21h
		;____________________________________________________________

        cmp col1, 1
        jE a3
        cmp col1, 55
        je a21

		jmp a2
;ei11: 
 ;jmp ei
 
;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
a5:    ; dili pa moveright
 	mov ah, 07h
    int 21h
	
	cmp al, 'a'
    je dec_col
 	cmp al, 'A'
 	je dec_col
    jmp a51
	
;___________________________________________
a51:
	cmp al, 'q'
 	je stop1
 	cmp al, 'Q'
	je stop1	
    jmp t1
;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
 
a2: 
 	cmp al, 'a'
    je dec_col
 	cmp al, 'A'
 	je dec_col

a3:        
		cmp al, 'd'
        je inc_col ;;
        cmp al, 'D'
  	    je inc_col ;; 		
        jmp a4
 
 
;move_right:  ;;
;	inc col1
;	mov ah, 02h
;	mov bh, 00h
;	mov dh, 12    ;
;	mov dl,  col1     ;
;	int 10h
;	dec col1
	
;	mov ah, 08h
;	mov bh, 00h
;	int 10h
	
;	cmp al,  '?
;	if e jmp a4
;	if ne jmp inc_col
	
a21:    ; dili pa moveright
 	cmp al, 'a'
    je dec_col
 	cmp al, 'A'
 	je dec_col
    jmp a4
	
;___________________________________________
a4:
	cmp al, 'q'
 	if e jmp stop1
 	cmp al, 'Q'
	if e jmp stop1	
    jmp ei
;___________________________________________		
;___________________________________________
	inc_col:
		
    ;    mov ah, 02h
     ;   mov dh, 13
      ;  mov dl, num1
      ;  mov bh, 00h
       ; int 10h
;
 ;       mov ah, 08h
;        mov bh, 00h
  ;      int 10h

		
   ;     cmp al, 219
    ;    if ne jmp ei
         
		;dec col1
		add col1, 5
    	add num, 5 
        add num1, 5
	
    ; 	add col1, 6
	;	add num, 6
	;	add num1, 6
		jmp ei
;___________________________________________
	dec_col:
		sub col1, 5
        sub num, 5		
    	sub num1, 5
	
	;	dec col1, 6
	;	dec num, 6
	;	dec num1, 6
		
		jmp ei
;__________________________________________________

;__________________________________________________

stop1:
 call stop

 ret
 red_block_move endp
 end red_block_move

;______________________________________________________________




first_block_print  proc  near

 ;________________________________________________________

 
	
 ;       mov ax, 0600h
 ;       mov bh, 09h      ; color ni
 ;       mov cx, 0326h
 ;       mov dx, 152ah
 ;       int 10h 
	
	mov ah,06h
        mov al,00h
        mov bh,60h  ; 6 - yellow color ni, black and yellow 
        mov ch,num3  ; ma usob num3 = 03h starting
        mov cl,24h 
        mov dh,num4  ; ma usob num4 = 0ah starting
        mov dl,28h  
        int 10h
;___________________________________________________________

;		mov col2, 3
;        mov ah, 02h
;		mov dh, col2      ; constant row = 11
 ;       mov dl, 38      ; mausob col start = 9
  ;      mov bh, 00h
   ;     int 10h	
		
    ;    mov ah, 09h
     ;   lea dx, string21
      ;  int 21h
        
		;add col2, 1
        ;mov ah, 02h
       ; mov bh, 00h
       ; mov dh, col2       ;  constant row = 11+1
       ; mov dl, 38       ;  mausob col start = 9
        ;int 10h	
		
        ;mov ah, 09h
        ;lea dx, string22
        ;int 21h

         
		;add col2, 1
       ; mov ah, 02h
       ; mov bh, 00h
       ; mov dh, col2            ; constant row = 11+2
       ; mov dl, 36            ; mausob col start = 9
        ;int 10h	
		
        ;mov ah, 09h
        ;lea dx, string23
        ;int 21h 

	
		add col2, 5
	 	mov ah, 02h
        mov bh, 00h
        mov dh, col2       ;  constant row = 11+1
        mov dl, 37      ;  mausob col start = 9
        int 10h	
		
        mov ah, 09h
        lea dx, string24
        int 21h
		
		add col2, 4
		mov ah, 02h
        mov bh, 00h
        mov dh, col2       ;  constant row = 11+1
        mov dl, 37      ;  mausob col start = 9
        int 10h	
		sub col2, 4
	
		;add col2, 1
       ; mov ah, 02h
       ; mov bh, 00h
        ;mov dh, col2             ; constant row = 11+2
        ;mov dl, 37             ; mausob col start = 9
        ;int 10h	
		
    ;    mov ah, 09h
      ;  lea dx, string25
     ;   int 21h

	
		;add col2, 1
        ;mov ah, 02h
        ;mov bh, 00h
        ;mov dh, col2         ;  constant row = 11+1
        ;mov dl, 38            ;  mausob col start = 9
        ;int 10h	
		
       ; mov ah, 09h
       ; lea dx, string26
        ;int 21h

	
		;add col2, 1
       ; mov ah, 02h
		;mov bh, 00h
       ; mov dh, col2             ; constant row = 11+2
        ;mov dl, 38              ; mausob col start = 9
        ;int 10h	
	 
        ;mov ah, 09h
        ;lea dx, string27
        ;int 21h

       	
		;add col2, 1
       ; mov ah, 02h
        ;mov bh, 00h
        ;mov dh, col2             ; constant row = 11+2
        ;mov dl, 38              ; mausob col start = 9
        ;int 10h	
		
       ; mov ah, 09h
       ; lea dx, string28
       ; int 21h

	


 ret

 first_block_print endp
 end first_block_print

;____________________________________________________



;______________________________________________________________________________
stop proc near
 
; mov ax, 03h
 ;int 10h
 
 mov ax, 4c00h
 int 21h

 stop endp
 end stop
;______________________________________________________________________________



;_____________________________________________________

first_block_move proc near
 

 ;__________________________________________________________ 
        
       ; mov ah,0bh ; nangayug letter sa keyboard
       ; int 21h

        mov ah,07h
        int 21h
;__________________________________________________________


 sub col2, 7   ; minus 7 arun mobalik ang original col2

 cmp col2, 1   ; kung 3 dili nimo pa decrementon
 je a32 ; so mo ambak kas a32
 
 cmp col2, 10 ; kung 14 nasad dili nimo pa incrementon
 je a221 ; so mo ambak kas a221


a22: 
 	cmp al, 'w'
    je dec_col2
 	cmp al, 'W'
 	je dec_col2

a32:        
        cmp al, 's'
		je inc_col2
        cmp al, 'S' 
  	    je inc_col2
		jmp a42
	
	
a221: 
 	cmp al, 'w'
    je dec_col2
 	cmp al, 'W'
 	je dec_col2
    jne a42


a42:
	cmp al, 'q'
 	je stop2
 	cmp al, 'Q'
	je stop2
	dec col3
    jne eo3        
;________________________________

;___________________________________________
	inc_col2:
         add col2, 1
         add num3, 1
         add num4, 1
     	 jmp eo3
;___________________________________________
	dec_col2:
		 sub col2, 1
         sub num3, 1
         sub num4, 1
		 
		 dec col3
		 dec col3
		 
	jmp eo3 
;__________________________________________________


eo3:
 jmp ei

stop2:
 call stop
;__________________________________________________
 
 
 ret
 first_block_move endp
 end first_block move

;______________________________________________________


;______________________________________________________

disp proc near

 fl1:
 mov ah, 10h
 int 16h

 gl1:
 mov ah, 00h
 mov al, mode
 int 10h
 

 
 ret
 disp endp
 end disp
;_____________________________________________________



;____________________________________________________


congrats proc near
 mov ax, 03h
 int 10h
 
 mov ah, 09h
 lea dx, cong
 int 21h
 
 call stop

 congrats endp
 end cograts
