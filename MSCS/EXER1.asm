.MODEL SMALL
.STACK 100H
.DATA 
	STRING_1  DB  ' C E B U  I N S T I T U T E  O F  T E C H N O L O G Y$'
	STRING_2  DB  'C C S  6 1 3 / 6 3 5$'
	STRING_3  DB  'COMPUTER SYSTEM ORGANIZATION$'
	STRING_4  DB  'A S S E M B L Y   L A N G U A G E$'
	STRING_5  DB  'P R O G R A M M I N G$'
.CODE

MAIN PROC
	MOV AX,03H
	INT 10H


	MOV AH,0
	MOV AL,03H
	INT 10H

	MOV AH,07H
	MOV AL,00H
	MOV BH,02H
	MOV CH,0
	MOV CL,0
	MOV DH,4
	MOV DL,70
	INT 10H

	MOV AH,02H
	MOV DH,3
	MOV DL,13
	MOV BH,00H
	INT 10H	

	LEA DX, STRING_1             ; load & display the STRING_1  
	MOV AH, 9            
 	INT 21H

	MOV AH,07H
	MOV AL,00H
	MOV BH,0EH
	MOV CH,7
	MOV CL,0
	MOV DH,15
	MOV DL,70
	INT 10H

	MOV AH,02H
	MOV DH,7
	MOV DL,30
	MOV BH,00H
	INT 10H	

	LEA DX, STRING_2             ; load & display the STRING_2  
	MOV AH, 9            
 	INT 21H

	MOV AH,02H
	MOV DH,9
	MOV DL,25
	MOV BH,00H
	INT 10H	

	LEA DX, STRING_3             ; load & display the STRING_3  
	MOV AH, 9            
 	INT 21H

	MOV AH,02H
	MOV DH,13
	MOV DL,22
	MOV BH,00H
	INT 10H	

	LEA DX, STRING_4             ; load & display the STRING_4  
	MOV AH, 9            
 	INT 21H

	MOV AH,02H
	MOV DH,15
	MOV DL,28
	MOV BH,00H
	INT 10H	

	LEA DX, STRING_5             ; load & display the STRING_5  
	MOV AH, 9            
 	INT 21H
	

 	MOV AH, 4CH                  ; return control to DOS
	INT 21H

   MAIN ENDP

 END MAIN