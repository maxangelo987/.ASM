.model small
.code
org 100h
jmp level3



mode db 00

string1 db 'KING','$' ; HORIZONTAL

string1b db '1','$'
string2b db '2','$'
string3b db '3','$'
string4b db '4','$'
string5b db '5','$'
string6b db '6','$'
string7b db '7','$'
string8b db '8','$'
string9b db '9','$'
string10b db 'M','$'
string11b db 'N','$'


color1b db 4bh ; RED
color2b db 40h
color3b db 00

color1by db 9bh ; 1
color2by db 90h
color3by db 00

color1cy db 8bh ; 2
color2cy db 80h
color3cy db 00

color1dy db 7bh ; 3
color2dy db 70h
color3dy db 00

color1ey db 9bh ; 4
color2ey db 90h
color3ey db 00

color1fy db 8bh ; 5
color2fy db 80h
color3fy db 00

color1gy db 9bh ; 6
color2gy db 90h
color3gy db 00

;_______________________________


color1hy db 6bh ; 7
color2hy db 60h
color3hy db 00

color1iy db 5bh ; 8
color2iy db 50h
color3iy db 00

color1jy db 3bh ; 9
color2jy db 30h
color3jy db 00

color1ky db 2bh ; 10
color2ky db 20h
color3ky db 00

color1ly db 1bh ; 11
color2ly db 10h
color3ly db 00

;______________

col0b db 13   ; RED BLOCK FOR STRING1
rnum1b db 16 ; RED BLOCK COLUMN START
rnum2b db 25 ; RED BLOCK COLUMN FIN

;______________ VERTICAL

col1b db 10   ; FIRST BLOCK FOR STRING2
fnum1b db 07 ; FIRST BLOCK COLUMN START
fnum2b db 12 ; FIRST BLOCK COLUMN FIN

col2b db 19   ; SECOND BLOCK FOR STRING2
snum1b db 16 ; SECOND BLOCK COLUMN START
snum2b db 21 ; SECOND BLOCK COLUMN FIN

col3b db 07   ; THIRD BLOCK FOR STRING2
tnum1b db 04 ; THIRD BLOCK COLUMN START
tnum2b db 09 ; THIRD BLOCK COLUMN FIN

col4b db 16   ; FOURTH BLOCK FOR STRING2
fonum1b db 13 ; FOURTH BLOCK COLUMN START
fonum2b db 18 ; FOURTH BLOCK COLUMN FIN

col5b db 13   ; FIFTH BLOCK FOR STRING2
fivnum1b db 10 ; FIFTH BLOCK COLUMN START
fivnum2b db 15 ; FIFTH BLOCK COLUMN FIN

col6b db 19   ; SIXTH BLOCK FOR STRING2
sinum1b db 16 ; SIXTH BLOCK COLUMN START
sinum2b db 21 ; SIXTH BLOCK COLUMN FIN

col7b db 09   ; SEVENTH BLOCK FOR STRING2
senum1b db 04 ; SEVENTH BLOCK COLUMN START
senum2b db 12 ; SEVENTH BLOCK COLUMN FIN

;______________ HORIZONTAL


col8b db 24   ; EIGHT BLOCK FOR STRING1
einum1b db 26 ; EIGHT BLOCK COLUMN START
einum2b db 35 ; EIGHT BLOCK COLUMN FIN

col9b db 14   ; NINE BLOCK FOR STRING1
ninum1b db 16 ; NINE BLOCK COLUMN START
ninum2b db 25 ; NINE BLOCK COLUMN FIN

col10b db 29   ; TENTH BLOCK FOR STRING1
tenum1b db 31 ; TENTH BLOCK COLUMN START
tenum2b db 40 ; TENTH BLOCK COLUMN FIN

col11b db 19   ; ELEVENTH BLOCK FOR STRING1
elnum1b db 21 ; ELEVENTH BLOCK COLUMN START
elnum2b db 30 ; ELEVENTH BLOCK COLUMN FIN


map1b 	db   '                                                                          ',0ah,0dh
	db   '         ²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²         		        ',0ah,0dh
        db   '         ²²                              ²²²                              ',0ah,0dh
        db   '         ²²                              ²²²                              ',0ah,0dh
        db   '         ²²                              ²²²                              ',0ah,0dh
        db   '         ²²                              ²²²  ²²²²²²²²²²²²²²²²²²²²²²²²²   ',0ah,0dh
        db   '         ²²                              ²²²  ²                       ²   ',0ah,0dh
        db   '         ²²                              ²²²  ²                       ²   ',0ah,0dh
        db   '         ²²                              ÛÛ²  ²    UNBLOCK THE KING   ²   ',0ah,0dh
        db   '         ²²                              ÛÛ²  ²                       ²   ',0ah,0dh
	db   '         ²²                              ÛÛ²  ²        LEVEL  3       ²   ',0ah,0dh
	db   '         ²²                              ²²²  ²                       ²   ',0ah,0dh
	db   '         ²²                              ²²²  ²   " Abyss of Hades "  ²   ',0ah,0dh      
        db   '         ²²                              ²²²  ²                       ²   ',0ah,0dh
        db   '         ²²                              ²²²  ²                       ²   ',0ah,0dh
        db   '         ²²                              ²²²  ²                       ²   ',0ah,0dh
        db   '         ²²                              ²²²  ²²²²²²²²²²²²²²²²²²²²²²²²²   ',0ah,0dh
        db   '         ²²                              ²²²                              ',0ah,0dh
        db   '         ²²                              ²²²                              ',0ah,0dh
        db   '         ²²                              ²²²                              ',0ah,0dh
        db   '         ²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²                              ',0ah,0dh,
        db   '                                                                          ',0ah,0dh,'$'


cong db 'CONGRATS! ','$'

;__________________________________________________________________________________________


clear101  proc  near

        mov ah, 06h		; clearing the screen w/o a buff
        mov al, 00h
        mov ch, 00
        mov cl, 01
        mov dh, 24
        mov dl, 79
        mov bh, 0bh              ; color
        int 10h
						
	ret

clear101 endp
end clear101

;__________________________________________________________________________________________

;__________________________________________________________________________________________

level3 proc near
    mov ah, 0fh
    int 10h

    mov mode, al
    mov ah, 00h
    mov al, 03
    int 10h


	mov al, color2b
	mov color3b, al	

	mov al, color2by
	mov color3by, al	
	
	mov al, color2cy
	mov color3cy, al

	mov al, color2dy
	mov color3dy, al

	mov al, color2ey
	mov color3ey, al

	mov al, color2fy
	mov color3fy, al

	mov al, color2gy
	mov color3gy, al
	
	mov al, color2hy
	mov color3hy, al
	
	mov al, color2iy
	mov color3iy, al

	mov al, color2jy
	mov color3jy, al

	mov al, color2ky
	mov color3ky, al
	
	mov al, color2ly
	mov color3ly, al

eib:
     
        call clear101
        
        mov ah, 02h
        mov dh, 24 ; dh - row
        mov dl, 00h  ; dl - coulumn
        mov bh, 00h
        int 10h	
		
        mov ah, 09h
        lea dx, map1b
        int 21h  
	

	call hide_cur
	call red_block_printb               ; HORIZONTAL
	call first_block_printb
	call second_block_printb
	call third_block_printb
	call fourth_block_printb
	call fifth_block_printb
	call sixth_block_printb
	call seventh_block_printb
	call eight_block_printb
	call ninth_block_printb	
	call tenth_block_printb	
	call eleventh_block_printb	
		

	mov al, color2b
	mov color3b, al
		
	mov al, color2by
	mov color3by, al	
	
	mov al, color2cy
	mov color3cy, al

	mov al, color2dy
	mov color3dy, al

	mov al, color2ey
	mov color3ey, al

	mov al, color2fy
	mov color3fy, al

	mov al, color2gy
	mov color3gy, al
	
	mov al, color2hy
	mov color3hy, al
	
	mov al, color2iy
	mov color3iy, al

	mov al, color2jy
	mov color3jy, al

	mov al, color2ky
	mov color3ky, al
	
	mov al, color2ly
	mov color3ly, al
	
   t1b:	
        mov ah, 07h      
        int 21h
	
	cmp al, 'Q'
    	if e jmp exitb
		
	cmp al, 'q'
    	if e jmp exitb
	
	
	cmp al, '0'
    	if e jmp heyb
	
	cmp al, '1'
    	if e jmp hey1b

	cmp al, '2'
    	if e jmp hey2b

	cmp al, '3'
    	if e jmp hey3b

	cmp al, '4'
    	if e jmp hey4b

	cmp al, '5'
    	if e jmp hey5b

	cmp al, '6'
    	if e jmp hey6b

	cmp al, '7'
    	if e jmp hey7b
	
	cmp al, '8'
    	if e jmp hey8b

	cmp al, '9'
    	if e jmp hey9b

	cmp al, 'm'
    	if e jmp hey10b
	
	cmp al, 'M'
    	if e jmp hey10b
	
	cmp al, 'n'
    	if e jmp hey11b
	
	cmp al, 'N'
    	if e jmp hey11b
	
	jmp eib

exitb:
	call stop

;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


heyb:	

	mov al, color1b
	mov color3b, al

	call red_block_printb
			
	
	mov al, color2b
	mov color3b, al
	
	mov al, color2by
	mov color3by, al	

	mov al, color2cy
	mov color3cy, al	
	
	mov al, color2dy
	mov color3dy, al

	mov al, color2ey
	mov color3ey, al

	mov al, color2fy
	mov color3fy, al

	mov al, color2gy
	mov color3gy, al

	mov al, color2hy
	mov color3hy, al
	
	mov al, color2iy
	mov color3iy, al
	
	mov al, color2jy
	mov color3jy, al

	mov al, color2ky
	mov color3ky, al

	mov al, color2ly
	mov color3ly, al

	call first_block_printb
   	call second_block_printb
	call third_block_printb
	call fourth_block_printb
	call fifth_block_printb
        call sixth_block_printb
	call seventh_block_printb
	call eight_block_printb
	call ninth_block_printb		
	call tenth_block_printb		
	call eleventh_block_printb		
			

		sub col0b, -2

		mov ah, 02h
         	mov bh, 00h
        	mov dh, 11         ;  row
     		mov dl, col0b       ;  column
        	int 10h	
	
		mov ah, 08h
		mov bh, 00h	
		int 10h

		add col0b, -2

                cmp ah, 0bh
		if ne jmp t111b

	
		add col0b, 13
		mov ah, 02h
         	mov bh, 00h
        	mov dh, 11         ;  row
     		mov dl, col0b       ;  column
        	int 10h	
		sub col0b, 13


		mov ah, 08h
		mov bh, 00h	
		int 10h
	
                cmp ah,  0bh
		if ne jmp t11b	


		mov ah, 08h
		mov bh, 00h	
		int 10h
	
		cmp al,  219
		if e jmp call_cong1b

		if ne jmp backagainb

t111b:		
		
		add col0b, 13
		mov ah, 02h
         	mov bh, 00h
        	mov dh, 11         ;  row
     		mov dl, col0b       ;  column
        	int 10h	
		sub col0b, 13

		mov ah, 08h
		mov bh, 00h	
		int 10h

		cmp al,  219
		if e jmp call_cong2b	


		add col0b, 13
		mov ah, 02h
         	mov bh, 00h
        	mov dh, 11         ;  row
     		mov dl, col0b       ;  column
        	int 10h	
		sub col0b, 13

		mov ah, 08h
		mov bh, 00h	
		int 10h

                cmp ah,  0bh
		if ne jmp eib ; if dili yellow gane ang foreground jamoy ipabuhat/ mag base sa foreground sa blocks
			      ; else proceed				

		
		mov ah, 07h                  ; Pa incrementon ug naay ali sa left
    		int 21h

		cmp al, 'd'
        	if e jmp inc_colb ;
        	cmp al, 'D'
  		if e jmp inc_colb ;		
 	
	 	jmp a3b                      


call_cong1b:	
 		jmp finb ; so that you can move to left


backagainb:
		call red_block_moveb ; call to move the red block

call_cong2b:
		mov ah, 07
		int 21h		

		cmp al, 'D'
    		if e jmp call_cong3b
    		cmp al, 'd'
    		if e jmp call_cong3b
    		jmp eib
    
call_cong3b:
		call congrats

t11b:	
    jmp a5b



;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



    
hey1b:
		
		mov al, color1by
		mov color3by, al	
		call first_block_printb

	mov al, color2b
	mov color3b, al	

	mov al, color2by
	mov color3by, al	
	
	mov al, color2cy
	mov color3cy, al

	mov al, color2dy
	mov color3dy, al

	mov al, color2ey
	mov color3ey, al

	mov al, color2fy
	mov color3fy, al
	
	mov al, color2gy
	mov color3gy, al
	
	mov al, color2hy
	mov color3hy, al

	mov al, color2iy
	mov color3iy, al
	
	mov al, color2jy
	mov color3jy, al
		
	mov al, color2ky
	mov color3ky, al

	mov al, color2ly
	mov color3ly, al


	call red_block_printb	
	call second_block_printb
	call third_block_printb
	call fourth_block_printb
	call fifth_block_printb
	call sixth_block_printb
	call seventh_block_printb
	call eight_block_printb
	call ninth_block_printb
	call tenth_block_printb
	call eleventh_block_printb
	

	add col1b, 4
	mov ah, 02h
        mov bh, 00h
        mov dh, col1b       	
        mov dl, 14      	
        int 10h	
	sub col1b, 4

	mov ah, 08h
	mov bh, 00h	
	int 10h

        cmp ah, 0bh
	if ne jmp fin1b

	sub col1b, 4
	mov ah, 02h
        mov bh, 00h
        mov dh, col1b       	
        mov dl, 13      	 
        int 10h	
	add col1b, 4

	mov ah, 08h
	mov bh, 00h	
	int 10h
        cmp ah,  0bh
	if ne jmp fin111b	

	if e jmp backagain11b



backagain11b:		
        
	call first_block_moveb


;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



    
hey2b:
		
		mov al, color1cy
		mov color3cy, al	
		call second_block_printb

	mov al, color2b
	mov color3b, al	

	mov al, color2by
	mov color3by, al	
	
	mov al, color2cy
	mov color3cy, al

	mov al, color2dy
	mov color3dy, al

	mov al, color2ey
	mov color3ey, al

	mov al, color2fy
	mov color3fy, al
	
	mov al, color2gy
	mov color3gy, al
		
 	mov al, color2hy
	mov color3hy, al

	mov al, color2iy
	mov color3iy, al

	mov al, color2jy
	mov color3jy, al
	
	mov al, color2ky
	mov color3ky, al

	mov al, color2ly
	mov color3ly, al


	call red_block_printb	
	call first_block_printb
	call third_block_printb
	call fourth_block_printb
	call fifth_block_printb
	call sixth_block_printb
	call seventh_block_printb
	call eight_block_printb	
	call ninth_block_printb
	call tenth_block_printb
	call eleventh_block_printb



	add col2b, 4
	mov ah, 02h
        mov bh, 00h
        mov dh, col2b       	
        mov dl, 14      	
        int 10h	
	sub col2b, 4

	mov ah, 08h
	mov bh, 00h	
	int 10h

        cmp ah, 0bh
	if ne jmp fin2b

	sub col2b, 4
	mov ah, 02h
        mov bh, 00h
        mov dh, col2b       	
        mov dl, 13      	 
        int 10h	
	add col2b, 4

	mov ah, 08h
	mov bh, 00h	
	int 10h
        cmp ah,  0bh
	if ne jmp fin112b	

	if e jmp backagain12b



backagain12b:		
        
	call second_block_moveb




;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



    
hey3b:
		
		mov al, color1dy
		mov color3dy, al	
		call third_block_printb

	mov al, color2b
	mov color3b, al	

	mov al, color2by
	mov color3by, al	
	
	mov al, color2cy
	mov color3cy, al

 	mov al, color2dy
	mov color3dy, al

	mov al, color2ey
	mov color3ey, al

	mov al, color2fy
	mov color3fy, al
	
	mov al, color2gy
	mov color3gy, al
	
	mov al, color2hy
	mov color3hy, al

	mov al, color2iy
	mov color3iy, al

	mov al, color2jy
	mov color3jy, al

	mov al, color2ky
	mov color3ky, al

	mov al, color2ly
	mov color3ly, al

	call red_block_printb	
	call first_block_printb
	call second_block_printb
	call fourth_block_printb
	call fifth_block_printb
	call sixth_block_printb
	call seventh_block_printb
	call eight_block_printb
	call ninth_block_printb
	call tenth_block_printb
	call eleventh_block_printb
	
	

	add col3b, 4
	mov ah, 02h
        mov bh, 00h
        mov dh, col3b       	
        mov dl, 19      	
        int 10h	
	sub col3b, 4

	mov ah, 08h
	mov bh, 00h	
	int 10h

        cmp ah, 0bh
	if ne jmp fin3b

	sub col3b, 4
	mov ah, 02h
        mov bh, 00h
        mov dh, col3b       	
        mov dl, 20      	 
        int 10h	
	add col3b, 4

	mov ah, 08h
	mov bh, 00h	
	int 10h
        cmp ah,  0bh
	if ne jmp fin113b	

	if e jmp backagain13b


backagain13b:		
        
	call third_block_moveb


;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



    
hey4b:
		
		mov al, color1ey
		mov color3ey, al	
		call fourth_block_printb

	mov al, color2b
	mov color3b, al	

	mov al, color2by
	mov color3by, al	
	
	mov al, color2cy
	mov color3cy, al

 	mov al, color2dy
	mov color3dy, al

	mov al, color2ey
	mov color3ey, al

	mov al, color2fy
        mov color3fy, al
	
	mov al, color2gy
	mov color3gy, al
	
	mov al, color2hy
	mov color3hy, al

	mov al, color2iy
	mov color3iy, al

	mov al, color2jy
	mov color3jy, al

	mov al, color2ky
	mov color3ky, al
	
	mov al, color2ly
	mov color3ly, al
		
	call red_block_printb	
	call first_block_printb
	call second_block_printb
	call third_block_printb
	call fifth_block_printb
	call sixth_block_printb
	call seventh_block_printb
	call eight_block_printb
	call ninth_block_printb
	call tenth_block_printb
	call eleventh_block_printb
		


	add col4b, 4
	mov ah, 02h
        mov bh, 00h
        mov dh, col4b       	
        mov dl, 21      	
        int 10h	
	sub col4b, 4

	mov ah, 08h
	mov bh, 00h	
	int 10h

        cmp ah, 0bh
	if ne jmp fin4b

	sub col4b, 4
	mov ah, 02h
        mov bh, 00h
        mov dh, col4b       	
        mov dl, 21      	 
        int 10h	
	add col4b, 4

	mov ah, 08h
	mov bh, 00h	
	int 10h
        cmp ah,  0bh
	if ne jmp fin114b	

	if e jmp backagain14b


backagain14b:		
        
	call fourth_block_moveb


;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

  
hey5b:
		
		mov al, color1fy
		mov color3fy, al	
		call fifth_block_printb

	mov al, color2b
	mov color3b, al	

	mov al, color2by
	mov color3by, al	
	
	mov al, color2cy
	mov color3cy, al

 	mov al, color2dy
	mov color3dy, al

	mov al, color2ey
	mov color3ey, al

	mov al, color2fy
	mov color3fy, al
	
	mov al, color2gy
	mov color3gy, al
	
	mov al, color2hy
	mov color3hy, al

	mov al, color2iy
	mov color3iy, al

	mov al, color2jy
	mov color3jy, al

	mov al, color2ky
	mov color3ky, al

	mov al, color2ly
	mov color3ly, al

	
	call red_block_printb	
	call first_block_printb
	call second_block_printb
	call third_block_printb
	call fourth_block_printb
	call sixth_block_printb
	call seventh_block_printb
	call eight_block_printb
	call ninth_block_printb
	call tenth_block_printb
	call eleventh_block_printb
	
	

	add col5b, 4
	mov ah, 02h
        mov bh, 00h
        mov dh, col5b       	
        mov dl, 28      	
        int 10h	
	sub col5b, 4

	mov ah, 08h
	mov bh, 00h	
	int 10h

        cmp ah, 0bh
	if ne jmp fin5b

	sub col5b, 4
	mov ah, 02h
        mov bh, 00h
        mov dh, col5b       	
        mov dl, 28      	 
        int 10h	
	add col5b, 4

	mov ah, 08h
	mov bh, 00h	
	int 10h
        cmp ah,  0bh
	if ne jmp fin115b	

	if e jmp backagain15b


backagain15b:		
        
	call fifth_block_moveb

;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

  
hey6b:
		
		mov al, color1gy
		mov color3gy, al	
		call sixth_block_printb

	mov al, color2b
	mov color3b, al	

	mov al, color2by
	mov color3by, al	
	
	mov al, color2cy
	mov color3cy, al

 	mov al, color2dy
	mov color3dy, al

	mov al, color2ey
	mov color3ey, al

	mov al, color2fy
	mov color3fy, al
	
	mov al, color2gy
	mov color3gy, al
	
	mov al, color2hy
	mov color3hy, al

	mov al, color2iy
	mov color3iy, al

	mov al, color2jy
	mov color3jy, al

	mov al, color2ky
	mov color3ky, al

	mov al, color2ly
	mov color3ly, al

	call red_block_printb	
	call first_block_printb
	call second_block_printb
	call third_block_printb
	call fourth_block_printb
	call fifth_block_printb
	call seventh_block_printb
	call eight_block_printb
	call ninth_block_printb
	call tenth_block_printb
	call eleventh_block_printb
	
	
	add col6b, 4
	mov ah, 02h
        mov bh, 00h
        mov dh, col6b       	
        mov dl, 38      	
        int 10h	
	sub col6b, 4

	mov ah, 08h
	mov bh, 00h	
	int 10h

        cmp ah, 0bh
	if ne jmp fin6b

	sub col6b, 4
	mov ah, 02h
        mov bh, 00h
        mov dh, col6b       	
        mov dl, 38      	 
        int 10h	
	add col6b, 4

	mov ah, 08h
	mov bh, 00h	
	int 10h
        cmp ah,  0bh
	if ne jmp fin116b	

	if e jmp backagain16b


backagain16b:		
        
	call sixth_block_moveb

;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

    
hey7b:

		mov al, color1hy
		mov color3hy, al	
		call seventh_block_printb
	
	mov al, color2b
	mov color3b, al	

	mov al, color2by
	mov color3by, al	
	
	mov al, color2cy
	mov color3cy, al

 	mov al, color2dy
	mov color3dy, al

	mov al, color2ey
	mov color3ey, al

	mov al, color2fy
	mov color3fy, al
	
	mov al, color2gy
	mov color3gy, al
	
	mov al, color2hy
	mov color3hy, al

	mov al, color2iy
	mov color3iy, al

	mov al, color2jy
	mov color3jy, al

	mov al, color2ky
	mov color3ky, al

	mov al, color2ly
	mov color3ly, al

	
	call red_block_printb	
	call first_block_printb
	call second_block_printb
	call third_block_printb
	call fourth_block_printb
	call fifth_block_printb
	call sixth_block_printb
	call eight_block_printb
	call ninth_block_printb
	call tenth_block_printb
	call eleventh_block_printb
					

	sub col7b, 7   ;  ELSE TAN-AWON SA IBABAW KUNG PWEDE BA MOSAKA
	mov ah, 02h
        mov bh, 00h
        mov dh, col7b       	
        mov dl, 33      	 
        int 10h	
	add col7b, 7

	mov ah, 08h
	mov bh, 00h	
	int 10h

        cmp ah,  0bh
	if ne jmp fin117b				


	add col7b, 4
	mov ah, 02h
        mov bh, 00h
        mov dh, col7b       	
        mov dl, 33      	
        int 10h	
	sub col7b, 4

	mov ah, 08h
	mov bh, 00h	
	int 10h

        cmp ah, 0bh
	if ne jmp fin7b 

	if e jmp backagain17b


backagain17b:		
        

	call seventh_block_moveb


;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


hey8b:	
		
		mov al, color1iy
		mov color3iy, al	
		call eight_block_printb
	
	
	mov al, color2b
	mov color3b, al	

	mov al, color2by
	mov color3by, al	
	
	mov al, color2cy
	mov color3cy, al

 	mov al, color2dy
	mov color3dy, al

	mov al, color2ey
	mov color3ey, al

	mov al, color2fy
	mov color3fy, al
	
	mov al, color2gy
	mov color3gy, al
	
	mov al, color2hy
	mov color3hy, al

	mov al, color2iy
	mov color3iy, al

	mov al, color2jy
	mov color3jy, al

	mov al, color2ky
	mov color3ky, al

	mov al, color2ly
	mov color3ly, al
	
	call red_block_printb	
	call first_block_printb
	call second_block_printb
	call third_block_printb
	call fourth_block_printb
	call fifth_block_printb
	call sixth_block_printb
	call seventh_block_printb
	call ninth_block_printb
	call tenth_block_printb
	call eleventh_block_printb
		
	
		
		sub col8b, -1

		mov ah, 02h
         	mov bh, 00h
        	mov dh, 17         ;  row
     		mov dl, col8b       ;  column
        	int 10h	
	
		mov ah, 08h
		mov bh, 00h	
		int 10h
		
		add col8b, -1		

                cmp ah, 0bh
		if ne jmp t1118b
	
		add col8b, 12
		mov ah, 02h
         	mov bh, 00h
        	mov dh, 17         ;  row
     		mov dl, col8b       ;  column
        	int 10h	
		sub col8b, 12

		mov ah, 08h
		mov bh, 00h	
		int 10h
	
                cmp ah,  0bh
		if ne jmp t118b
				
		if e jmp backagain8b
 
 
t1118b:		
		cmp einum2b, 40
	        if e jmp eib	
	

		add col8b, 13
		mov ah, 02h
         	mov bh, 00h
        	mov dh, 17         ;  row
     		mov dl, col8b       ;  column
        	int 10h	
		sub col8b, 13

		mov ah, 08h
		mov bh, 00h	
		int 10h

                cmp ah,  0bh
		if ne jmp eib ; if dili yellow gane ang foreground jamoy ipabuhat/ mag base sa foreground sa blocks
			      ; else proceed				

		mov ah, 07h
		int 21h

	 	jmp a38b                      


backagain8b:
		call eight_block_moveb ; call to move the red block


t118b:	
	     
	    cmp einum2b, 40
	    if e jmp eib 
    
       	    jmp a58b

;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

hey9b:	
		
		mov al, color1jy
		mov color3jy, al
		call ninth_block_printb


	mov al, color2b
	mov color3b, al	

	mov al, color2by
	mov color3by, al	
	
	mov al, color2cy
	mov color3cy, al

 	mov al, color2dy
	mov color3dy, al

	mov al, color2ey
	mov color3ey, al

	mov al, color2fy
	mov color3fy, al
	
	mov al, color2gy
	mov color3gy, al
	
	mov al, color2hy
	mov color3hy, al

	mov al, color2iy
	mov color3iy, al

	mov al, color2jy
	mov color3jy, al

	mov al, color2ky
	mov color3ky, al

	mov al, color2ly
	mov color3ly, al
	
	call red_block_printb	
	call first_block_printb
	call second_block_printb
	call third_block_printb
	call fourth_block_printb
	call fifth_block_printb
	call sixth_block_printb
	call seventh_block_printb
	call eight_block_printb
	call tenth_block_printb
	call eleventh_block_printb
		
	
		
		sub col9b, -1

		mov ah, 02h
         	mov bh, 00h
        	mov dh, 20         ;  row
     		mov dl, col9b       ;  column
        	int 10h	

		add col9b, -1		

		mov ah, 08h
		mov bh, 00h	
		int 10h
		
	
                cmp ah, 0bh
		if ne jmp t1119b
	

		add col9b, 12
		mov ah, 02h
         	mov bh, 00h
        	mov dh, 20         ;  row
     		mov dl, col9b       ;  column
        	int 10h	
		sub col9b, 12

		mov ah, 08h
		mov bh, 00h	
		int 10h
	
                cmp ah,  0bh
		if ne jmp t119b
				
		jmp backagain9b
 
 
t1119b:		
		cmp ninum2b, 40
	        if e jmp eib	
	

		add col9b, 13
		mov ah, 02h
         	mov bh, 00h
        	mov dh, 20         ;  row
     		mov dl, col9b       ;  column
        	int 10h	
		sub col9b, 13

		mov ah, 08h
		mov bh, 00h	
		int 10h

                cmp ah,  0bh
		if ne jmp eib ; if dili yellow gane ang foreground jamoy ipabuhat/ mag base sa foreground sa blocks
			      ; else proceed				
		mov ah, 07h
		int 21h

	 	jmp a39b                      


backagain9b:
		call ninth_block_moveb ; call to move the red block


t119b:	
	     
	    cmp ninum2b, 40
	    if e jmp eib 
    
       	    jmp a59b

;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


hey10b:	
		
		mov al, color1ky
		mov color3ky, al	
		call tenth_block_printb
	
	mov al, color2b
	mov color3b, al	

	mov al, color2by
	mov color3by, al	
	
	mov al, color2cy
	mov color3cy, al

 	mov al, color2dy
	mov color3dy, al

	mov al, color2ey
	mov color3ey, al

	mov al, color2fy
	mov color3fy, al
	
	mov al, color2gy
	mov color3gy, al
	
	mov al, color2hy
	mov color3hy, al

	mov al, color2iy
	mov color3iy, al

	mov al, color2jy
	mov color3jy, al

	mov al, color2ky
	mov color3ky, al
	
	mov al, color2ly
	mov color3ly, al

	
	call red_block_printb	
	call first_block_printb
	call second_block_printb
	call third_block_printb
	call fourth_block_printb
	call fifth_block_printb
	call sixth_block_printb
	call seventh_block_printb
	call eight_block_printb
	call ninth_block_printb
	call eleventh_block_printb
				

		sub col10b, -1

		mov ah, 02h
         	mov bh, 00h
        	mov dh, 14        ;  row
     		mov dl, col10b       ;  column
        	int 10h	

		mov ah, 08h
		mov bh, 00h	
		int 10h
		
		add col10b, -1		

                cmp ah, 0bh
		if ne jmp t11110b

		add col10b, 12
		mov ah, 02h
         	mov bh, 00h
        	mov dh, 14        ;  row
     		mov dl, col10b       ;  column
        	int 10h	
		sub col10b, 12

		mov ah, 08h
		mov bh, 00h	
		int 10h
	
                cmp ah,  0bh
		if ne jmp t1110b
				
		if e jmp backagain10b
 
t11110b:		
		cmp tenum2b, 40
	        if e jmp eib	
	
		add col10b, 13
		mov ah, 02h
         	mov bh, 00h
        	mov dh, 14         ;  row
     		mov dl, col10b       ;  column
        	int 10h	
		sub col10b, 13

		mov ah, 08h
		mov bh, 00h	
		int 10h

                cmp ah,  0bh
		if ne jmp eib ; if dili yellow gane ang foreground jamoy ipabuhat/ mag base sa foreground sa blocks
			      ; else proceed				

		mov ah, 07h
		int 21h

	 	jmp a310b                      


backagain10b:
		call tenth_block_moveb ; call to move the red block


t1110b:	
	     
	    cmp tenum2b, 40
	    if e jmp eib 
    
       	    jmp a510b


;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


hey11b:	
		
		mov al, color1ly
		mov color3ly, al	
		call eleventh_block_printb
	
	mov al, color2b
	mov color3b, al	

	mov al, color2by
	mov color3by, al	
	
	mov al, color2cy
	mov color3cy, al

 	mov al, color2dy
	mov color3dy, al

	mov al, color2ey
	mov color3ey, al

	mov al, color2fy
	mov color3fy, al
	
	mov al, color2gy
	mov color3gy, al
	
	mov al, color2hy
	mov color3hy, al

	mov al, color2iy
	mov color3iy, al

	mov al, color2jy
	mov color3jy, al

	mov al, color2ky
	mov color3ky, al
	
	mov al, color2ly
	mov color3ly, al

	
	call red_block_printb	
	call first_block_printb
	call second_block_printb
	call third_block_printb
	call fourth_block_printb
	call fifth_block_printb
	call sixth_block_printb
	call seventh_block_printb
	call eight_block_printb
	call ninth_block_printb
	call tenth_block_printb
				

		sub col11b, -1

		mov ah, 02h
         	mov bh, 00h
        	mov dh, 08        ;  row
     		mov dl, col11b       ;  column
        	int 10h	

		mov ah, 08h
		mov bh, 00h	
		int 10h
		
		add col11b, -1		

                cmp ah, 0bh
		if ne jmp t11111b

		add col11b, 12
		mov ah, 02h
         	mov bh, 00h
        	mov dh, 08        ;  row
     		mov dl, col11b       ;  column
        	int 10h	
		sub col11b, 12

		mov ah, 08h
		mov bh, 00h	
		int 10h
	
                cmp ah,  0bh
		if ne jmp t1111b
				
		if e jmp backagain111b
 
t11111b:		
		cmp elnum2b, 40
	        if e jmp eib	
	
		add col11b, 13
		mov ah, 02h
         	mov bh, 00h
        	mov dh, 08         ;  row
     		mov dl, col11b       ;  column
        	int 10h	
		sub col11b, 13

		mov ah, 08h
		mov bh, 00h	
		int 10h

                cmp ah,  0bh
		if ne jmp eib ; if dili yellow gane ang foreground jamoy ipabuhat/ mag base sa foreground sa blocks
			      ; else proceed				

		mov ah, 07h
		int 21h

	 	jmp a311b                      

backagain111b:
		call eleventh_block_moveb ; call to move the red block


t1111b:	
	     
	    cmp elnum2b, 40
	    if e jmp eib 
    
       	    jmp a511b


level3 endp
end level3
	  

;__________________________________________________________________________________________





; RED BLOCK_a # 0
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

;__________________________________________________________________________________________


red_block_printb proc near

;******************************************************************************************

         mov ah,06h
         mov al,00h
         mov bh,color3b   ;  color red
         mov ch,0ah   ;  row
         mov cl,rnum1b ;  column 
         mov dh,0ch   ;  row
         mov dl,rnum2b ;  column
         int 10h

;******************************************************************************************


	add col0b, 6
        mov ah, 02h
        mov bh, 00h
        mov dh, 11         ;  row
        mov dl, col0b       ;  column
        int 10h	
	dec col0b, 6
	
        mov ah, 09h
        lea dx, string1
        int 21h
	
	
;******************************************************************************************



 ret
 red_block_printb endp
 end red_block_printb

;__________________________________________________________________________________________

;__________________________________________________________________________________________




red_block_moveb proc near
 
;******************************************************************************************
          

        mov ah, 07h
        int 21h

;******************************************************************************************

        cmp rnum1b, 11
        if e jmp a3b

	jmp a2b

;******************************************************************************************

finb:  
	 	
    mov ah, 07h                  ; finish line to congrats
    int 21h
	
    cmp al, 'A'
    if e jmp dec_colb
    cmp al, 'a'
    if e jmp dec_colb
	
    cmp al, 'D'
    if e jmp call_congb
    cmp al, 'd'
    if e jmp call_congb
    jmp eib    	    

call_congb:
     call congrats
	

;******************************************************************************************


a5b:                              ; dili pa moveright
        cmp rnum1b, 11
        if e jmp a3b	

        mov ah, 07h
        int 21h
	
	cmp al, 'A'
        if e jmp dec_colb
  	cmp al, 'a'
 	if e jmp dec_colb
        
	jmp a51b

;******************************************************************************************

	
a51b:
	cmp al, 'q'
        if e jmp stop0b
 	cmp al, 'Q'
        if e jmp stop0b 
        jmp t1b

;******************************************************************************************
 
a2b: 
 	cmp al, 'A'
        if e jmp dec_colb
 	cmp al, 'a'
 	if e jmp dec_colb
	

a3b:		
		
	cmp al, 'd'
        if e jmp inc_colb ;
        cmp al, 'D'
  	if e jmp inc_colb ;		
        jmp a4b
	
	
a4b:
	cmp al, 'q'
        if e jmp stop0b
 	cmp al, 'Q'
        if e jmp stop0b 
    	jmp eib
	
;******************************************************************************************

inc_colb:

	add col0b, 5
    	add rnum2b, 5 
        add rnum1b, 5
	
   	jmp eib

;******************************************************************************************


dec_colb:
	sub col0b, 5
        sub rnum2b, 5		
    	sub rnum1b, 5
	
	jmp eib

;******************************************************************************************


stop0b:
 call stop


;******************************************************************************************


 ret
 red_block_moveb endp
 end red_block_moveb

;__________________________________________________________________________________________


;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




; FIRST BLOCK_b # 1
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

;__________________________________________________________________________________________


first_block_printb  proc  near


;******************************************************************************************
	
	mov ah,06h
        mov al,00h
        mov bh,color3by     
        mov ch,fnum1b   
        mov cl,11 
        mov dh,fnum2b  
        mov dl,15  
        int 10h


;******************************************************************************************

	
	sub col1b, 1
	mov ah, 02h
        mov bh, 00h
        mov dh, col1b            
        mov dl, 13      	  
        int 10h	
	add col1b, 1

        mov ah, 09h
        lea dx, string1b
        int 21h
	
	add col1b, 3
	mov ah, 02h
        mov bh, 00h
        mov dh, col1b	       ;  
        mov dl, 14             ;  
        int 10h	
	sub col1b, 3

;******************************************************************************************

 ret
 first_block_printb endp
 end first_block_printb


;__________________________________________________________________________________________


;__________________________________________________________________________________________


first_block_moveb proc near
 
        
;******************************************************************************************

	
 mov ah, 07h  ; nangayug keyboard
 int 21h


;******************************************************************************************

 cmp fnum1b, 04 
 if e jmp a321b

 cmp fnum2b, 21
 if e jmp a2211b

 jmp a221b


;******************************************************************************************

fin1b:		
    cmp fnum1b, 04 
    if e jmp eib
		
    cmp fnum2b, 21
    if e jmp a2211b
     	    
    mov ah, 07h
    int 21h	
	     
    cmp al, 'W'
    if e jmp dec_col1b
    cmp al, 'w'
    if e jmp dec_col1b
    jmp a421b

fin111b:
	 cmp fnum1b, 21
	 if e jmp a2211b

	cmp fnum1b, 04 
	 if e jmp eib
	
	add col1b, 3
	mov ah, 02h
        mov bh, 00h
        mov dh, col1b       	
        mov dl, 14      	
        int 10h	
	sub col1b, 3

	mov ah, 08h
	mov bh, 00h	
	int 10h
	
        cmp ah, 0bh
	if ne jmp eib

	mov ah, 07h
        int 21h	
 
  	cmp al, 'S'
    	if e jmp inc_col1b
    	cmp al, 's'
 	if e jmp inc_col1b
    	jmp a421b
		
 
;******************************************************************************************

	
a221b:  

	cmp al, 'w'
   	if e jmp dec_col1b
 	cmp al, 'W'
 	if e jmp dec_col1b

a321b:        
        cmp al, 's'
	if e jmp inc_col1b
        cmp al, 'S' 
        if e jmp inc_col1b
	if ne jmp a421b


;******************************************************************************************

a2211b: 			

	cmp al, 'w'
        if e jmp dec_col1b
 	cmp al, 'W'
	if e jmp dec_col1b
        if ne jmp a421b
	

;******************************************************************************************
	

a421b:
	cmp al, 'q'
 	if e jmp stop1b
 	cmp al, 'Q'
	if e jmp stop1b
        if ne jmp eo51b 

     
;******************************************************************************************

	inc_col1b:
         add col1b, 3
         add fnum1b, 3
         add fnum2b, 3
     	 jmp eo51b

;******************************************************************************************

	dec_col1b:
	 sub col1b, 3
         sub fnum1b, 3
         sub fnum2b, 3
	 jmp eo51b


;******************************************************************************************

eo51b:
 jmp eib

;******************************************************************************************

stop1b:
 call stop

;******************************************************************************************
 
 
 ret
 first_block_moveb endp
 end first_block_moveb


;__________________________________________________________________________________________


;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




; SECOND BLOCK_b # 2
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

;__________________________________________________________________________________________


second_block_printb  proc  near


;******************************************************************************************
	
	mov ah,06h
        mov al,00h
        mov bh,color3cy     
        mov ch,snum1b   
        mov cl,11 
        mov dh,snum2b  
        mov dl,15  
        int 10h


;******************************************************************************************

	
	sub col2b, 1
	mov ah, 02h
        mov bh, 00h
        mov dh, col2b            
        mov dl, 13      	  
        int 10h	
	add col2b, 1

        mov ah, 09h
        lea dx, string2b
        int 21h
	
	add col2b, 3
	mov ah, 02h
        mov bh, 00h
        mov dh, col2b	       ;  
        mov dl, 14             ;  
        int 10h	
	sub col2b, 3

;******************************************************************************************

 ret
 second_block_printb endp
 end second_block_printb


;__________________________________________________________________________________________


;__________________________________________________________________________________________


second_block_moveb proc near
 
        
;******************************************************************************************

	
 mov ah, 07h  ; nangayug keyboard
 int 21h


;******************************************************************************************

 cmp snum1b, 04 
 if e jmp a322b

 cmp snum2b, 21
 if e jmp a2212b

 jmp a222b


;******************************************************************************************

fin2b:		
    cmp snum1b, 04 
    if e jmp eib
		
    cmp snum2b, 21
    if e jmp a2212b
     	    
    mov ah, 07h
    int 21h	
	     
    cmp al, 'W'
    if e jmp dec_col2b
    cmp al, 'w'
    if e jmp dec_col2b
    jmp a422b

fin112b:
	 cmp snum1b, 21
	 if e jmp a2212b

	cmp snum1b, 04 
	 if e jmp eib
	
	add col2b, 3
	mov ah, 02h
        mov bh, 00h
        mov dh, col2b       	
        mov dl, 14      	
        int 10h	
	sub col2b, 3

	mov ah, 08h
	mov bh, 00h	
	int 10h
	
        cmp ah, 0bh
	if ne jmp eib

	mov ah, 07h
        int 21h	
 
  	cmp al, 'S'
    	if e jmp inc_col2b
    	cmp al, 's'
 	if e jmp inc_col2b
    	jmp a422b
		
 
;******************************************************************************************

	
a222b:  

	cmp al, 'w'
   	if e jmp dec_col2b
 	cmp al, 'W'
 	if e jmp dec_col2b

a322b:        
        cmp al, 's'
	if e jmp inc_col2b
        cmp al, 'S' 
        if e jmp inc_col2b
	if ne jmp a422b


;******************************************************************************************

a2212b: 			

	cmp al, 'w'
        if e jmp dec_col2b
 	cmp al, 'W'
	if e jmp dec_col2b
        if ne jmp a422b
	

;******************************************************************************************
	

a422b:
	cmp al, 'q'
 	if e jmp stop2b
 	cmp al, 'Q'
	if e jmp stop2b
        if ne jmp eo52b 

     
;******************************************************************************************

	inc_col2b:
         add col2b, 3
         add snum1b, 3
         add snum2b, 3
     	 jmp eo52b

;******************************************************************************************

	dec_col2b:
	 sub col2b, 3
         sub snum1b, 3
         sub snum2b, 3
	 jmp eo52b


;******************************************************************************************

eo52b:
 jmp eib

;******************************************************************************************

stop2b:
 call stop

;******************************************************************************************
 
 
 ret
 second_block_moveb endp
 end second_block_moveb


;__________________________________________________________________________________________


;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




; THIRD BLOCK_b # 3
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

;__________________________________________________________________________________________


third_block_printb  proc  near


;******************************************************************************************
	
	mov ah,06h
        mov al,00h
        mov bh,color3dy     
        mov ch,tnum1b   
        mov cl,16 
        mov dh,tnum2b  
        mov dl,20  
        int 10h


;******************************************************************************************

	
	sub col3b, 1
	mov ah, 02h
        mov bh, 00h
        mov dh, col3b            
        mov dl, 18      	  
        int 10h	
	add col3b, 1

        mov ah, 09h
        lea dx, string3b
        int 21h
	
	add col3b, 3
	mov ah, 02h
        mov bh, 00h
        mov dh, col3b	       ;  
        mov dl, 18             ;  
        int 10h	
	sub col3b, 3

;******************************************************************************************

 ret
 third_block_printb endp
 end third_block_printb


;__________________________________________________________________________________________


;__________________________________________________________________________________________


third_block_moveb proc near
 
        
;******************************************************************************************

	
 mov ah, 07h  ; nangayug keyboard
 int 21h


;******************************************************************************************

 cmp tnum1b, 04 
 if e jmp a323b

 cmp tnum2b, 21
 if e jmp a2213b

 jmp a223b


;******************************************************************************************

fin3b:		
    cmp tnum1b, 04 
    if e jmp eib
		
    cmp tnum2b, 21
    if e jmp a2213b
     	    
    mov ah, 07h
    int 21h	
	     
    cmp al, 'W'
    if e jmp dec_col3b
    cmp al, 'w'
    if e jmp dec_col3b
    jmp a423b

fin113b:
	 cmp tnum1b, 21
	 if e jmp a2213b

	cmp tnum1b, 04 
	 if e jmp eib
	
	add col3b, 3
	mov ah, 02h
        mov bh, 00h
        mov dh, col3b       	
        mov dl, 18      	
        int 10h	
	sub col3b, 3

	mov ah, 08h
	mov bh, 00h	
	int 10h
	
        cmp ah, 0bh
	if ne jmp eib

	mov ah, 07h
        int 21h	
 
  	cmp al, 'S'
    	if e jmp inc_col3b
    	cmp al, 's'
 	if e jmp inc_col3b
    	jmp a423b
		
 
;******************************************************************************************

	
a223b:  

	cmp al, 'w'
   	if e jmp dec_col3b
 	cmp al, 'W'
 	if e jmp dec_col3b

a323b:        
        cmp al, 's'
	if e jmp inc_col3b
        cmp al, 'S' 
        if e jmp inc_col3b
	if ne jmp a423b


;******************************************************************************************

a2213b: 			

	cmp al, 'w'
        if e jmp dec_col3b
 	cmp al, 'W'
	if e jmp dec_col3b
        if ne jmp a423b
	

;******************************************************************************************
	

a423b:
	cmp al, 'q'
 	if e jmp stop3b
 	cmp al, 'Q'
	if e jmp stop3b
        if ne jmp eo53b 

     
;******************************************************************************************

	inc_col3b:
         add col3b, 3
         add tnum1b, 3
         add tnum2b, 3
     	 jmp eo53b

;******************************************************************************************

	dec_col3b:
	 sub col3b, 3
         sub tnum1b, 3
         sub tnum2b, 3
	 jmp eo53b


;******************************************************************************************

eo53b:
 jmp eib

;******************************************************************************************

stop3b:
 call stop

;******************************************************************************************
 
 
 ret
 third_block_moveb endp
 end third_block_moveb


;__________________________________________________________________________________________


;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



; FOURTH BLOCK_b # 4
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

;__________________________________________________________________________________________


fourth_block_printb  proc  near


;******************************************************************************************
	
	mov ah,06h
        mov al,00h
        mov bh,color3ey     
        mov ch,fonum1b   
        mov cl,21 
        mov dh,fonum2b  
        mov dl,25  
        int 10h


;******************************************************************************************

	
	sub col4b, 1
	mov ah, 02h
        mov bh, 00h
        mov dh, col4b            
        mov dl, 23      	  
        int 10h	
	add col4b, 1

        mov ah, 09h
        lea dx, string4b
        int 21h
	
	add col4b, 3
	mov ah, 02h
        mov bh, 00h
        mov dh, col4b	       ;  
        mov dl, 23             ;  
        int 10h	
	sub col4b, 3

;******************************************************************************************

 ret
 fourth_block_printb endp
 end fourth_block_printb


;__________________________________________________________________________________________


;__________________________________________________________________________________________


fourth_block_moveb proc near
 
        
;******************************************************************************************

	
 mov ah, 07h  ; nangayug keyboard
 int 21h


;******************************************************************************************

 cmp fonum1b, 04 
 if e jmp a324b

 cmp fonum2b, 21
 if e jmp a2214b

 jmp a224b


;******************************************************************************************

fin4b:		
    cmp fonum1b, 04 
    if e jmp eib
		
    cmp fonum2b, 21
    if e jmp a2214b
     	    
    mov ah, 07h
    int 21h	
	     
    cmp al, 'W'
    if e jmp dec_col4b
    cmp al, 'w'
    if e jmp dec_col4b
    jmp a424b

fin114b:
	 cmp fonum1b, 21
	 if e jmp a2214b

	cmp fonum1b, 04 
	 if e jmp eib
	
	add col4b, 3
	mov ah, 02h
        mov bh, 00h
        mov dh, col4b       	
        mov dl, 23      	
        int 10h	
	sub col4b, 3

	mov ah, 08h
	mov bh, 00h	
	int 10h
	
        cmp ah, 0bh
	if ne jmp eib

	mov ah, 07h
        int 21h	
 
  	cmp al, 'S'
    	if e jmp inc_col4b
    	cmp al, 's'
 	if e jmp inc_col4b
    	jmp a424b
		
 
;******************************************************************************************

	
a224b:  

	cmp al, 'w'
   	if e jmp dec_col4b
 	cmp al, 'W'
 	if e jmp dec_col4b

a324b:        
        cmp al, 's'
	if e jmp inc_col4b
        cmp al, 'S' 
        if e jmp inc_col4b
	if ne jmp a424b


;******************************************************************************************

a2214b: 			

	cmp al, 'w'
        if e jmp dec_col4b
 	cmp al, 'W'
	if e jmp dec_col4b
        if ne jmp a424b
	

;******************************************************************************************
	

a424b:
	cmp al, 'q'
 	if e jmp stop4b
 	cmp al, 'Q'
	if e jmp stop4b
        if ne jmp eo54b 

     
;******************************************************************************************

	inc_col4b:
         add col4b, 3
         add fonum1b, 3
         add fonum2b, 3
     	 jmp eo54b

;******************************************************************************************
	dec_col4b:
	 sub col4b, 3
         sub fonum1b, 3
         sub fonum2b, 3
	 jmp eo54b


;******************************************************************************************

eo54b:
 jmp eib

;******************************************************************************************

stop4b:
 call stop

;******************************************************************************************
 
 
 ret
 fourth_block_moveb endp
 end fourth_block_moveb


;__________________________________________________________________________________________


;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



; FIFTH BLOCK_b # 5
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

;__________________________________________________________________________________________


fifth_block_printb  proc  near


;******************************************************************************************
	
	mov ah,06h
        mov al,00h
        mov bh,color3fy     
        mov ch,fivnum1b   
        mov cl,26 
        mov dh,fivnum2b  
        mov dl,30  
        int 10h


;******************************************************************************************

	
	sub col5b, 1
	mov ah, 02h
        mov bh, 00h
        mov dh, col5b            
        mov dl, 28      	  
        int 10h	
	add col5b, 1

        mov ah, 09h
        lea dx, string5b
        int 21h
	
	add col5b, 3
	mov ah, 02h
        mov bh, 00h
        mov dh, col5b	       ;  
        mov dl, 28             ;  
        int 10h	
	sub col5b, 3

;******************************************************************************************

 ret
 fifth_block_printb endp
 end fifth_block_printb


;__________________________________________________________________________________________


;__________________________________________________________________________________________


fifth_block_moveb proc near
 
        
;******************************************************************************************

	
 mov ah, 07h  ; nangayug keyboard
 int 21h


;******************************************************************************************

 cmp fivnum1b, 04 
 if e jmp a325b

 cmp fivnum2b, 21
 if e jmp a2215b

 jmp a225b


;******************************************************************************************

fin5b:		
    cmp fivnum1b, 04 
    if e jmp eib
		
    cmp fivnum2b, 21
    if e jmp a2215b
     	    
    sub col5b, 4
    mov ah, 02h
     mov bh, 00h
        mov dh, col5b       	
        mov dl, 28      	 
        int 10h	
	add col5b, 4

	mov ah, 08h
	mov bh, 00h	
	int 10h

        cmp ah,  0bh
	if ne jmp eib
	

    mov ah, 07h
    int 21h	
	     
    cmp al, 'W'
    if e jmp dec_col5b
    cmp al, 'w'
    if e jmp dec_col5b
    jmp a425b

fin115b:
	 cmp fivnum1b, 21
	 if e jmp a2215b

	cmp fivnum1b, 04 
	 if e jmp eib

	add col5b, 3
	mov ah, 02h
        mov bh, 00h
        mov dh, col5b       	
        mov dl, 28      	
        int 10h	
	sub col5b, 3

	mov ah, 08h
	mov bh, 00h	
	int 10h
	
        cmp ah, 0bh
	if ne jmp eib

	mov ah, 07h
        int 21h	
 
  	cmp al, 'S'
    	if e jmp inc_col5b
    	cmp al, 's'
 	if e jmp inc_col5b
    	jmp a425b
		
 
;******************************************************************************************

	
a225b:  

	cmp al, 'w'
   	if e jmp dec_col5b
 	cmp al, 'W'
 	if e jmp dec_col5b

a325b:        
        cmp al, 's'
	if e jmp inc_col5b
        cmp al, 'S' 
        if e jmp inc_col5b
	if ne jmp a425b


;******************************************************************************************

a2215b: 			

	cmp al, 'w'
        if e jmp dec_col5b
 	cmp al, 'W'
	if e jmp dec_col5b
        if ne jmp a425b
	

;******************************************************************************************
	

a425b:
	cmp al, 'q'
 	if e jmp stop5b
 	cmp al, 'Q'
	if e jmp stop5b
        if ne jmp eo55b 

     
;******************************************************************************************

	inc_col5b:
         add col5b, 3
         add fivnum1b, 3
         add fivnum2b, 3
     	 jmp eo55b

;******************************************************************************************
	dec_col5b:
	 sub col5b, 3
         sub fivnum1b, 3
         sub fivnum2b, 3
	 jmp eo55b


;******************************************************************************************

eo55b:
 jmp eib

;******************************************************************************************

stop5b:
 call stop

;******************************************************************************************
 
 
 ret
 fifth_block_moveb endp
 end fifth_block_moveb


;__________________________________________________________________________________________


;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




; SIXTH BLOCK_b # 6
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

;__________________________________________________________________________________________


sixth_block_printb  proc  near

;******************************************************************************************
	
	mov ah,06h
        mov al,00h
        mov bh,color3gy     
        mov ch,sinum1b   
        mov cl,36 
        mov dh,sinum2b  
        mov dl,40  
        int 10h

;******************************************************************************************
	
	sub col6b, 1
	mov ah, 02h
        mov bh, 00h
        mov dh, col6b            
        mov dl, 38      	  
        int 10h	
	add col6b, 1

        mov ah, 09h
        lea dx, string6b
        int 21h
	
	add col6b, 3
	mov ah, 02h
        mov bh, 00h
        mov dh, col6b	       ;  
        mov dl, 38             ;  
        int 10h	
	sub col6b, 3

;******************************************************************************************

 ret
 sixth_block_printb endp
 end sixth_block_printb


;__________________________________________________________________________________________


;__________________________________________________________________________________________


sixth_block_moveb proc near
 
        
;******************************************************************************************

	
 mov ah, 07h  ; nangayug keyboard
 int 21h


;******************************************************************************************

 cmp sinum1b, 04 
 if e jmp a326b

 cmp sinum2b, 21
 if e jmp a2216b

 jmp a226b


;******************************************************************************************

fin6b:		
    cmp sinum1b, 04 
    if e jmp eib
		
    cmp sinum2b, 21
    if e jmp a2216b
     	    
    mov ah, 07h
    int 21h	
	     
    cmp al, 'W'
    if e jmp dec_col6b
    cmp al, 'w'
    if e jmp dec_col6b
    jmp a426b

fin116b:
	 cmp sinum1b, 21
	 if e jmp a2216b

	cmp sinum1b, 04 
	 if e jmp eib

	add col6b, 3
	mov ah, 02h
        mov bh, 00h
        mov dh, col6b       	
        mov dl, 38      	
        int 10h	
	sub col6b, 3

	mov ah, 08h
	mov bh, 00h	
	int 10h
	
        cmp ah, 0bh
	if ne jmp eib

	mov ah, 07h
        int 21h	
 
  	cmp al, 'S'
    	if e jmp inc_col6b
    	cmp al, 's'
 	if e jmp inc_col6b
    	jmp a426b
		
 
;******************************************************************************************

	
a226b:  

	cmp al, 'w'
   	if e jmp dec_col6b
 	cmp al, 'W'
 	if e jmp dec_col6b

a326b:        
        cmp al, 's'
	if e jmp inc_col6b
        cmp al, 'S' 
        if e jmp inc_col6b
	if ne jmp a426b

;******************************************************************************************

a2216b: 			

	cmp al, 'w'
        if e jmp dec_col6b
 	cmp al, 'W'
	if e jmp dec_col6b
        if ne jmp a426b
	
;******************************************************************************************
	

a426b:
	cmp al, 'q'
 	if e jmp stop6b
 	cmp al, 'Q'
	if e jmp stop6b
        if ne jmp eo56b 
     
;******************************************************************************************

	inc_col6b:
         add col6b, 3
         add sinum1b, 3
         add sinum2b, 3
     	 jmp eo56b

;******************************************************************************************
	dec_col6b:
	 sub col6b, 3
         sub sinum1b, 3
         sub sinum2b, 3
	 jmp eo56b

;******************************************************************************************

eo56b:
 jmp eib

;******************************************************************************************

stop6b:
 call stop

;******************************************************************************************
 
 
 ret
 sixth_block_moveb endp
 end sixth_block_moveb


;__________________________________________________________________________________________


;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


; SEVENTH BLOCK_b # 7
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

;__________________________________________________________________________________________


seventh_block_printb  proc  near

;******************************************************************************************
	
	mov ah,06h
        mov al,00h
        mov bh,color3hy     
        mov ch,senum1b   
        mov cl,31 
        mov dh,senum2b  
        mov dl,35  
        int 10h

;******************************************************************************************
	
	sub col7b, 1
	mov ah, 02h
        mov bh, 00h
        mov dh, col7b            
        mov dl, 33      	  
        int 10h	
	add col7b, 1

        mov ah, 09h
        lea dx, string7b
        int 21h
	
	add col7b, 3
	mov ah, 02h
        mov bh, 00h
        mov dh, col7b	       ;  
        mov dl, 33             ;  
        int 10h	
	sub col7b, 3

;******************************************************************************************

 ret
 seventh_block_printb endp
 end seventh_block_printb


;__________________________________________________________________________________________


;__________________________________________________________________________________________


seventh_block_moveb proc near
 
        
;******************************************************************************************

	
 mov ah, 07h  ; nangayug keyboard
 int 21h


;******************************************************************************************

 cmp senum1b, 04 
 if e jmp a327b

 cmp senum2b, 21
 if e jmp a2217b

 jmp a227b


;******************************************************************************************

fin7b:		
    cmp senum1b, 04 
    if e jmp eib
		
    cmp senum2b, 21
    if e jmp a2217b
     	    
    mov ah, 07h
    int 21h	
	     
    cmp al, 'W'
    if e jmp dec_col7b
    cmp al, 'w'
    if e jmp dec_col7b
    jmp a427b

fin117b:
	 cmp senum1b, 21
	 if e jmp a2217b

	cmp senum1b, 04 
	 if e jmp eib

	add col7b, 3
	mov ah, 02h
        mov bh, 00h
        mov dh, col7b       	
        mov dl, 33      	
        int 10h	
	sub col7b, 3

	mov ah, 08h
	mov bh, 00h	
	int 10h
	
        cmp ah, 0bh
	if ne jmp eib

	mov ah, 07h
        int 21h	
 
  	cmp al, 'S'
    	if e jmp inc_col7b
    	cmp al, 's'
 	if e jmp inc_col7b
    	jmp a427b
		
 
;******************************************************************************************

	
a227b:  

	cmp al, 'w'
   	if e jmp dec_col7b
 	cmp al, 'W'
 	if e jmp dec_col7b

a327b:        
        cmp al, 's'
	if e jmp inc_col7b
        cmp al, 'S' 
        if e jmp inc_col7b
	if ne jmp a427b

;******************************************************************************************

a2217b: 			

	cmp al, 'w'
        if e jmp dec_col7b
 	cmp al, 'W'
	if e jmp dec_col7b
        if ne jmp a427b
	
;******************************************************************************************
	

a427b:
	cmp al, 'q'
 	if e jmp stop7b
 	cmp al, 'Q'
	if e jmp stop7b
        if ne jmp eo57b 
     
;******************************************************************************************

	inc_col7b:
         add col7b, 3
         add senum1b, 3
         add senum2b, 3
     	 jmp eo57b

;******************************************************************************************
	dec_col7b:
	 sub col7b, 3
         sub senum1b, 3
         sub senum2b, 3
	 jmp eo57b

;******************************************************************************************

eo57b:
 jmp eib

;******************************************************************************************

stop7b:
 call stop

;******************************************************************************************
 
 
 ret
 seventh_block_moveb endp
 end seventh_block_moveb


;__________________________________________________________________________________________


;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



; EIGHT BLOCK_b # 8
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

;__________________________________________________________________________________________


eight_block_printb proc near

;******************************************************************************************

         mov ah,06h
         mov al,00h
         mov bh,color3iy  ;  color red
         mov ch,16   ;  row
         mov cl,einum1b ;  column 
         mov dh,18   ;  row
         mov dl,einum2b ;  column
         int 10h

;******************************************************************************************


	add col8b, 6
        mov ah, 02h
        mov bh, 00h
        mov dh, 17         ;  row
        mov dl, col8b       ;  column
        int 10h	
	dec col8b, 6
	
        mov ah, 09h
        lea dx, string8b
        int 21h
	
	
;******************************************************************************************


 ret
 eight_block_printb endp
 end eight_block_printb

;__________________________________________________________________________________________

;__________________________________________________________________________________________



eight_block_moveb proc near
 
;******************************************************************************************
          

        mov ah, 07h
        int 21h

;******************************************************************************************

        cmp einum1b, 11
        if e jmp a38b
	
	cmp einum2b, 40
	if e jmp a58b1
	
        jmp a28b

;******************************************************************************************

finb8:  
   		 	
    mov ah, 07h                  ; finish line to congrats
    int 21h
	
    cmp al, 'A'
    if e jmp dec_col8b
    cmp al, 'a'
    if e jmp dec_col8b
	
    jmp eib    	    
	
;******************************************************************************************

a58b:                              ; dili pa moveright
        cmp einum1b, 11
        if e jmp a38b	

        mov ah, 07h
        int 21h
A58b1:	
	cmp al, 'A'
        if e jmp dec_col8b
  	cmp al, 'a'
 	if e jmp dec_col8b
        
	jmp a518b

;******************************************************************************************
	
a518b:
	cmp al, 'q'
        if e jmp stop8b
 	cmp al, 'Q'
        if e jmp stop8b 
        jmp t1b

;******************************************************************************************
 
a28b: 
 	cmp al, 'A'
        if e jmp dec_col8b
 	cmp al, 'a'
 	if e jmp dec_col8b
	
a38b:				
	cmp al, 'd'
        if e jmp inc_col8b ;
        cmp al, 'D'
  	if e jmp inc_col8b ;		
        jmp a48b
	
a48b:
	cmp al, 'q'
        if e jmp stop8b
 	cmp al, 'Q'
        if e jmp stop8b 
    	jmp eib
	
;******************************************************************************************


inc_col8b:
	add col8b, 5
    	add einum2b, 5 
        add einum1b, 5
   	jmp eib

;******************************************************************************************


dec_col8b:
	sub col8b, 5
        sub einum2b, 5		
    	sub einum1b, 5
	jmp eib

;******************************************************************************************


stop8b:
 call stop


;******************************************************************************************


 ret
 eight_block_moveb endp
 end eight_block_moveb

;__________________________________________________________________________________________


;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



; NINTH BLOCK_b # 9
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

;__________________________________________________________________________________________


ninth_block_printb proc near

;******************************************************************************************

         mov ah,06h
         mov al,00h
         mov bh,color3jy  ;  color red
         mov ch,19   ;  row
         mov cl,ninum1b ;  column 
         mov dh,21   ;  row
         mov dl,ninum2b ;  column
         int 10h

;******************************************************************************************


	add col9b, 6
        mov ah, 02h
        mov bh, 00h
        mov dh, 20         ;  row
        mov dl, col9b       ;  column
        int 10h	
	dec col9b, 6
	
        mov ah, 09h
        lea dx, string9b
        int 21h
	
	
;******************************************************************************************


 ret
 ninth_block_printb endp
 end ninth_block_printb

;__________________________________________________________________________________________

;__________________________________________________________________________________________



ninth_block_moveb proc near
 
;******************************************************************************************
          

        mov ah, 07h
        int 21h

;******************************************************************************************

        cmp ninum1b, 11
        if e jmp a39b
	
	cmp ninum2b, 40
	if e jmp a59b1
	
        jmp a29b

;******************************************************************************************

finb9:  
   		 	
    mov ah, 07h                  ; finish line to congrats
    int 21h
	
    cmp al, 'A'
    if e jmp dec_col9b
    cmp al, 'a'
    if e jmp dec_col9b
	
    jmp eib    	    
	
;******************************************************************************************

a59b:              
	                ; dili pa moveright
        cmp ninum1b, 11
        if e jmp a39b	

	mov ah, 07h                  ; finish line to congrats
   	int 21h


A59b1:	
	
		

	cmp al, 'A'
        if e jmp dec_col9b
  	cmp al, 'a'
 	if e jmp dec_col9b
        
	jmp a519b

;******************************************************************************************
	
a519b:
	cmp al, 'q'
        if e jmp stop9b
 	cmp al, 'Q'
        if e jmp stop9b 
        jmp t1b

;******************************************************************************************
 
a29b: 
 	cmp al, 'A'
        if e jmp dec_col9b
 	cmp al, 'a'
 	if e jmp dec_col9b
	
a39b:		
		
	cmp al, 'd'
        if e jmp inc_col9b ;
        cmp al, 'D'
  	if e jmp inc_col9b ;		
        jmp a49b
	
a49b:
	cmp al, 'q'
        if e jmp stop9b
 	cmp al, 'Q'
        if e jmp stop9b 
    	jmp eib
	
;******************************************************************************************

inc_col9b:
	add col9b, 5
    	add ninum2b, 5 
        add ninum1b, 5
   	jmp eib

;******************************************************************************************

dec_col9b:
	sub col9b, 5
        sub ninum2b, 5		
    	sub ninum1b, 5
	jmp eib

;******************************************************************************************


stop9b:
 call stop


;******************************************************************************************


 ret
 ninth_block_moveb endp
 end ninth_block_moveb

;__________________________________________________________________________________________

;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


; TENTH BLOCK_b letter M
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

;__________________________________________________________________________________________


tenth_block_printb proc near

;******************************************************************************************

         mov ah,06h
         mov al,00h
         mov bh,color3ky  ;  color red
         mov ch,13   ;  row
         mov cl,tenum1b ;  column 
         mov dh,15   ;  row
         mov dl,tenum2b ;  column
         int 10h

;******************************************************************************************


	add col10b, 6
        mov ah, 02h
        mov bh, 00h
        mov dh, 14         ;  row
        mov dl, col10b       ;  column
        int 10h	
	dec col10b, 6
	
        mov ah, 09h
        lea dx, string10b
        int 21h
	
	
;******************************************************************************************


 ret
 tenth_block_printb endp
 end tenth_block_printb

;__________________________________________________________________________________________

;__________________________________________________________________________________________


tenth_block_moveb proc near
 
;******************************************************************************************
          

        mov ah, 07h
        int 21h

;******************************************************************************************

        cmp tenum1b, 11
        if e jmp a310b
	
	cmp tenum2b, 40
	if e jmp a510b1
	
        jmp a210b

;******************************************************************************************

finb10:  
   		 	
    mov ah, 07h                  ; finish line to congrats
    int 21h
	
    cmp al, 'A'
    if e jmp dec_col10b
    cmp al, 'a'
    if e jmp dec_col10b
	
    jmp eib    	    
	
;******************************************************************************************

a510b:              
	                ; dili pa moveright
        cmp tenum1b, 11
        if e jmp a310b	

	mov ah, 07h                  ; finish line to congrats
   	int 21h


A510b1:	
			
	cmp al, 'A'
        if e jmp dec_col10b
  	cmp al, 'a'
 	if e jmp dec_col10b
        
	jmp a5110b

;******************************************************************************************
	
a5110b:
	cmp al, 'q'
        if e jmp stop10b
 	cmp al, 'Q'
        if e jmp stop10b 
        jmp t1b

;******************************************************************************************
 
a210b: 
 	cmp al, 'A'
        if e jmp dec_col10b
 	cmp al, 'a'
 	if e jmp dec_col10b
	
a310b:		
		
	cmp al, 'd'
        if e jmp inc_col10b ;
        cmp al, 'D'
  	if e jmp inc_col10b ;		
        jmp a410b
	
a410b:
	cmp al, 'q'
        if e jmp stop10b
 	cmp al, 'Q'
        if e jmp stop10b 
    	jmp eib
	
;******************************************************************************************

inc_col10b:
	add col10b, 5
    	add tenum2b, 5 
        add tenum1b, 5
   	jmp eib

;******************************************************************************************

dec_col10b:
	sub col10b, 5
        sub tenum2b, 5		
    	sub tenum1b, 5
	jmp eib

;******************************************************************************************


stop10b:
 call stop


;******************************************************************************************


 ret
 tenth_block_moveb endp
 end tenth_block_moveb

;__________________________________________________________________________________________


;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


; ELEVENTH BLOCK_b letter N
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

;__________________________________________________________________________________________


eleventh_block_printb proc near

;******************************************************************************************

         mov ah,06h
         mov al,00h
         mov bh,color3ly  ;  color red
         mov ch,07   ;  row
         mov cl,elnum1b ;  column 
         mov dh,09   ;  row
         mov dl,elnum2b ;  column
         int 10h

;******************************************************************************************


	add col11b, 6
        mov ah, 02h
        mov bh, 00h
        mov dh, 08         ;  row
        mov dl, col11b       ;  column
        int 10h	
	dec col11b, 6
	
        mov ah, 09h
        lea dx, string11b
        int 21h
	
	
;******************************************************************************************


 ret
 eleventh_block_printb endp
 end eleventh_block_printb

;__________________________________________________________________________________________

;__________________________________________________________________________________________


eleventh_block_moveb proc near
 
;******************************************************************************************
          

        mov ah, 07h
        int 21h

;******************************************************************************************

        cmp elnum1b, 11
        if e jmp a311b
	
	cmp elnum2b, 40
	if e jmp a511b1
	
        jmp a211b

;******************************************************************************************

finb11:  
   		 	
    mov ah, 07h                  ; finish line to congrats
    int 21h
	
    cmp al, 'A'
    if e jmp dec_col11b
    cmp al, 'a'
    if e jmp dec_col11b
	
    jmp eib    	    
	
;******************************************************************************************

a511b:              
	                ; dili pa moveright
        cmp elnum1b, 11
        if e jmp a311b	

	mov ah, 07h                  ; finish line to congrats
   	int 21h


A511b1:	
			
	cmp al, 'A'
        if e jmp dec_col11b
  	cmp al, 'a'
 	if e jmp dec_col11b
        
	jmp a5111b

;******************************************************************************************
	
a5111b:
	cmp al, 'q'
        if e jmp stop11b
 	cmp al, 'Q'
        if e jmp stop11b 
        jmp t1b

;******************************************************************************************
 
a211b: 
 	cmp al, 'A'
        if e jmp dec_col11b
 	cmp al, 'a'
 	if e jmp dec_col11b
	
a311b:		
		
	cmp al, 'd'
        if e jmp inc_col11b ;
        cmp al, 'D'
  	if e jmp inc_col11b ;		
        jmp a411b
	
a411b:
	cmp al, 'q'
        if e jmp stop11b
 	cmp al, 'Q'
        if e jmp stop11b 
    	jmp eib
	
;******************************************************************************************

inc_col11b:
	add col11b, 5
    	add elnum2b, 5 
        add elnum1b, 5
   	jmp eib

;******************************************************************************************

dec_col11b:
	sub col11b, 5
        sub elnum2b, 5		
    	sub elnum1b, 5
	jmp eib

;******************************************************************************************


stop11b:
 call stop


;******************************************************************************************


 ret
 eleventh_block_moveb endp
 end eleventh_block_moveb

;__________________________________________________________________________________________


;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%





;__________________________________________________________________________________________

stop proc near
  
 mov ax, 4c00h
 int 21h

 stop endp
 end stop
;__________________________________________________________________________________________


disp proc near

 mov ah, 10h
 int 16h

 mov ah, 00h
 mov al, mode
 int 10h
 
 ret
 disp endp
 end disp

;__________________________________________________________________________________________


congrats proc near
 mov ax, 03h
 int 10h
 
 mov ah, 09h
 lea dx, cong
 int 21h
 
 call stop

 congrats endp
 end cograts


;__________________________________________________________________________________________





hide_cur proc near:

        mov ah,3
        int 10h
        or ch, 30h

        mov ah,1
        int 10h
	ret	
hide_cur endp
