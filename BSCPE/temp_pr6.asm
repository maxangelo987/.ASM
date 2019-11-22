.model small
.code
org 100h
jmp level1




mode db 00

string1 db 'KING','$' ; HORIZONTAL

string2 db ' 1','$' ; VERTICAL
string3 db ' 2','$' ; VERTICAL 
string4 db ' 3','$' ; VERTICAL
string5 db ' 4','$' ; VERTICAL
string6 db ' 5','$' ; VERTICAL

string7 db ' 6','$' ; HORIZONTAL
string8 db ' 7','$' ; HORIZONTAL


col1 db 13   ; RED BLOCK FOR STRING1
rnum1 db 16 ; RED BLOCK COLUMN START
rnum2 db 25 ; RED BLOCK COLUMN FIN


col2 db 18   ; FIRST BLOCK FOR STRING2
fnum1 db 13 ; FIRST BLOCK COLUMN START
fnum2 db 21 ; FIRST BLOCK COLUMN FIN


col3 db 15   ; SECOND BLOCK FOR STRING3
snum1 db 10 ; SECOND BLOCK COLUMN START
snum2 db 18 ; SECOND BLOCK COLUMN FIN


col4 db 15   ; THIRD BLOCK FOR STRING4
tnum1 db 10 ; THIRD BLOCK COLUMN START
tnum2 db 18 ; THIRD BLOCK COLUMN FIN


col5 db 07   ; FOURTH BLOCK FOR STRING5
frnum1 db 04 ; FOURTH BLOCK COLUMN START
frnum2 db 09 ; FOURTH BLOCK COLUMN FIN


col6 db 10   ; FIFTH BLOCK FOR STRING6
finum1 db 07 ; FIFTH BLOCK COLUMN START
finum2 db 12 ; FIFTH BLOCK COLUMN FIN


col7 db 29   ; SIXTH BLOCK FOR STRING7
sinum1 db 31 ; SIXTH BLOCK COLUMN START
sinum2 db 40 ; SIXTH BLOCK COLUMN FIN



map1 	db   '                                                                          ',0ah,0dh
	db   '         께께께께께께께께께께께께께께께께께�         		        ',0ah,0dh
        db   '         께                              께�                              ',0ah,0dh
        db   '         께                              께�                              ',0ah,0dh
        db   '         께                              께�                              ',0ah,0dh
        db   '         께                              께�  께께께께께께께께께께께께�   ',0ah,0dh
        db   '         께                              께�  �                       �   ',0ah,0dh
        db   '         께                              께�  �                       �   ',0ah,0dh
        db   '         께                              栢�  �    UNBLOCK THE KING   �   ',0ah,0dh
        db   '         께                              栢�  �                       �   ',0ah,0dh
	db   '         께                              栢�  �        LEVEL  1       �   ',0ah,0dh
	db   '         께                              께�  �                       �   ',0ah,0dh
	db   '         께                              께�  �    " Halls of the "   �   ',0ah,0dh      
	db   '         께                              께�  �         Damned        �   ',0ah,0dh
        db   '         께                              께�  �                       �   ',0ah,0dh
        db   '         께                              께�  �                       �   ',0ah,0dh
        db   '         께                              께�  께께께께께께께께께께께께�   ',0ah,0dh
        db   '         께                              께�                              ',0ah,0dh
        db   '         께                              께�                              ',0ah,0dh
        db   '         께                              께�                              ',0ah,0dh
        db   '         께께께께께께께께께께께께께께께께께�                              ',0ah,0dh,
        db   '                                                                          ',0ah,0dh,'$'







cong db 'CONGRATS! ','$'

;__________________________________________________________________________________________


clear101  proc  near


	mov ah, 06h		; clearing the screen w/o a buff
        mov al, 00h
        mov ch, 00
        mov cl, 00
        mov dh, 24
        mov dl, 79
        mov bh, 04h              ; color
        int 10h
	
	        
	mov ah, 02h
        mov dh, 24 ; dh - row
        mov dl, 00h  ; dl - coulumn
        mov bh, 00h
        int 10h		

		
	mov ah, 09h
        lea dx, map1
        int 21h  
	
							
	ret

clear101 endp
end clear101

;__________________________________________________________________________________________



;__________________________________________________________________________________________

level1 proc near
	
    mov ah, 0fh
    int 10h

    mov mode, al
    mov ah, 00h
    mov al, 03
    int 10h
	

ei:
		call hide_cur			  

        call clear101
       	call red_block_print               ; HORIZONTAL
	
	call first_block_print             ; VERTICAL
	call second_block_print            ; VERTICAL
	call third_block_print             ; VERTICAL
 	call fourth_block_print            ; VERTICAL
 	call fifth_block_print             ; VERTICAL

	call sixth_block_print             ; HORIZONTAL


t1:	
        mov ah, 07h      
        int 21h
		
	cmp al, '0'
    	if e jmp hey
		
	cmp al, '1'
	if e jmp hey1

	cmp al, '2'
	if e jmp hey2
	
	cmp al, '3'
	if e jmp hey3	

	cmp al, '4'
	if e jmp hey4
	
	cmp al, '5'
	if e jmp hey5
	
	
	cmp al, '6'
	if e jmp hey6

	if ne jmp ei

     


;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


hey:		
			call hide_cur			  

		add col1, 1

		mov ah, 02h
         	mov bh, 00h
        	mov dh, 11         ;  row
     		mov dl, col1       ;  column
        	int 10h	
	
		mov ah, 08h
		mov bh, 00h	
		int 10h

		sub col1, 1

		cmp ah, 04h
		if ne jmp t111
		
		add col1, 13
		mov ah, 02h
         	mov bh, 00h
        	mov dh, 11         ;  row
     		mov dl, col1       ;  column
        	int 10h	

		sub col1, 13

		
		mov ah, 08h
		mov bh, 00h	
		int 10h
	
		cmp ah,  04h
		if ne jmp t11
	     			
		mov ah, 08h
		mov bh, 00h	
		int 10h
	
		cmp al,  219
		if e jmp call_cong1

		
		if ne jmp backagain


t111:
	
		
		add col1, 13
		mov ah, 02h
         	mov bh, 00h
        	mov dh, 11         ;  row
     		mov dl, col1       ;  column
        	int 10h	

		sub col1, 13

		mov ah, 08h
		mov bh, 00h	
		int 10h
	
		cmp al,  219
		if e jmp call_cong2		
	
	 	jmp a3


call_cong1:
 		jmp fin ; so that you can move to left

backagain:
		call red_block_move ; call to move the red block

call_cong2:
		mov ah, 07
		int 21h		

		cmp al, 'D'
    		if e jmp call_cong3
    		cmp al, 'd'
    		if e jmp call_cong3
    		jmp ei 
    
call_cong3:
		call congrats

t11:		  
    jmp a5


;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    

hey1:
	call hide_cur			  

	
	sub col2, 7
	mov ah, 02h
        mov bh, 00h
        mov dh, col2       	;
        mov dl, 37      	; 
        int 10h	
	add col2, 7

	mov ah, 08h
	mov bh, 00h	
	int 10h
			
	cmp ah,  04h


	if ne jmp fin22
	if e jmp backagain1


backagain1:		
	call first_block_move
	

;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


hey2:
	call hide_cur			  

	
	sub col3, 7
	mov ah, 02h
        mov bh, 00h
        mov dh, col3       	;
        mov dl, 32      	; 
        int 10h	
	add col3, 7

	mov ah, 08h
	mov bh, 00h	
	int 10h
	
	cmp ah,  04h
	if ne jmp fin11
	if e jmp backagain13


backagain13:		
	call second_block_move


;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


hey3:
	
	call hide_cur			  

	sub col4, 7

	mov ah, 02h
        mov bh, 00h
        mov dh, col4       	
        mov dl, 29      	 
        int 10h	

	add col4, 7

	mov ah, 08h
	mov bh, 00h	
	int 10h

	
	cmp ah,  04h

	if ne jmp fin1
	if e jmp backagain14



backagain14:		

	call third_block_move


;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

hey4:

	call hide_cur			  

	sub col5, 6
	mov ah, 02h
        mov bh, 00h
        mov dh, col5       	
        mov dl, 29      	 
        int 10h	
	add col5, 6

	mov ah, 08h
	mov bh, 00h	
	int 10h
	cmp ah,  04h
	

	if ne jmp fin112
		


	add col5, 3
	mov ah, 02h
        mov bh, 00h
        mov dh, col5       	
        mov dl, 29      	
        int 10h	
	sub col5, 3

	mov ah, 08h
	mov bh, 00h	
	int 10h

	cmp ah, 04h
	if ne jmp fin2

	if e jmp backagain15



backagain15:		
	call fourth_block_move


;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>




hey5:
	call hide_cur			  
	
	sub col6, 6

	mov ah, 02h
        mov bh, 00h
        mov dh, col6       	;
        mov dl, 37      	; 
        int 10h	

	add col6, 6

	mov ah, 08h
	mov bh, 00h	
	int 10h
		
	cmp ah, 04h

	if ne jmp fin113
	
	
	
	add col6, 3
	mov ah, 02h
        mov bh, 00h
        mov dh, col6       	
        mov dl, 37      	
        int 10h	
	sub col6, 3

	mov ah, 08h
	mov bh, 00h	
	int 10h
	
	cmp ah, 04h
	if ne jmp fin6

	if e jmp backagain16


backagain16:		
	call fifth_block_move


;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


hey6:
	call hide_cur			  
	     	
	 	add col7, 13

		mov ah, 02h
         	mov bh, 00h
        	mov dh, 06         ;  row
     		mov dl, col7       ;  column
        	int 10h	

		sub col7, 13

		mov ah, 08h
		mov bh, 00h	
		int 10h
	
		cmp ah,  04h
		if ne jmp t12


		add col7, 1
		mov ah, 02h
         	mov bh, 00h
        	mov dh, 06         ;  row
     		mov dl, col7       ;  column
        	int 10h	
	
		mov ah, 08h
		mov bh, 00h	
		int 10h


		sub col7, 1

		cmp ah, 04h
		if ne jmp t13


		if e jmp backagain17
	


backagain17:		
	call sixth_block_move

t12:		         		  ; dili nimo pa incremeton
    jmp fin7 

t13:   	
	jmp a57                                 ; dili nimo pa decrementon
;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>




level1 endp
end level1
	  

;__________________________________________________________________________________________






; RED BLOCK # 0
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

;__________________________________________________________________________________________


red_block_print proc near


;******************************************************************************************

         mov ah,06h
         mov al,00h
         mov bh,40h   ;  color red
         mov ch,0ah   ;  row
         mov cl,rnum1 ;  column 
         mov dh,0ch   ;  row
         mov dl,rnum2 ;  column
         int 10h

;******************************************************************************************


	add col1, 6
        mov ah, 02h
        mov bh, 00h
        mov dh, 11         ;  row
        mov dl, col1       ;  column
        int 10h	
	dec col1, 6
		
        mov ah, 09h
        lea dx, string1
        int 21h

;******************************************************************************************


 ret
 red_block_print endp
 end red_block_print

;__________________________________________________________________________________________



;__________________________________________________________________________________________




red_block_move proc near
 
;******************************************************************************************
          

        mov ah, 07h
        int 21h

;******************************************************************************************

        cmp rnum1, 11
        if e jmp a3

	jmp a2

;******************************************************************************************

fin:
    mov ah, 07h                  ; finish line to congrats
    int 21h
	
    cmp al, 'A'
    if e jmp dec_col
    cmp al, 'a'
    if e jmp dec_col
	
    cmp al, 'D'
    if e jmp call_cong
    cmp al, 'd'
    if e jmp call_cong
    jmp ei 
    	    

call_cong:
     call congrats
	

;******************************************************************************************


a5:                              ; dili pa moveright
        mov ah, 07h
        int 21h
	
	cmp al, 'A'
        if e jmp dec_col
  	cmp al, 'a'
 	if e jmp dec_col
        jmp a51

;******************************************************************************************

	
a51:
	cmp al, 'q'
 	if e jmp stop1
 	cmp al, 'Q'
	if e jmp stop1	
        jmp t1

;******************************************************************************************
 
a2: 
 	cmp al, 'A'
        if e jmp dec_col
 	cmp al, 'a'
 	if e jmp dec_col
	


a3:
				
		
	cmp al, 'd'
        if e jmp inc_col ;
        cmp al, 'D'
  	if e jmp inc_col ;		
        jmp a4
	
	
a4:
	cmp al, 'q'
 	if e jmp stop1
 	cmp al, 'Q'
	if e jmp stop1	
    	jmp ei
	
;******************************************************************************************


inc_col:

	add col1, 5
    	add rnum2, 5 
        add rnum1, 5
	
   
	jmp ei

;******************************************************************************************


dec_col:
	sub col1, 5
        sub rnum2, 5		
    	sub rnum1, 5
	
	jmp ei

;******************************************************************************************


stop1:
 call stop


;******************************************************************************************


 ret
 red_block_move endp
 end red_block_move

;__________________________________________________________________________________________


;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




; FIRST BLOCK # 1
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

;__________________________________________________________________________________________



first_block_print  proc  near

;******************************************************************************************
		
	mov ah,06h
        mov al,00h
        mov bh,10h  ; 6 - yellow color ni, black and yellow 
        mov ch,fnum1  ; ma usob num3 = 03h starting
        mov cl,24h 
        mov dh,fnum2  ; ma usob num4 = 0ah starting
        mov dl,28h  
        int 10h

;******************************************************************************************
	
	sub col2, 1
	mov ah, 02h
        mov bh, 00h
        mov dh, col2       	;
        mov dl, 37      	; 
        int 10h	
	add col2, 1


        mov ah, 09h
        lea dx, string2
        int 21h
	
	add col2, 4
	mov ah, 02h
        mov bh, 00h
        mov dh, col2	       ;  
        mov dl, 37             ;  
        int 10h	
	sub col2, 4


 ret

 first_block_print endp
 end first_block_print

;__________________________________________________________________________________________



;__________________________________________________________________________________________


first_block_move proc near
 
        
;******************************************************************************************

	
 mov ah, 07h  ; nangayug keyboard
 int 21h

 cmp fnum1, 04 
 if e jmp a32

 cmp fnum2, 21
 if e jmp a221
 jmp a22



;******************************************************************************************

fin22:
 cmp fnum2, 21
 if e jmp a221
  
 	
    mov ah, 07h
    int 21h
	
    cmp al, 'S'
    if e jmp inc_col2
    cmp al, 's'
    if e jmp inc_col2
    if ne jmp a42

;******************************************************************************************

a22:  

	cmp al, 'w'
   	if e jmp dec_col2
 	cmp al, 'W'
 	if e jmp dec_col2


a32:        
        cmp al, 's'
	if e jmp inc_col2
        cmp al, 'S' 
        if e jmp inc_col2
	if ne jmp a42

;******************************************************************************************

a221: 		
	

	cmp al, 'w'
        if e jmp dec_col2
 	cmp al, 'W'
	if e jmp dec_col2
        if ne jmp a42
	

;******************************************************************************************
	

a42:
	cmp al, 'q'
 	if e jmp stop2
 	cmp al, 'Q'
	if e jmp stop2
        if ne jmp eo3   


;******************************************************************************************
     

	inc_col2:
         add col2, 3
         add fnum1, 3
         add fnum2, 3
     	 jmp eo3

;******************************************************************************************

	dec_col2:
	 sub col2, 3
         sub fnum1, 3
         sub fnum2, 3
	 jmp eo3 


;******************************************************************************************


eo3:
 jmp ei      ; LOOP AGAIN

stop2:
 call stop   ; STOP IT


;******************************************************************************************

  
 ret
 first_block_move endp
 end first_block move


;__________________________________________________________________________________________


;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%






; SECOND BLOCK # 2
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

;__________________________________________________________________________________________




second_block_print  proc  near
	
;******************************************************************************************
	
	mov ah,06h
        mov al,00h
        mov bh,20h  ; 6 - yellow color ni, black and yellow 
        mov ch,snum1  ; ma usob num3 = 03h starting
        mov cl,1fh 
        mov dh,snum2  ; ma usob num4 = 0ah starting
        mov dl,23h  
        int 10h

;******************************************************************************************
	
	sub col3, 1
	mov ah, 02h
        mov bh, 00h
        mov dh, col3       	;
        mov dl, 32      	; 
        int 10h	
	add col3, 1


        mov ah, 09h
        lea dx, string3
        int 21h
	
	add col3, 4
	mov ah, 02h
        mov bh, 00h
        mov dh, col3	       ;  
        mov dl, 32             ;  
        int 10h	
	sub col3, 4


;******************************************************************************************

 ret

 second_block_print endp
 end second_block_print


;__________________________________________________________________________________________



;__________________________________________________________________________________________


second_block_move proc near
 
        
;******************************************************************************************

	
 mov ah, 07h  ; nangayug keyboard
 int 21h

;******************************************************************************************

 cmp snum1, 04 
 if e jmp a323

 cmp snum2, 21
 if e jmp a2213
 jmp a223

fin11:
    mov ah, 07h
    int 21h
	
    cmp al, 'S'
    if e jmp inc_col3
    cmp al, 's'
    if e jmp inc_col3
    if ne jmp a423

;******************************************************************************************


a223:  

	cmp al, 'w'
   	if e jmp dec_col3
 	cmp al, 'W'
 	if e jmp dec_col3


a323:        
        cmp al, 's'
	if e jmp inc_col3
        cmp al, 'S' 
        if e jmp inc_col3
	if ne jmp a423

;******************************************************************************************

a2213: 		
	
	cmp al, 'w'
        if e jmp dec_col3
 	cmp al, 'W'
	if e jmp dec_col3
        if ne jmp a423
	
a423:
	cmp al, 'q'
 	if e jmp stop3
 	cmp al, 'Q'
	if e jmp stop3
        if ne jmp eo4   

     
;******************************************************************************************


	inc_col3:
         add col3, 3
         add snum1, 3
         add snum2, 3
     	 jmp eo4

;******************************************************************************************

	dec_col3:
	 sub col3, 3
         sub snum1, 3
         sub snum2, 3
	 jmp eo4 

;******************************************************************************************

eo4:
 jmp ei


;******************************************************************************************

stop3:
 call stop


;******************************************************************************************
 
 
 ret
 second_block_move endp
 end second_block move


;__________________________________________________________________________________________


;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




; THIRD BLOCK # 3
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

;__________________________________________________________________________________________


third_block_print  proc  near

;******************************************************************************************
 		
	mov ah,06h
        mov al,00h
        mov bh,30h  ; 6 - yellow color ni, black and yellow 
        mov ch,tnum1  ; ma usob num3 = 03h starting
        mov cl,26 
        mov dh,tnum2  ; ma usob num4 = 0ah starting
        mov dl,30  
        int 10h

;******************************************************************************************
	
	sub col4, 1
	mov ah, 02h
        mov bh, 00h
        mov dh, col4       	;
        mov dl, 27      	; 
        int 10h	
	add col4, 1

        mov ah, 09h
        lea dx, string4
        int 21h
	
	add col4, 4
	mov ah, 02h
        mov bh, 00h
        mov dh, col4	       ;  
        mov dl, 29             ;  
        int 10h	
	sub col4, 4

;******************************************************************************************

 ret

 third_block_print endp
 end third_block_print

;__________________________________________________________________________________________



;__________________________________________________________________________________________


third_block_move proc near
 

;******************************************************************************************

	
 mov ah, 07h  ; nangayug keyboard
 int 21h

;******************************************************************************************

 cmp tnum1, 04 
 if e jmp a324

 cmp tnum2, 21
 if e jmp a2214

 jmp a224
	


;******************************************************************************************

fin1:

    cmp tnum2, 21
    if e jmp a2214


    mov ah, 07h
    int 21h
	
    cmp al, 'S'
    if e jmp inc_col4
    cmp al, 's'
    if e jmp inc_col4

    if ne jmp a424

;******************************************************************************************

a224:  

	cmp al, 'w'
   	if e jmp dec_col4
 	cmp al, 'W'
 	if e jmp dec_col4


a324:        
        cmp al, 's'
	if e jmp inc_col4
        cmp al, 'S' 
        if e jmp inc_col4
	if ne jmp a423

;******************************************************************************************

a2214: 		
	
	cmp al, 'w'
        if e jmp dec_col4
 	cmp al, 'W'
	if e jmp dec_col4
        if ne jmp a424		

a424:
	cmp al, 'q'
 	if e jmp stop4
 	cmp al, 'Q'
	if e jmp stop4
        if ne jmp eo5   

;******************************************************************************************

	inc_col4:
         add col4, 3
         add tnum1, 3
         add tnum2, 3
     	 jmp eo5

;******************************************************************************************

	dec_col4:
	 sub col4, 3
         sub tnum1, 3
         sub tnum2, 3
	 jmp eo5

;******************************************************************************************

eo5:
 jmp ei

;******************************************************************************************

stop4:
 call stop

;******************************************************************************************
 
 
 ret
 third_block_move endp
 end third_block move


;__________________________________________________________________________________________


;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%







; FOURTH BLOCK # 4
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

;__________________________________________________________________________________________



fourth_block_print  proc  near


;******************************************************************************************
	
	mov ah,06h
        mov al,00h
        mov bh,50h  ; 6 - yellow color ni, black and yellow 
        mov ch,frnum1  ; ma usob num3 = 03h starting
        mov cl,26 
        mov dh,frnum2  ; ma usob num4 = 0ah starting
        mov dl,30  
        int 10h

;******************************************************************************************
	
	sub col5, 1
	mov ah, 02h
        mov bh, 00h
        mov dh, col5       	;
        mov dl, 27      	; 
        int 10h	
	add col5, 1

        mov ah, 09h
        lea dx, string5
        int 21h
	
	add col5, 3
	mov ah, 02h
        mov bh, 00h
        mov dh, col5	       ;  
        mov dl, 29             ;  
        int 10h	
	sub col5, 3

;******************************************************************************************

 ret
 fourth_block_print endp
 end fourth_block_print


;__________________________________________________________________________________________


;__________________________________________________________________________________________


fourth_block_move proc near
 
        
;******************************************************************************************

	
 mov ah, 07h  ; nangayug keyboard
 int 21h


;******************************************************************************************

 cmp frnum1, 04 
 if e jmp a325

 cmp frnum2, 21
 if e jmp a2215
 jmp a225


;******************************************************************************************

fin2:
    
    mov ah, 07h
    int 21h	

    cmp frnum1, 04 
    if e jmp ei
    
    cmp al, 'W'
    if e jmp dec_col5
    cmp al, 'w'
    if e jmp dec_col5
    jmp a425




fin112:

	add col5, 3
	mov ah, 02h
        mov bh, 00h
        mov dh, col5       	
        mov dl, 29      	
        int 10h	
	sub col5, 3

	mov ah, 08h
	mov bh, 00h	
	int 10h
	
	cmp ah, 06h
	if ne jmp ei


	mov ah, 07h
        int 21h	
 
  	cmp al, 'S'
    	if e jmp inc_col5
    	cmp al, 's'
 	if e jmp inc_col5
    	jmp a425
		
 
;******************************************************************************************

	
a225:  

	cmp al, 'w'
   	if e jmp dec_col5
 	cmp al, 'W'
 	if e jmp dec_col5


a325:        
        cmp al, 's'
	if e jmp inc_col5
        cmp al, 'S' 
        if e jmp inc_col5
	if ne jmp a425


;******************************************************************************************

a2215: 		
	

	cmp al, 'w'
        if e jmp dec_col5
 	cmp al, 'W'
	if e jmp dec_col5
        if ne jmp a425
	

;******************************************************************************************
	

a425:
	cmp al, 'q'
 	if e jmp stop5
 	cmp al, 'Q'
	if e jmp stop5
        if ne jmp eo51 

     
;******************************************************************************************


	inc_col5:
         add col5, 3
         add frnum1, 3
         add frnum2, 3
     	 jmp eo51

;******************************************************************************************

	dec_col5:
	 sub col5, 3
         sub frnum1, 3
         sub frnum2, 3
	 jmp eo51 

;******************************************************************************************


eo51:
 jmp ei

;******************************************************************************************

stop5:
 call stop

;******************************************************************************************
 
 
 ret
 fourth_block_move endp
 end fourth_block_move


;__________________________________________________________________________________________


;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


; FIFTH BLOCK # 5
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

;__________________________________________________________________________________________



fifth_block_print  proc  near
	
	mov ah,06h
        mov al,00h
        mov bh,60h  ; 6 - yellow color ni, black and yellow 
        mov ch,finum1  ; ma usob num3 = 03h starting
        mov cl,36 
        mov dh,finum2  ; ma usob num4 = 0ah starting
        mov dl,40  
        int 10h

;******************************************************************************************
	
	sub col6, 1
	mov ah, 02h
        mov bh, 00h
        mov dh, col6       	;
        mov dl, 37      	; 
        int 10h	
	add col6, 1

        mov ah, 09h
        lea dx, string6
        int 21h
	
	add col6, 3
	mov ah, 02h
        mov bh, 00h
        mov dh, col6	       ;  
        mov dl, 37             ;  
        int 10h	
	sub col6, 3

;******************************************************************************************

 ret
 fifth_block_print endp
 end fifth_block_print

;__________________________________________________________________________________________



;__________________________________________________________________________________________




fifth_block_move proc near
 
        
;******************************************************************************************

	
 mov ah, 07h  ; nangayug keyboard
 int 21h

;******************************************************************************************

 cmp finum1, 04 
 if e jmp a326

 cmp finum2, 21
 if e jmp a2216
 jmp a226

;******************************************************************************************



fin113:

	add col6, 3
	mov ah, 02h
        mov bh, 00h
        mov dh, col6       	
        mov dl, 37      	
        int 10h	
	sub col6, 3

	mov ah, 08h
	mov bh, 00h	
	int 10h
	
	cmp ah, 06h
	if ne jmp ei

	mov ah, 07h
        int 21h	
 
  	cmp al, 'S'
    	if e jmp inc_col6
    	cmp al, 's'
 	if e jmp inc_col6
    	jmp a426



fin6:
    cmp finum1, 04 
     if e jmp ei
	
	
    mov ah, 07h
    int 21h
	
    cmp al, 'W'
    if e jmp dec_col6
    cmp al, 'w'
    if e jmp dec_col6

    if ne jmp a426
   
	
;******************************************************************************************

a226:  

	cmp al, 'w'
   	if e jmp dec_col6
 	cmp al, 'W'
 	if e jmp dec_col6


a326:        
        cmp al, 's'
	if e jmp inc_col6
        cmp al, 'S' 
        if e jmp inc_col6
	if ne jmp a426

a2216: 		
	

	cmp al, 'w'
        if e jmp dec_col6
 	cmp al, 'W'
	if e jmp dec_col6
        if ne jmp a426

	

a426:
	cmp al, 'q'
 	if e jmp stop6
 	cmp al, 'Q'
	if e jmp stop6
        if ne jmp eo6

     
;******************************************************************************************


	inc_col6:
         add col6, 3
         add finum1, 3
         add finum2, 3
     	 jmp eo6

;******************************************************************************************

	dec_col6:
	 sub col6, 3
         sub finum1, 3
         sub finum2, 3
	 jmp eo6 

;******************************************************************************************


eo6:
 jmp ei


;******************************************************************************************

stop6:
 call stop

;******************************************************************************************
 
 
 ret
 fifth_block_move endp
 end fifth_block_move


;__________________________________________________________________________________________


;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%





; SIXTH BLOCK # 6
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

;__________________________________________________________________________________________


sixth_block_print proc near


;******************************************************************************************

         mov ah,06h
         mov al,00h
         mov bh,70h   ;  color red
         mov ch,04   ;  row
         mov cl,sinum1 ;  column 
         mov dh,06   ;  row
         mov dl,sinum2 ;  column
         int 10h

;******************************************************************************************


	add col7, 6
        mov ah, 02h
        mov bh, 00h
        mov dh, 05         ;  row
        mov dl, col7       ;  column
        int 10h	
	dec col7, 6
		
        mov ah, 09h
        lea dx, string7
        int 21h

;******************************************************************************************


 ret
 sixth_block_print endp
 end sixth_block_print

;__________________________________________________________________________________________

;__________________________________________________________________________________________


sixth_block_move proc near
 
;******************************************************************************************
          

        mov ah, 07h
        int 21h

;******************************************************************************************

        cmp sinum1, 11
        jE a37

	cmp sinum2, 40
        je a57

	jmp a27


fin7:
    mov ah, 07h                  ; finish line to congrats
    int 21h
	
    cmp al, 'A'
    if e jmp dec_col7
    cmp al, 'a'
    if e jmp dec_col7
    jmp a517

	

;******************************************************************************************


a57:                              ; dili pa moveright
       
	
	cmp al, 'A'
        je dec_col7
  	cmp al, 'a'
 	je dec_col7
        jmp a51

;******************************************************************************************

	
a517:
	cmp al, 'q'
 	je stop7
 	cmp al, 'Q'
	je stop7	
        jmp t1

;******************************************************************************************
 
a27: 
 	cmp al, 'A'
        je dec_col7
 	cmp al, 'a'
 	je dec_col7


a37:        
	cmp al, 'd'
        je inc_col7 ;
        cmp al, 'D'
  	je inc_col7 ;; 		
        jmp a47
	
	
a47:
	cmp al, 'q'
 	if e jmp stop7
 	cmp al, 'Q'
	if e jmp stop7	
	jmp ei

;******************************************************************************************


inc_col7:

	add col7, 5
    	add sinum2, 5 
        add sinum1, 5
	   
	jmp ei

;******************************************************************************************


dec_col7:
	sub col7, 5
        sub sinum2, 5		
    	sub sinum1, 5
	
	jmp ei

;******************************************************************************************


stop7:
 call stop


;******************************************************************************************


 ret
 sixth_block_move endp
 end sixth_block_move

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
end help_cur
hide_cur endp

