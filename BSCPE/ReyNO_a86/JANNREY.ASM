.model small
.code
org 100h
jmp main

string db "","$"

string1 db " ","$"

string2 db "press enter to continue...","$"

row db 02

col db 11

rm db ?

row1  db "             �   �������Ŀ   �������Ŀ   �������Ŀ   ���������",0dh,0ah,"$"
row2  db "             �   �   �   �   �       �           �   �        ",0dh,0ah,"$"
row3  db "             �   �   �   �   �������Ĵ   ���������   �������  ",0dh,0ah,"$"
row4  db "             �   �       �   �       �   �           �        ",0dh,0ah,"$"
row5  db "             �   �       �   �       �   ���������   ���������",0dh,0ah,"$"
row6  db "             �   ���������   �������Ŀ   �������Ŀ   ���������",0dh,0ah,"$"
row7  db "             �   �           �       �   �   �   �   �        ",0dh,0ah,"$"
row8  db "             �   �������Ŀ   �������Ĵ   �   �   �   �������  ",0dh,0ah,"$"
row9  db "             �   �       �   �       �   �       �   �        ",0dh,0ah,"$"
row10 db "             �   ���������   �       �   �       �   ���������",0dh,0ah,"$"

box db   "             ���������������������������������������������������Ŀ",0dh,0ah
    db   "             �                                                   �",0dh,0ah
    db   "             �                                                   �",0dh,0ah
    db   "             �                                                   �",0dh,0ah
    db   "             �                                                   �",0dh,0ah
    db   "             �                                                   �",0dh,0ah
    db   "             �                                                   �",0dh,0ah
    db   "             �                                                   �",0dh,0ah
    db   "             �                                                   �",0dh,0ah
    db   "             �                                                   �",0dh,0ah
    db   "             �                                                   �",0dh,0ah
    db   "             �                                                   �",0dh,0ah
    db   "             �                                                   �",0dh,0ah
    db   "             �                                                   �",0dh,0ah
    db   "             �                                                   �",0dh,0ah
    db   "             �                                                   �",0dh,0ah
    db   "             �                                                   �",0dh,0ah
    db   "             �����������������������������������������������������","$"

pl db "                     � ��Ŀ �         ��Ŀ  �     ��Ŀ  �  �",0dh,0ah
   db "                     � ���� �   ���   ����  �     ��Ĵ  ��Ĵ",0dh,0ah
   db "                     � �    �         �     ����  �  �  ����",0dh,0ah,"$"

he db "                     � �  � �         �  �  ����  �     ��Ŀ",0dh,0ah
   db "                     � ��Ĵ �   ���   ��Ĵ  ���   �     ����",0dh,0ah
   db "                     � �  � �         �  �  ����  ����  �   ",0dh,0ah,"$"

qu db "                     � ��Ŀ �         ��Ŀ  �  �  ���  �����",0dh,0ah
   db "                     � �  � �   ���   �  �  �  �   �     �  ",0dh,0ah
   db "                     � ���� �         ����  ����  ���    �  ",0dh,0ah,"$"

style db "                           ���Ŀ  ����  �Ŀ �  �  �",0dh,0ah
      db "                           � � �  ���   � � �  �  �",0dh,0ah
      db "                           �   �  ����  � ���  ����","$"


board1 db " ���������������������������������������������������������������������������Ŀ",0dh,0ah
       db " �           �                   �                   �       �               �",0dh,0ah
       db " �   ���������   �����   ���Ŀ   �������Ŀ   �����   �   �   �   �������Ŀ   �",0dh,0ah
       db " �                       �   �           �   �       �       �   �       �   �",0dh,0ah
       db " �����   �   �   �   ���Ĵ   �   ���������   ���������   �   �   �   ���Ĵ   �",0dh,0ah       
       db " �       �   �   �   �   �   �                               �   �       �   �",0dh,0ah
       db " �   �����   �   �   �   �   �   �   ���Ŀ   �������������   �   �   �����   �",0dh,0ah
       db " �   �       �           �   �   �   �   �   �               �   �   �       �",0dh,0ah
       db " �   �   �   �   ���������   �   �   �   �   �   �������������   �   �   �   �",0dh,0ah
       db " �   �   �   �                   �   �   �   �   �               �   �   �   �",0dh,0ah
       db " �   �   �   �   �����   �   ���������   �   �   �   �����������Ĵ   �   �   �",0dh,0ah
       db " �   �   �   �           �               �   �   �   �           �   �   �   �",0dh,0ah
       db " �   �   �   ���������   �   �������Ŀ   �   �   �   �   �   �   �   �   �   �",0dh,0ah
       db " �   �   �   �           �           �   �       �   �   �   �       �   �   �",0dh,0ah
       db " �   �����   �   ���������������������   ���������   �   �   ���Ŀ   �   �   �",0dh,0ah
       db " �   �       �   �                       �   �       �   �       �   �   �   �",0dh,0ah
       db " �   �   �   �   ���������   �������������   �   ���������   �   �����   ���Ĵ",0dh,0ah
       db " �   �       �   �           �               �               �   �       �   �",0dh,0ah
       db " �����   �����   �   ���������   �������Ŀ   �   �������Ŀ   �   �   �   �   �",0dh,0ah
       db " �               �   �                   �   �           �   �   �   �   �   �",0dh,0ah
       db " �   �����������Ĵ   ���������   ���������   �������������   �   �   �����   �",0dh,0ah
       db " �               �               �                           �   �            ",0dh,0ah
       db " �����������������������������������������������������������������������������","$"

main proc near

        mov bl,02

	call menu

        call board

     a10:   
        call eraser

        call move

        call draw
                                           
        call delay

        jmp a10
      
        call quit
                                                           
main endp
        end main

move proc near
        mov ah,0bh
        int 21h
        cmp al,00
        je moves
        
        mov ah,07h
        int 21h

        cmp al,'d'
        je a1
        cmp al,'a'
        je a2
        cmp al,'w'
        je a3
        cmp al,'s'
        je a4
        call quit

     a1:
        mov bl,01
        jmp moves

     a2:
        mov bl,02
        jmp moves

     a3:
        mov bl,03
        jmp moves

     a4:
        mov bl,04
        jmp moves

     moves:
        cmp bl,01
        je right
        cmp bl,02
        je left
        cmp bl,03
        je up
        cmp bl,04
        je down
        jmp a10
         
     right:
        inc col

        mov ah,02h
        mov dh,row
        mov dl,col
        int 10h

        mov ah,08h
        mov bh,00h
        int 10h

        dec col

        cmp al,' '
        je m_right

        call quit

     m_right:
        inc col
        ret

     left:      
        dec col

        mov ah,02h
        mov dh,row
        mov dl,col
        int 10h
      
        mov ah,08h
        mov bh,00h
        int 10h

        inc col

        cmp al,' '
        je m_left

        call quit

     m_left:
        dec col
        ret 
             
     up:
        dec row

        mov ah,02h
        mov dh,row
        mov dl,col
        int 10h
      
        mov ah,08h
        mov bh,00h
        int 10h

        inc row

        cmp al,' '
        je m_up

        call quit

    m_up:
        dec row
        ret

     down:
        inc row

        mov ah,02h
        mov dh,row
        mov dl,col
        int 10h
      
        mov ah,08h
        mov bh,00h
        int 10h

        dec row

        cmp al,' '
        je m_down

        call quit

     m_down:
        inc row
        ret
move endp

delay proc near
        mov cx,1000
      a10:

        push cx
        mov cx,65535
      a20:
        loop a20
        pop cx

        loop a10

        ret
delay endp

quit proc near
        call delay

        mov ah,02h
        mov bh,00h
        mov dh,23
        mov dl,00
        int 10h

        mov ax,4c00h
        int 21h

        ret
quit endp

eraser proc near
        mov ah,02h
        mov bh,00h
        mov dh,row
        mov dl,col
        int 10h

        mov ah,09h
        lea dx,string1
        int 21h

        ret
eraser endp

board proc near
        mov ah,06h
        mov al,00h
        mov ch,00
        mov cl,00
        mov dh,24
        mov dl,79
        mov bh,02h
        int 10h
         
        mov ah,02h
        mov dh,01
        mov dl,00
        mov bh,00h
        int 10h

        mov ah,09h
        lea dx,board1
        int 21h

        ret
board1 endp

draw proc near
        mov ah,06h
        mov al,00h
        mov ch,row
        mov cl,col
        mov dh,row
        mov dl,col
        mov bh,02h
        int 10h

        mov ah,02h
        mov dh,row
        mov dl,col
        mov bh,00h
        int 10h

        mov ah,09h
        lea dx,string
        int 21h

        mov ah,02h
        mov dh,row
        mov dl,col
        mov bh,00h
        int 10h

        ret
draw endp

menu proc near
	mov ah,06h
        mov al,00h
        mov bh,02h
        mov ch,00
        mov cl,00
        mov dh,24
        mov dl,79
        int 10h

        call delay_m

        mov rm,3
        call cursor_m

        mov ah,09h
        lea dx,box
        int 21h

	call delay_m

        mov rm,6
        call cursor_m

        mov ah,09h
        lea dx,row1
        int 21h

	call delay_m

        mov rm,7
        call cursor_m

        mov ah,09h
        lea dx,row2
        int 21h

	call delay_m

        mov rm,8
        call cursor_m

        mov ah,09h
        lea dx,row3
        int 21h

	call delay_m

        mov rm,9
        call cursor_m

        mov ah,09h
        lea dx,row4
        int 21h

	call delay_m

        mov rm,10
        call cursor_m

        mov ah,09h
        lea dx,row5
        int 21h

	call delay_m

        mov rm,13
        call cursor_m

        mov ah,09h
        lea dx,row6
        int 21h

	call delay_m

        mov rm,14
        call cursor_m

        mov ah,09h
        lea dx,row7
        int 21h

	call delay_m

        mov rm,15
        call cursor_m

        mov ah,09h
        lea dx,row8
        int 21h

	call delay_m

        mov rm,16
        call cursor_m

        mov ah,09h
        lea dx,row9
        int 21h

	call delay_m

        mov rm,17
        call cursor_m
             
        mov ah,09h
        lea dx,row10
        int 21h

	call delay_m

        mov ah,02h
        mov bh,00h
        mov dh,22
        mov dl,26
        int 10h

        mov ah,09h
        lea dx,string2
        int 21h

      c10:
        mov ah,07h
        int 21h
               
        cmp al,' '
        jne c10

        mov ah,06h
        mov al,00h
        mov bh,02h
        mov ch,00
        mov cl,00
        mov dh,24
        mov dl,79
        int 10h

        call delay_m

        mov rm,3
        call cursor_m

        mov ah,09h
        lea dx,style
        int 21h

	call delay_m

        mov rm,8
        call cursor_m

        mov ah,09h
        lea dx,pl
        int 21h

	call delay_m

        mov rm,12
        call cursor_m

        mov ah,09h
        lea dx,he
        int 21h

	call delay_m

        mov rm,16
        call cursor_m

        mov ah,09h
        lea dx,qu
        int 21h

	call delay_m

     b10: 
        mov ah,07h
        int 21h

        cmp al,"p"
        je b20
        cmp al,"P"
        je b20
        cmp al,'q'
        je b30
        cmp al,'Q'
        je b30
        jmp b10

     b20:
	ret
     b30:
        call quit
menu endp
	
cursor_m proc near
        mov ah,02h
        mov bh,00h
        mov dh,rm
        mov dl,00
        int 10h

        ret
cursor_m endp

delay_m proc near
        mov cx,3000
      a10:

        push cx
        mov cx,65535
      a20:
        loop a20
        pop cx

        loop a10

        ret
delay_m endp
        
        
        
        
        
        
