; ASSEMBLY FOR ODD OR EVEN, when press zero stops
.model small
.code
org 100h
jmp main                     ; jump to main


plist1 label byte
maxlen db 59
actlen db ?
kybd db 60 dup ('$'),0ah,0dh

msg2 db 10,13, 'ODD$'
msg3 db 10,13, 'EVEN$'
MAIN PROC NEAR


loop1:
       mov ah, 1	      	     ; SCANNING 
  	int 21h

	
	MOV CL,AL
        SUB CL,30H                   ; minus 48
	
	cmp cl, 0
	je done
	
	mov ah, 0
check:
	mov dl, 2
	div dl
	cmp ah, 0
	jne odd
even:
	mov ah, 09h
	lea dx, msg3
	int 21h
	jmp loop1
odd:	
	mov ah, 09h
	lea dx, msg2
	int 21h

	jmp loop1
done:
        
        MOV AH,4CH
        INT 21H

MAIN ENDP
END MAIN
END MAIN