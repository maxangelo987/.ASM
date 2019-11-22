~^
#ERROR messages will be removed if you leave these first two lines in     @@@@#
.model small
.code
org 100h

jmp main

you     db  "Hello" ,0dh,0ah,   "$"  
tube    db  "RNO  " , "$" 

main proc near

        mov ah , 09h
        lea bx , you
        int 21h

        mov ah , 09h
        lea bx , tube
        int 21h

        mov ah , 4c00h
~                     ^
#ERROR 30: Byte-Sized Constant Required                                   @@@@#
        int 21h
main  endp
end main


