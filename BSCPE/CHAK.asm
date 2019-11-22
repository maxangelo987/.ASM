
.model small
.code
org 100h
jmp main

mode db ?
brdr1 db 78 dup(219),'$'
brdr2 db  1 dup(219),18 dup (32),1 dup(219),38 dup(32),1 dup(219),18 dup(32),1 dup(219),'$'
brdr3 db  1 dup(219),18 dup (32),40 dup(219),18 dup(32),1 dup(219),'$'


num_let db ?
midp db ?
midp1 db ?
base db ?
c_base db ?
kybd db 50 dup('$')
looper1 db ?
counter1 db ?
typed db ?
delaytime db ?

word1 db 'haxor','$'
word2 db 'qwerty','$'
word3 db 'asdfgh','$'
word4 db 'qwerty','$'
word5 db 'qwerty','$'
word6 db 'asdfgh','$'
word7 db 'qwerty','$'
word8 db 'asdfgh','$'
word9 db 'qwerty','$'
word10 db'asdfgh','$'
word11 db 'asdfgh','$'
word12 db 'qwerty','$'
word13 db 'asdfgh','$'
word14 db 'qwerty','$'
word15 db 'asdfgh','$'
word16 db 'qwerty','$'
word17 db 'asdfgh','$'
word18 db 'qwerty','$'
word19 db 'asdfgh','$'
word20 db 'qwerty','$'
word21 db 'asdfgh','$'
word22 db 'qwerty','$'
word23 db 'asdfgh','$'
word24 db 'qwerty','$'
word25 db 'asdfgh','$'
word26 db 'qwerty','$'
word27 db 'asdfgh','$'
word28 db 'qwerty','$'
word29 db 'asdfgh','$'
word30 db 'qwerty','$'
word31 db 'asdfgh','$'
word32 db 'qwerty','$'
word33 db 'asdfgh','$'
word34 db 'qwerty','$'
word35 db 'asdfgh','$'
word36 db 'qwerty','$'
word37 db 'asdfgh','$'
word38 db 'qwerty','$'
word39 db 'asdfgh','$'
word40 db 'qwerty','$'
word41 db 'asdfgh','$'
word42 db 'qwerty','$'
word43 db 'asdfgh','$'
word44 db 'qwerty','$'
word45 db 'asdfgh','$'
word46 db 'qwerty','$'
word47 db 'asdfgh','$'
word48 db 'qwerty','$'
word49 db 'asdfgh','$'
word50 db 'zxcvbn','$'



block1b db  '€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ ',0ah,0dh
        db  '€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ ',0ah,0dh
        db  '€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ ',0ah,0dh
        db  '€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ ',0ah,0dh
        db  '€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ ',0ah,0dh
        db  '€€€€€ ≤ ≤                                                              ≤ ≤ €€€ ',0ah,0dh
        db  '€€€€€                                                                      €€€ ',0ah,0dh
        db  '€€€€€     €   €  €     €       €€€€€€    €€€   €€   €€  €€€€€€  €€€€€€     €€€ ',0ah,0dh
        db  '€€€€€     €€ €€   € € €        €€       €€ €€  €€€ €€€  €       €€         €€€ ',0ah,0dh
        db  '€€€€€     € € €     €          €€ €€€€€ €€€€€  €€ € €€  €€€€    €€€€€€     €€€ ',0ah,0dh
        db  '€€€€€     €   €     €          €€   €€  €   €  €€   €€  €           €€     €€€ ',0ah,0dh
        db  '€€€€€                          €€€€€€€  €   €  €€   €€  €€€€€€  €€€€€€     €€€ ',0ah,0dh
        db  '€€€€€                                                                      €€€ ',0ah,0dh
        db  '€€€€€              €€ €€€€€ €€  €€€ €€€ €€€€ €€€  €   €  €€€€              €€€ ',0ah,0dh
        db  '€€€€€              €    €    €    €€€   €€€€  €   € € €  € €€€             €€€ ',0ah,0dh
        db  '€€€€€              €€   €   €€     €    €    €€€  €  €€  €€€€€             €€€ ',0ah,0dh
        db  '€€€€€                                                                      €€€ ',0ah,0dh
        db  '€€€€€       €€ €   € €€   €€   €€€€€     €€€€    €€ €€€€ €€ € € € €€€      €€€ ',0ah,0dh
        db  '€€€€€       €  €€ €€  €  €€€€     €€     €€==    €  €€==  €  €  €  €       €€€ ',0ah,0dh
        db  '€€€€€       €€ € € € €€ €    €    €€€€€  €€€€    €€ €€€€ €€ € € €  €       €€€ ',0ah,0dh 
        db  '€€€€€ ≤ ≤                                                              ≤ ≤ €€€ ',0ah,0dh 
        db  '€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ ',0ah,0dh                                                    
        db  '€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ ',0ah,0dh
        db  '€€€€€€€€€€€€€€€€€€€€€€€€€€€€€THE  CHOICE  IS  YOURS€€€€€€€€€€€€€€€€€€€€€€€€€ ',0ah,0dh
        db  '€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ ','$'
     

main proc near
begin:
        call clear
       
        call display
      
      
        
        
display: 
        mov ah,0fh
        int 10h

        mov mode,al
        mov ah,00h
        mov al,03h
        int 10h

        mov ax,0600h
        mov bh,03h
        mov ch,0
        mov cl,0
        mov dh,10
        mov dl,79
        int 10h

        mov ax,0600h
        mov bh,02h
        mov ch, 6
        mov cl,0
        mov dh,12
        mov dl,79
        int 10h

        mov ax,0600h
        mov bh,05h
        mov ch,13
        mov cl,0
        mov dh,16
        mov dl,79
        int 10h

        mov ax,0600h
        mov bh,06h
        mov ch,17
        mov cl,0
        mov dh,20
        mov dl,45
        int 10h

        mov ax,0600h
        mov bh,01h
        mov ch,17
        mov cl,45
        mov dh,20
        mov dl,79
        int 10h

        mov ax,0600h
        mov bh,03h
        mov ch,21
        mov cl,0
        mov dh,24
        mov dl,79
        int 10h

        mov ax,0600h
        mov bh,00h
        mov ch,0
        mov cl,0
        mov dh,24
        mov dl,2
        int 10h

        mov ax,0600h
        mov bh,00h
        mov ch,0
        mov cl,77
        mov dh,24
        mov dl,79
        int 10h

        mov ah,09h
        lea dx,block1b
        int 21h


        mov ah,07h
        int 21h
        

        cmp al,'t'
        if e jmp typing
        cmp al,'T'
        if e jmp typing
        cmp al,'m'
        if e jmp maze
        cmp al,'M'
        if e jmp maze
        cmp al,'e'
        if e jmp exit
        cmp al,'E'
        if e jmp exit

typing:
       mov ah,0fh
       int 10h

       mov mode,al
       mov ah,00h
       mov al,03h
       int 10h

       mov ax,0600h
       mov bh,04h
       mov ch,0
       mov cl,1
       mov dh,3
       mov dl,79
       int 10h

       mov ax,0600h
       mov bh,02h
       mov ch,16
       mov cl,0
       mov dh,24
       mov dl,79
       int 10h

       mov ax,0600h
       mov bh,05h
       mov ch,3
       mov cl,3
       mov dh,15
       mov dl,4
       int 10h

       mov ax,0600h
       mov bh,05h
       mov ch,3
       mov cl,75
       mov dh,15
       mov dl,76
       int 10h

       mov ax,0600h
       mov bh,00h
       mov ch,0
       mov cl,0
       mov dh,25
       mov dl,0
       int 10h

       mov ah,09h
       lea dx,block1
       int 21h

       mov ah,07h
       int 21h

       cmp al,'e'
       if e jmp display
       cmp al,'E'
       if e jmp display
       cmp al,'h'
       if e jmp help1a
       cmp al,'H'
       if e jmp help1a
       cmp al,'p'
       if e jmp play1
       cmp al,'P'
       if e jmp play1

help1a:
        mov ah,0fh
        int 10h

        mov mode,al
        mov ah,00h
        mov al,03h
        int 10h

        mov ax,0600h
        mov bh,03h
        mov ch,0
        mov cl,0
        mov dh,27
        mov dl,79
        int 10h

        mov ah,09h
        lea dx,help1
        int 21h
        mov ah,07h
        int 21h
        jmp typing
play1:
       mov ah,0fh
       int 10h

       mov mode,al
       mov ah,00h
       mov al,03h
       int 10h

       mov ax,0600h
       mov bh,03h
       mov ch,0
       mov cl,0
       mov dh,27
       mov dl,79
       int 10h

       mov ah,09h
       lea dx,intro1
       int 21h

       mov ah,07h
       int 21h

       cmp al,'e'
       if e jmp display
       cmp al,'E'
       if e jmp display
       
maze:
       mov ah,0fh
       int 10h

       mov mode,al
       mov ah,00h
       mov al,03h
       int 10h

       mov ax,0600h
       mov bh,00h
       mov ch,0
       mov cl,0
       mov dh,25
       mov dl,0
       int 10h
       
       mov ax,0600h
       mov bh,09h
       mov ch,0
       mov cl,1
       mov dh,25
       mov dl,5
       int 10h

       mov ax,0600h
       mov bh,02h
       mov ch,0
       mov cl,1
       mov dh,2
       mov dl,73
       int 10h

       mov ax,0600h
       mov bh,09h
       mov ch,19
       mov cl,3
       mov dh,25
       mov dl,73
       int 10h

       mov ax,0600h
       mov bh,02h
       mov ch,0
       mov cl,74
       mov dh,25
       mov dl,79
       int 10h

       mov ah,09h
       lea dx,block2
       int 21h

       mov ah,07h
       int 21h

       cmp al,'e'
       if e jmp display
       cmp al,'E'
       if e jmp display
       cmp al,'h'
       if e jmp help2a
       cmp al,'H'
       if e jmp help2a
       cmp al,'s'
       if e jmp play2
       cmp al,'S'
       if e jmp play2

help2a:
       mov ah,0fh
       int 10h
       mov mode,al
       mov ah,00h
       mov al,03h
       int 10h

       mov ax,0600h
       mov bh,03h
       mov ch,0
       mov cl,0
       mov dh,27
       mov dl,79

       int 10h
       mov ah,09h
       lea dx,help2
       int 21h

       mov ah,07h
       int 21h
       jmp maze
play2:
       mov ah,0fh
       int 10h

       mov mode,al
       mov ah,00h
       mov al,03h
       int 10h

       mov ax,0600h
       mov bh,03h
       mov ch,0
       mov cl,0
       mov dh,27
       mov dl,79
       int 10h

       mov ah,09h
       lea dx,intro2
       int 21h

       mov ah,07h
       int 21h
       cmp al,'l'
       if e jmp maze
       cmp al,'L'
       if e jmp maze
       
exit:
        call clear
        int 20h
clear proc near
	mov ax,03h
	int 10h	
	ret
clear endp

delay proc near
        mov cx,20000
   delay1:
        push cx
        mov cx,20000
   delay2:
        loop delay2
        pop cx
        loop delay1
        ret
delay endp

main endp


play endp
        




















        











       





                                                                       

block2  db  '≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤',0ah,0dh
        db  '≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤',0ah,0dh
        db  '≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤',0ah,0dh
        db  '≤≤≤≤≤≤                                                                    ≤≤≤≤≤',0ah,0dh
        db  '≤≤≤≤≤≤≤≤   €€€€       €€€€      €€€€     €€€€     €€€  €€€  €€€  € €€€  ≤≤≤≤≤≤≤',0ah,0dh
        db  '≤≤≤≤≤≤                                                                    ≤≤≤≤≤',0ah,0dh
        db  '≤≤≤≤≤≤≤≤  ≤≤   ≤≤     ≤≤≤     ≤≤≤≤≤≤≤≤  ≤≤≤≤≤≤≤                         ≤≤≤≤≤≤≤',0ah,0dh
        db  '≤≤≤≤≤≤    ≤≤≤ ≤≤≤    ≤ ≤ ≤         ≤≤≤  ≤≤                                ≤≤≤≤≤',0ah,0dh
        db  '≤≤≤≤≤≤≤≤  ≤≤≤≤≤≤≤   ≤≤≤≤≤≤≤      ≤≤≤    ≤≤≤≤≤                           ≤≤≤≤≤≤≤',0ah,0dh
        db  '≤≤≤≤≤≤    ≤≤ ≤ ≤≤  ≤≤     ≤≤  ≤≤≤       ≤≤       ≤≤ ≤≤  ≤≤  ≤≤ ≤ ≤  ≤≤    ≤≤≤≤≤',0ah,0dh
        db  '≤≤≤≤≤≤≤≤  ≤≤   ≤≤  ≤≤     ≤≤  ≤≤≤≤≤≤≤≤  ≤≤≤≤≤≤≤  ≤ ≤ ≤ ≤  ≤ ≤ ≤≤ ≤ ≤  ≤ ≤≤≤≤≤≤≤',0ah,0dh
        db  '≤≤≤≤≤≤                                                                    ≤≤≤≤≤',0ah,0dh
        db  '≤≤≤≤≤≤≤≤                                                                ≤≤≤≤≤≤≤',0ah,0dh 
        db  '≤≤≤≤≤≤     €€€€       €€€€      €€€€     €€€€     €€€  €€€  €€€  € €€€    ≤≤≤≤≤',0ah,0dh
        db  '≤≤≤≤≤≤≤≤                                                                ≤≤≤≤≤≤≤',0ah,0dh
        db  '≤≤≤≤≤≤                                                                    ≤≤≤≤≤',0ah,0dh
        db  '≤≤≤≤≤≤≤≤                                                                ≤≤≤≤≤≤≤',0ah,0dh
        db  '≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤',0ah,0dh
        db  '≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤',0ah,0dh
        db  '≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤[ENTER]--START≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤',0ah,0dh
        db  '≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤[  H  ]--HELP ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤',0ah,0dh
        db  '≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤[  E  ]--EXIT ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤',0ah,0dh
        db  '≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤',0ah,0dh                                                                                 
        db  '≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤THE≤≤CHOICE≤≤IS≤≤YOURS≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤',0ah,0dh
        db  '≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤','$'




block1  db  '€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€',0ah,0dh
        db  '  €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ ',0ah,0dh
        db  '   €€€            €€             €€           €€            €€            €€€ ',0ah,0dh
        db  '   €€                                                                      €€ ',0ah,0dh
        db  '   €€    €€€€€€€€  €€€   €€€  €€€ €€€   €€€€€€€   €€€   €€€  €€€€€€€€      €€ ',0ah,0dh
        db  '   €€      €€€€     €€€ €€€   €€€   €€    €€€     €€€€€ €€€  €€            €€ ',0ah,0dh
        db  '   €€      €€€€       €€€     €€€€€€€     €€€     €€€€€€€€€  €€€€€€€       €€ ',0ah,0dh
        db  '   €€      €€€€       €€€     €€€         €€€     €€€  €€€€  €€  €€€€      €€ ',0ah,0dh
        db  '   €€      €€€€       €€€     €€€       €€€€€€€   €€€   €€€  €€€€€€€       €€ ',0ah,0dh
        db  '   €€                                                                      €€ ',0ah,0dh
        db  '   €€      €€€€€     €€€€€    €€€€€      €€€€      €€  €€      €€€€€       €€ ',0ah,0dh
        db  '   €€        €         €        €       €€  €€     €€€ €€      €           €€ ',0ah,0dh
        db  '   €€        €         €        €       €€€€€€     €€€€€€      €€€€€       €€ ',0ah,0dh
        db  '   €€        €         €        €       €€  €€     €€ €€€         €€       €€ ',0ah,0dh
        db  '   €€        €       €€€€€      €       €€  €€     €€  €€      €€€€€       €€ ',0ah,0dh
        db  '   €€                                                                      €€ ',0ah,0dh
        db  '   €€        €€€         €€€        €€€         €€€         €€€            €€ ',0ah,0dh
        db  '   €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ ',0ah,0dh
        db  '  €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€PRESS:€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€',0ah,0dh
        db  '€€€€€€€€€€€[ENTER]--PLAY€€€€€€€€€€€€€[H]--HELP€€€€€€€€€€€€€[E]--EXIT€€€€€€€€€€€',0ah,0dh
        db  '€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€',0ah,0dh
        db  '€€€€€€€€€€€€€€€€€€€€€€€€€€€€ THE  CHOICE  IS  YOURS €€€€€€€€€€€€€€€€€€€€€€€€€',0ah,0dh
        db  '€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€',0ah,0dh
        db  '€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€',0ah,0dh
        db  '€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€','$'





map1    db  '≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ ',0ah,0dh
        db  '≤≤                                                        ≤         ≤ ≤≤ ',0ah,0dh
        db  '≤≤      ≤≤≤ ≤   ≤≤  ≤≤≤≤≤   ≤≤    ≤≤≤≤     ≤≤≤  ≤≤≤≤   ≤≤≤    ≤  ≤≤≤≤ ≤≤ ',0ah,0dh
        db  '≤≤      ≤≤≤  ≤≤   ≤ ≤≤   ≤≤≤   ≤≤   ≤≤≤≤≤  ≤    ≤≤≤≤   ≤≤≤≤≤    ≤     ≤≤ ',0ah,0dh
        db  '≤≤    ≤    ≤≤      ≤≤≤≤    ≤≤   ≤     ≤≤   ≤≤≤   ≤≤≤≤   ≤≤   ≤≤≤≤ ≤   ≤≤ ',0ah,0dh
        db  '≤≤   ≤≤≤                                      ≤≤≤     ≤≤≤             ≤≤ ',0ah,0dh
        db  '≤≤       ≤  ≤  ≤    ≤≤≤≤   ≤≤  ≤≤≤≤≤≤≤≤  ≤      ≤≤≤    ≤≤    ≤≤≤      ≤≤ ',0ah,0dh
        db  '≤≤  ≤ ≤≤  ≤  ≤≤≤≤≤   ≤≤≤≤≤  ≤≤≤   ≤      ≤≤≤≤≤    ≤≤   ≤  ≤≤≤≤≤   ≤≤  ≤≤ ',0ah,0dh
        db  '≤≤  ≤≤≤    ≤≤  ≤≤  ≤≤≤     ≤≤≤≤ ≤≤≤≤≤  ≤≤≤≤   ≤ ≤≤  ≤≤≤≤     ≤≤≤≤≤≤≤  ≤≤ ',0ah,0dh
        db  '≤≤  ≤≤≤≤ ≤        ≤≤≤≤≤      ≤≤≤≤    ≤   ≤≤ ≤    ≤ ≤≤≤   ≤≤≤  ≤    ≤  ≤≤ ',0ah,0dh
        db  '≤≤   ≤≤   ≤≤  ≤≤   ≤  ≤≤  ≤≤   ≤≤≤  ≤≤≤≤ ≤≤ ≤≤≤   ≤≤≤    ≤≤   ≤≤   ≤≤ ≤≤ ',0ah,0dh
        db  '≤≤  ≤   ≤≤≤    ≤      ≤≤   ≤≤≤≤≤    ≤     ≤ ≤   ≤≤≤  ≤≤≤     ≤≤  ≤   ≤≤≤ ',0ah,0dh
        db  '≤≤   ≤≤≤     ≤ ≤≤   ≤≤  ≤   ≤≤ ≤≤≤   ≤       ≤≤   ≤    ≤≤≤  ≤≤≤  ≤≤≤≤ ≤≤ ',0ah,0dh
        db  '≤≤  ≤≤≤≤  ≤≤ ≤  ≤   ≤≤≤  ≤≤ ≤≤≤   ≤≤  ≤ ≤  ≤≤  ≤≤   ≤≤≤    ≤  ≤  ≤≤   ≤≤ ',0ah,0dh
        db  '≤≤ ≤≤    ≤   ≤    ≤≤    ≤       ≤≤      ≤    ≤   ≤≤    ≤≤   ≤    ≤    ≤≤ ',0ah,0dh
        db  '≤≤   ≤ ≤≤    ≤  ≤≤≤   ≤≤  ≤≤  ≤≤   ≤≤≤≤    ≤  ≤≤  ≤ ≤≤    ≤   ≤ ≤ ≤   ≤≤ ',0ah,0dh
        db  '≤≤ ≤≤≤    ≤    ≤     ≤≤  ≤≤≤     ≤  ≤    ≤    ≤≤    ≤   ≤   ≤   ≤≤    ≤≤ ',0ah,0dh
        db  '≤≤           ≤ ≤≤  ≤ ≤  ≤    ≤≤ ≤≤≤    ≤≤  ≤≤  ≤      ≤≤≤≤    ≤   ≤≤  ≤≤ ',0ah,0dh
        db  '≤≤  ≤≤≤   ≤≤  ≤ ≤     ≤≤≤≤≤    ≤  ≤≤≤   ≤     ≤≤    ≤ ≤ ≤   ≤  ≤≤   ≤≤≤≤ ',0ah,0dh
        db  '≤≤                                                                    ≤≤ ',0ah,0dh
        db  '≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ ','$'


intro1  db  '≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤',0ah,0dh
        db  '                                                                            ',0ah,0dh
        db  '≤≤                                                                        ≤≤',0ah,0dh
        db  '                               TYPING TITANS                                ',0ah,0dh
        db  '≤≤                            (-INTRODUCTION-)                            ≤≤',0ah,0dh
        db  '                                                                            ',0ah,0dh
        db  '≤≤         WELCOME!MY NAME IS JIGSAW AND I WANT TO PLAY A GAME.RIGHT      ≤≤',0ah,0dh
        db  '         NOW,YOU ARE CURRENTLY AT THE ENTRANCE OF THE GAME THAT WILL        ',0ah,0dh
        db  '≤≤       DEFINITELY CHALLENGE YOUR SKILLS AS A HUMAN BEING.THIS TIME      ≤≤',0ah,0dh
        db  '         I WILL MEASURE YOUR SPEED IN TYPING OR YOUR TYPING SKILLS.         ',0ah,0dh
        db  '≤≤       AND HOW YOU REACT FROM ANY SITUATION WHERE YOUR LIFE IS IN       ≤≤',0ah,0dh
        db  '         THE LINE.BUT THIS WILL DEPEND ON YOUR OWN DECISION.WILL YOU        ',0ah,0dh
        db  '≤≤       CROSS THE LINE AND PLAY THIS GAME? THE CHOICE IS YOURS GOOD      ≤≤',0ah,0dh
        db  '         LUCK.                                                              ',0ah,0dh
        db  '≤≤                             €€€€€€€€€€€€€€€                            ≤≤',0ah,0dh
        db  '                               ≤             ≤                              ',0ah,0dh
        db  '≤≤                             ≤   ≤≤   ≤≤   ≤                            ≤≤',0ah,0dh
        db  '                               ≤      ≤      ≤                              ',0ah,0dh
        db  '≤≤             [P]-LAY           ≤         ≤          [E]-XIT             ≤≤',0ah,0dh
        db  '                                 ≤  ≤ ≤ ≤  ≤                     -SAW-      ',0ah,0dh       
        db  '≤≤                                                                        ≤≤',0ah,0dh
        db  '≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤','$'


intro2  db  '€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€',0ah,0dh
        db  '                                                                            ',0ah,0dh
        db  '€€€€                                                                    €€€€',0ah,0dh
        db  '                                  MAZE MANIA                                ',0ah,0dh
        db  '€€€€                            (INTRODUCTION)                          €€€€',0ah,0dh
        db  '                                                                            ',0ah,0dh
        db  '€€€€      WELCOME! MY NAME IS JIGSAW AND I WANT TO PLAY A GAME.THE      €€€€',0ah,0dh
        db  '         THING IN FRONT OF YOU IS THE DOOR THAT LEADS TO YOUR FINAL         ',0ah,0dh
        db  '€€€€     DESTINATION.AND I WILL TEST YOU WITH A GAME THAT DEALS WITH    €€€€',0ah,0dh
        db  '         CORRECT DECISION MAKING. WILL YOU SURVIVE THIS TEST OR ELSE        ',0ah,0dh
        db  '€€€€     REGRETS WILL BURN YOUR HEART AND YOUR MIND.DO YOU ACCEPT THE   €€€€',0ah,0dh
        db  '         CHALLENGE AND PLAY THE MAZE OF YOUR LIFE AND OBTAIN SUCCESS.       ',0ah,0dh
        db  '€€€€     THE  CHOICE  IS  YOURS. GOOD LUCK                              €€€€',0ah,0dh
        db  '                                                                            ',0ah,0dh
        db  '€€€€                                                                    €€€€',0ah,0dh
        db  '                                   ≤≤≤≤≤≤≤                                  ',0ah,0dh
        db  '€€€€                               ≤    ≤                              €€€€',0ah,0dh
        db  '                     [C]ONTINUE    ≤     ≤    [L]EAVE                       ',0ah,0dh
        db  '€€€€                               ≤≤≤≤≤≤≤                       -SAW-  €€€€',0ah,0dh
        db  '                                                                            ',0ah,0dh
        db  '€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€','$'
                                                          

help1   db  '€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€',0ah,0dh
        db  '                                                                            ',0ah,0dh
        db  '                             WELCOME TO TYPE TITANS                         ',0ah,0dh
        db  '                          -INSTRUCTIONS AND MECHANICS-                      ',0ah,0dh
        db  '                                                                            ',0ah,0dh
        db  '                                                                            ',0ah,0dh
        db  '                                                                            ',0ah,0dh
        db  '                                                                            ',0ah,0dh
        db  '                                                                            ',0ah,0dh
        db  '                                                                            ',0ah,0dh
        db  '                                                                            ',0ah,0dh
        db  '                                                                            ',0ah,0dh
        db  '                                                                            ',0ah,0dh
        db  '                                                                            ',0ah,0dh
        db  '€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€','$'


help2   db  '€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€',0ah,0dh
        db  '                                                                            ',0ah,0dh
        db  '                             WELCOME TO MAZE MANIA                          ',0ah,0dh
        db  '                         (INSTRUCTIONS AND MECHANICS)                       ',0ah,0dh
        db  '  1.TO MOVE CHARACTER UPWARD------------------------------------PRESS  [W]  ',0ah,0dh
        db  '  2.TO MOVE CHARACTER DOWNWARD----------------------------------PRESS  [S]  ',0ah,0dh
        db  '  3.TO MOVE CHARACTER LEFTSIDE----------------------------------PRESS  [A]  ',0ah,0dh
        db  '  4.TO MOVE CHARACTER RIGHTSIDE---------------------------------PRESS  [D]  ',0ah,0dh
        db  '                                                                            ',0ah,0dh
        db  '  MECHANICS:                                                                ',0ah,0dh
        db  '                                                                            ',0ah,0dh
        db  '                                                                            ',0ah,0dh
        db  '                                                                            ',0ah,0dh
        db  '                          PRESS ANY KEY TO CONTINUE..                       ',0ah,0dh
        db  '€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€','$'    
