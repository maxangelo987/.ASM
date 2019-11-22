.model small
.code
org 100h


message db 'Smile always Bi :)',0ah,0dh,'$'
prompt db 'Enter Your Name: ','$'


plist1 label byte
maxlen1 db 31
actlen1 db ?
kybd1 db 32 dup ('$')



main proc near

mov ax,03h
int 10h

mov ah,09h
lea dx,prompt
int 21h

mov ah,0ah
lea dx,plist1
int 21h

