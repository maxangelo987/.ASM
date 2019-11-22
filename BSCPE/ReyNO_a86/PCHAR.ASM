.model small
.code
org 100h
;===========
jmp main
;===========
input db 'LASER-12 SYSTEMS','$'
;===========
main proc near
;===========
        LEA ax,input    ;load data from input to ax
        MOV di,ax       ;indexing the data of ax
        MOV cx,15       ;given counter
        INC di          ;incrementing di
;===========
procedure:
        mov bl,41H
        cmp [di],bl
        JB skip
;===========
condition1:
        mov bl,5AH
        cmp [di],bl
        JA skip
;==========
condition2:
        mov bl,20H
        XOR [di],bl
;===========
skip:
        INC di
        LOOP procedure
;===========
end:
        MOV ah,09H
        LEA dx,input
        int 21H
;===========
        MOV ax,4c00H
        int 21H
;===========
main endp
end main
