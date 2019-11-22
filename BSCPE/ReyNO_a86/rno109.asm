; Test if  the letter is in lower case or in upper case or the
; character is not a letter. 
           
.model small
.code

org 100h
jmp main

parlist label   byte

max     db       100
act     db       ?
inp     db      20 dup ('$')
out1    db      0ah,0dh,'Entered String is in Lower case.','$'
out2    db      0ah,0dh,'Entered String is in Upper case.','$'
out3    db      0ah,0dh,'Entered String is not a Letter.','$'        

  main proc near

        mov ah, 0ah      ; string input.
        lea dx, parlist
        int 21h

        lea di,inp      ; load ip to [di] 

        mov ah, [di]
        cmp ah, 41h
        ja a2
        je out_2
        jb out_3
     a2:
        cmp ah, 5ah
        jb out_2
        je out_2
        ja a3
     a3:
        cmp ah, 61h
        ja a4
        je out_1
        jb out_3
     a4:
        cmp ah,7ah
        jb out_1
        je out_1
        ja out_3

     out_1:
        mov ah, 09h
        lea dx, out1
        int 21h
        jmp exit101
     out_2:
        mov ah, 09h
        lea dx, out2
        int 21h
        jmp exit101
     out_3:
        mov ah, 09h
        lea dx, out3
        int 21h
        jmp exit101
     exit101:
        mov ax,4c00h
        int 21h

main endp
end main





