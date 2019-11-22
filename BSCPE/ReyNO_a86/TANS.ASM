.model small
.code
org 100h

jmp main

plist label byte
max db 20
act db ?
src db 21 dup(' ')
des db 21 dup(' '),'$'

main proc near

     mov ah, 0Ah
     lea dx, plist
     int 21h

     lea si, src
     lea di, des
     mov cl, act

lps1:
      mov al,[si]

      cmp al,'A'
      je vowel
      cmp al,'a'
      je vowel
      cmp al,'E'
      je vowel
      cmp al,'e'
      je vowel
      cmp al,'I'
      je vowel
      cmp al,'i'
      je vowel
      cmp al,'O'
      je vowel
      cmp al,'o'
      je vowel
      cmp al,'U'
      je vowel
      cmp al,'u'
      je vowel
     jmp lps2
     jmp end

vowel:
      mov al,'*'
lps2:
      mov [di],al
       inc si
       inc di
      loop lps1
end:
     mov ah, 09h
     lea dx, des
     int 21h

      mov ax, 4c00h
      int 21h

main endp
end main

      


