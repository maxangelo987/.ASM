.model small
.code
org 100h
jmp main
;-----------

spc     db      ' ','$'
ast     db      '*','$'

;-----------

main    proc    near


       MOV     ah,     02H
       MOV     dh,     0
       MOV     dl,     0
       INT     10H

        MOV     ch,     0
LOOP1:
       

        MOV     ah,     09H
        LEA     dx,     ast
        INT     21H
        MOV     ax,     0

        CALL    delay

        MOV     ah,     02H
        MOV     dh,     0
        MOV     cl,     ch
        SUB     cl,     1
        MOV     dl,     cl
        INT     10H

        MOV     ah,     09H
        LEA     dx,     spc
        INT     21H

          
        INC     ch
        CMP     ch,     75

        JNE     LOOP1

        MOV     ax,     4c00H
        INT     21H

        main    endp

delay proc

        PUSH    cx
        MOV     cx,     02FFH

        
DELAY1:
        PUSH    cx
        MOV     cx,     0FFFFH

DELAY2:

       ; NOP
        LOOP    DELAY2

        POP     cx
        LOOP    DELAY1

        POP     cx

        RET

        delay   endp
        

        end     main
