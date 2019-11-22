.mode small
.code
org 100h

begin: main proc near
 coname db 'ASSEMBLY LANGUAGE','$'

 mov ah, 09h
 lea dx, coname
 int 21h
main endp
end begin
