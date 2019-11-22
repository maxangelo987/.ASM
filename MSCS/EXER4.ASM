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

msg4 db 'Enter integers: $'
even1 db 'Even: $'
odd1 db 'Odd: $'

space1 db '',0ah,0dh
       db '$'

word3 db 60 dup  ('$'),0ah,0dh     ; word3 will be now the will save

V1      DB      00H      ; even count
V2      DB      00H	 ; odd count


MAIN PROC NEAR


 mov bp, 0h

loop1:
        mov ah, 1	      	     ; SCANNING 
  	int 21h
	
	

	MOV CL,AL
        SUB CL,30H                   ; minus 48
	

	
  	mov word3[bp], al
  	inc bp
	mov word3[bp], ' '
	inc bp

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
	
	mov ah, 09h
	lea dx, space1
	int 21h   
	
	add v1, 1

	
	jmp loop1
odd:	
	mov ah, 09h
	lea dx, msg2
	int 21h

	mov ah, 09h
	lea dx, space1
	int 21h   
	

	add v2, 1

	jmp loop1
done:
	mov ah, 09h
	lea dx, space1
	int 21h   

	mov ah, 09h
	lea dx, msg4
	int 21h   
	
	mov ah, 09h
	lea dx, space1
	int 21h   


	mov ah, 09h
	lea dx, word3
	int 21h   
	
	mov ah, 09h
	lea dx, space1
	int 21h   

	mov ah, 09h
	lea dx, even1
	int 21h        

	MOV AH,02H
        MOV DL,v1                  ;print even count
        ADD DL,30H
        INT 21H


	mov ah, 09h
	lea dx, space1
	int 21h   

	mov ah, 09h
	lea dx, odd1
	int 21h   

        MOV AH,02H
        MOV DL,v2                  ;print odd count
        ADD DL,30H
        INT 21H

        MOV AH,4CH
        INT 21H

MAIN ENDP
END MAIN
