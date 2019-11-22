
.model small
.code
org 100H
jmp main
;============
input db 'LASER-12 SYSTEM','$'
;============
main proc near
         LEA ax,input
         MOV di,ax
         MOV cx,15
                INC di

procedure:
	MOV al,41H
        CMP [di],al
        JAE nextproc
        JMP increment

;============
nextproc:
	MOV al,5AH
        CMP [di],al
        JBE nextproc2
        JMP increment

;============
nextproc2:
	MOV al, 20H
        XOR [di],al

;============
increment:
        
        INC di
        DEC cx
        JNZ procedure
	JMP exit

;============ 
exit:
        MOV ah,09h
        LEA dx,input
        int 21H

        MOV ax,4c00h
        int 21H
;===========


main endp
end main
