.model large
.code
org 100h
jmp gervin

month1  db 'E  N  E  R  O$'
month2  db 'P  E  B  R  E  R  O$'
month3  db 'M  A  R  S  O$'
month4  db 'A  B  R  I  L$'
month5  db 'M  A  Y  O$'
month6  db 'H  U  N  Y  O$'
month7  db 'H  U  L  Y  O$'
month8  db 'A  G  U  S  T  O$'
month9  db 'S  E  T  Y  E  M  B  R  E$'
month10 db 'O  C  T  U  B  R  E$'
month11 db 'N  O  B  Y  E  M  B  R  E$'
month12 db 'D  I  S  Y  E  M  B  R  E$'

month1a  db 'Enero$'
month2a  db 'Pebrero$'
month3a  db 'Marso$'
month4a  db 'Abril$'
month5a  db 'Mayo$'
month6a  db 'Hunyo$'
month7a  db 'Hulyo$'
month8a  db 'Agusto$'
month9a  db 'Setyembre$'
month10a db 'Octubre$'
month11a db 'Nobyembre$'
month12a db 'Disyembre$'

day1 db '  Linggo      Lunes      Martes    Miyerkules    Huwebes    Biyernes    Sabado$'

screen1		db 'ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
     		db 'º                                                                             º',0ah,0dh
     		db 'º                                                                             º',0ah,0dh
     		db 'º                                                                             º',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
      		db 'º                                                                             º',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼','$' 

screen2		db 'ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'º         ÛÛÛ     ÛÛÛÛ     ÛÛÛÛÛ    ÛÛÛÛ     ÛÛÛÛÛ    ÛÛÛÛÛ     ÛÛÛÛ          º',0ah,0dh
       		db 'º        Û   Û    Û   Û    Û        Û   Û      Û        Û      Û              º',0ah,0dh
       		db 'º        Û        ÛÛÛÛ     ÛÛÛ      Û   Û      Û        Û       ÛÛÛ           º',0ah,0dh
       		db 'º        Û   Û    Û  Û     Û        Û   Û      Û        Û          Û          º',0ah,0dh
       		db 'º         ÛÛÛ     Û   Û    ÛÛÛÛÛ    ÛÛÛÛ     ÛÛÛÛÛ      Û      ÛÛÛÛ           º',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'º                Germa Dingal ....... Allowance and Tuition                   º',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'º                Azkals ft. Max ....... Teamwork and Laptop                   º',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'º                Swiss Miss ............. Coffee Substitute                   º',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'º                BPSTEA Internet ................ Free Wifi                   º',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'º                Zecel Grace Pelino ........... Inspiration                   º',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'º                           [B]alik sa Main Menu                              º',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼','$' 

screen3		db 'ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
     		db 'º                                                                             º',0ah,0dh
     		db 'º    ¼ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÈ                       ÛÛÛÛÛÛÛ             º',0ah,0dh
     		db 'º    º                            º                   ÛÛÛÛÛÛÛÛÛÛÛ             º',0ah,0dh
       		db 'º    º                            º           ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ            º',0ah,0dh
       		db 'º    º [K]alendaryo               º          ÛÛÛÛÛÛ  ÛÛÛ  ÛÛÛÛÛÛÛÛÛÛ          º',0ah,0dh
       		db 'º    º                            º          ÛÛ±±ÛÛÛ   Û     ÛÛÛÛ  Û          º',0ah,0dh
       		db 'º    º [P]umunta sa Time Machine  º          ÛÛÛ   ÛÛ          ÛÛÛ Û          º',0ah,0dh
       		db 'º    º                            º          Û±±                   Û          º',0ah,0dh
       		db 'º    º [H]olidays ng Pinas        º          Û±±±                  Û          º',0ah,0dh
       		db 'º    º                            º          ÛÛÛÛÛÛÛÛÛÛÛ ÛÛÛÛÛÛÛÛÛÛÛ          º',0ah,0dh
       		db 'º    º [D]agdagan ng Event/s      º           Û        ÛÛÛ        Û           º',0ah,0dh
       		db 'º    º                            º            Û  Û   Û   Û  Û   Û            º',0ah,0dh
       		db 'º    º [C]redits                  º            Û  ÛÛ  Û   Û  ÛÛ  Û            º',0ah,0dh
       		db 'º    º                            º            Û      Û   Û      Û            º',0ah,0dh
                db 'º    º [E]xit na Tohl             º             ÛÛÛÛÛÛ     ÛÛÛÛÛÛ             º',0ah,0dh
       		db 'º    º                            º                     Û                     º',0ah,0dh
       		db 'º    º                            º                                           º',0ah,0dh
       		db 'º    »ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÉ          Powered by: NERDerthals          º',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼','$' 	

screen4		db 'ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
     		db 'º                                                                             º',0ah,0dh
                db 'º                                                                             º',0ah,0dh
     		db 'º                                                                             º',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'º        ÛÛÛÛ±              ÛÛÛÛ±    ÛÛÛÛÛ±   ÛÛÛÛÛ±                          º',0ah,0dh
       		db 'º       Û±   Û±             Û±  Û±     Û±       Û±        Û       Û           º',0ah,0dh
       		db 'º       Û±   Û±             Û±  Û±     Û±       Û±       ÛÛ       ÛÛ          º',0ah,0dh
       		db 'º        ÛÛÛÛ±     ÛÛÛÛÛ    ÛÛÛÛ±      Û±       Û±          ÛÛÛÛÛ             º',0ah,0dh
       		db 'º       Û±   Û±             Û±  Û±     Û±       Û±         ÛÛÛÛÛÛÛ            º',0ah,0dh
       		db 'º       Û±   Û±             Û±  Û±     Û±       Û±         Û  Û  Û            º',0ah,0dh
       		db 'º        ÛÛÛÛ±              ÛÛÛÛ±    ÛÛÛÛÛ±     Û±         ÛÛÛÛÛÛÛ            º',0ah,0dh
       		db 'º                                                           ÛÛÛÛÛ             º',0ah,0dh
       		db 'º        ÛÛÛ ÛÛÛ  Û    ÛÛÛÛ Û  Û ÛÛÛ  ÛÛÛ  ÛÛÛ           ÛÛ Û Û Û ÛÛ          º',0ah,0dh
       		db 'º       Û    Û  Û Û    ÛÛ   ÛÛ Û Û  Û Û  Û Û  Û           Û       Û           º',0ah,0dh
      		db 'º       Û    ÛÛÛÛ Û    Û    Û ÛÛ Û  Û ÛÛÛÛ ÛÛÛ                                º',0ah,0dh
       		db 'º        ÛÛÛ Û  Û ÛÛÛÛ ÛÛÛÛ Û  Û ÛÛÛ  Û  Û Û  Û                               º',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼','$'

screen5		db 'ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'º            Û   Û   ÛÛÛ   Û      ÛÛÛÛÛ  ÛÛÛÛ   ÛÛÛÛ   Û   Û  ÛÛÛÛÛ           º',0ah,0dh
     		db 'º            Û   Û  Û   Û  Û        Û    Û   Û  Û   Û  Û   Û  Û               º',0ah,0dh
     		db 'º            ÛÛÛÛÛ  Û   Û  Û        Û    Û   Û  ÛÛÛÛÛ  ÛÛÛÛÛ  ÛÛÛÛÛ           º',0ah,0dh
     		db 'º            Û   Û  Û   Û  Û        Û    Û   Û  Û   Û      Û      Û           º',0ah,0dh
       		db 'º            Û   Û   ÛÛÛ   ÛÛÛÛÛ  ÛÛÛÛÛ  ÛÛÛÛ   Û   Û  ÛÛÛÛÛ  ÛÛÛÛÛ           º',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'º    Enero 1 ..... Bagong Taon           Hunyo 12 ..... Araw ng Kalayaan      º',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'º    Marso 24 .... Huwebes Santo         Agusto 29 .... Araw ng mga Bayani    º',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'º    Marso 25 .... Biyernes Santo        Nobyembre 30 . Araw ni Bonifacio     º',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'º    Abril 9 ..... Araw ng Kagitingan    Disyembre 25 . Pasko                 º',0ah,0dh
      		db 'º                                                                             º',0ah,0dh
       		db 'º    Mayo 1 ...... Araw ng Manggagawa    Disyembre 30 . Araw ni Rizal         º',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'º                             [B]alik sa Main Menu                            º',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'º                                                                             º',0ah,0dh
       		db 'ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼','$' 

screen6 	db '                                                                               ',0ah,0dh
       		db '                                                                         .     ',0ah,0dh
       		db '    .  ÛÛÛÛÛ  Û  Û   Û  ÛÛÛÛ    Û   Û  ÛÛÛ    ÛÛÛ  Û  Û  Û  Û  Û  ÛÛÛÛ         ',0ah,0dh
     		db '         Û    Û  ÛÛ ÛÛ  ÛÛ      ÛÛ ÛÛ  Û  Û  Û     ÛÛÛÛ  Û  ÛÛ Û  ÛÛ           ',0ah,0dh
     		db '         Û    Û  Û Û Û  Û       Û Û Û  ÛÛÛÛ  Û     Û  Û  Û  Û ÛÛ  Û            ',0ah,0dh
     		db '         Û    Û  Û Û Û  ÛÛÛÛ    Û Û Û  Û  Û   ÛÛÛ  Û  Û  Û  Û  Û  ÛÛÛÛ      .  ',0ah,0dh
       		db '                                                                               ',0ah,0dh
       		db '    .                                                 .                        ',0ah,0dh
       		db '                                      .         .                 .   .        ',0ah,0dh
       		db '                                                                     .         ',0ah,0dh
       		db '         .                                                      .              ',0ah,0dh
       		db '                         .                       .                .            ',0ah,0dh
       		db '   .           .                                                               ',0ah,0dh
       		db '                                                                               ',0ah,0dh
       		db '                .       .                                    .           .     ',0ah,0dh
       		db '                                                                               ',0ah,0dh
       		db '        .                                                                      ',0ah,0dh
      		db '                                                                  .    .       ',0ah,0dh
       		db '                                                       .                       ',0ah,0dh
       		db '                                                                               ',0ah,0dh
       		db '     .                              .                             .            ',0ah,0dh
       		db '              .     .                                        .                 ',0ah,0dh
       		db '                              .                  .                             ',0ah,0dh
       		db '       .                                                                   .   ',0ah,0dh
       		db '                                                                               ','$'

screen7		db '                                                                               ',0ah,0dh
       		db '                ÛÛÛ   ÛÛÛ   ÛÛÛÛ  ÛÛÛ   ÛÛÛ   ÛÛÛÛ  ÛÛÛ   Û  Û                 ',0ah,0dh
       		db '                Û  Û  Û  Û  Û     Û  Û  Û  Û  Û     Û  Û  ÛÛ Û                 ',0ah,0dh
     		db '                Û  Û  ÛÛÛÛ  Û ÛÛ  Û  Û  ÛÛÛÛ  Û ÛÛ  ÛÛÛÛ  Û ÛÛ                 ',0ah,0dh
     		db '                ÛÛÛ   Û  Û  ÛÛÛÛ  ÛÛÛ   Û  Û  ÛÛÛÛ  Û  Û  Û  Û                 ',0ah,0dh
     		db '                                                                               ',0ah,0dh
       		db '                                                                               ',0ah,0dh
       		db '                                                                               ',0ah,0dh
       		db '                   EX: Octubre 26, 2016 - Kaarawan ni Zee                      ',0ah,0dh
       		db '                                                                               ',0ah,0dh
       		db '                                                                               ',0ah,0dh
       		db '                                                                               ',0ah,0dh
       		db '                                                                               ',0ah,0dh
       		db '                                                                               ',0ah,0dh
       		db '                                                                               ',0ah,0dh
       		db '                                                                               ',0ah,0dh
       		db '               Event:                                                          ',0ah,0dh
      		db '                                                                               ',0ah,0dh
       		db '                                                                               ',0ah,0dh
       		db '                                                                               ',0ah,0dh
       		db '                                                                               ',0ah,0dh
       		db '                                                                               ',0ah,0dh
       		db '                                                                               ',0ah,0dh
       		db '                                                                               ',0ah,0dh
       		db '                                                                               ','$' 

screen8 	db '                                                                               ',0ah,0dh
       		db '           Û   Û  ÛÛÛÛ  ÛÛÛ     ÛÛÛÛ  Û  Û  ÛÛÛÛ  Û  Û  ÛÛÛÛÛ  ÛÛÛÛ            ',0ah,0dh
       		db '           ÛÛ ÛÛ  Û     Û  Û    ÛÛ    Û  Û  ÛÛ    ÛÛ Û    Û    ÛÛ              ',0ah,0dh
     		db '           Û Û Û  Û ÛÛ  ÛÛÛÛ    Û     Û  Û  Û     Û ÛÛ    Û      ÛÛ            ',0ah,0dh
     		db '           Û Û Û  ÛÛÛÛ  Û  Û    ÛÛÛÛ  ÛÛÛ   ÛÛÛÛ  Û  Û    Û    ÛÛÛÛ            ',0ah,0dh
     		db '                                                                               ',0ah,0dh
       		db '                                                                               ',0ah,0dh
       		db '                                                                               ',0ah,0dh
       		db '                                                                               ',0ah,0dh
       		db '                                                                               ',0ah,0dh
       		db '                                                                               ',0ah,0dh
       		db '                                                                               ',0ah,0dh
       		db '                                                   [M]ain Menu                 ',0ah,0dh
       		db '                                                                               ',0ah,0dh
       		db '                                                                               ',0ah,0dh
       		db '                                                   [K]alendaryo                ',0ah,0dh
       		db '                                                                               ',0ah,0dh
                db '                                                                               ',0ah,0dh
       		db '                                                   [D]agdag pa ng Event        ',0ah,0dh
       		db '                                                                               ',0ah,0dh
       		db '                                                                               ',0ah,0dh
       		db '                                                                               ',0ah,0dh
       		db '                                                                               ',0ah,0dh
       		db '                                                                               ',0ah,0dh
       		db '                                                                               ','$'


next   db '[M]ove-on Na>>$'
back   db '<<[B]alikan si Past$'
exit1  db '[E]xit na Muna$'
option db '[P]umunta sa Time Machine$'
add1   db '[D]agdagan ng Events$'
save   db '[S]ave ang Event$'
view   db '[V]iew ang Events$'

year1 db '2 0 1 6$'
year2 db '2 0 1 7$'
year3 db '2 0 1 8$'
year4 db '2 0 1 9$'
year5 db '2 0 2 0$'

year1a db '2016$'
year2a db '2017$'
year3a db '2018$'
year4a db '2019$'
year5a db '2020$'

color db ?

col1 db ?
col2 db ?

row1 db ?
row2 db ?

att1 db ?
att2 db ?

ger1 dw ?

del1 dw ?
del2 dw ?

ins1 db 'T a o n: $'
ins2 db 'B u w a n: $'
ins3 db 'Paalala: Malaking titik ang gamitin sa unang letra ng BUWAN!$','0ah,0dh'

string1 label byte
maxlen1 db 20
actlen1 db ?
kybd1 db 21 dup ('$')

string2 label byte
maxlen2 db 20
actlen2 db ?
kybd2 db 21 dup ('$')

event_arr label byte
mlen db 200
alen db ?
event_wrd db 200 dup ('$')

even_view db 200 dup ('$')

ucounter db ?

gervin proc near
	
	mov ger1, 00

	call clear
        mov ax, 0600h
        mov bh, 0ah
        mov cx, 0000h
        mov dx, 1950h
        int 10h

	mov ax, 0600h
        mov bh, 0fh
        mov cx, 0743h
        mov dx, 1437h
	int 10h

	call curse
	mov ah, 09h
	lea dx, screen4
	int 21h

	call delay

mainmenu:
	call clear

        mov ax, 0600h
        mov bh, 0ah
        mov cx, 0000h
        mov dx, 1950h
        int 10h

	mov ax, 0600h
        mov bh, 0fh
        mov cx, 0325h
        mov dx, 1645h
        int 10h

	mov col1, 00
	mov row1, 00
	call curse
	mov ah, 09h
	lea dx, screen3
	int 21h

ask:	
	mov ah,07h
	int 21h
	
	cmp al, 'K'
	if e jmp january1 
	cmp al, 'k'
	if e jmp january1 
	cmp al, 'E'
	if e jmp exit
	cmp al, 'e'
	if e jmp exit 
	cmp al, 'P'
	if e jmp search1
	cmp al, 'p'
	if e jmp search1
	cmp al, 'H'
	if e jmp holiday
	cmp al, 'h'
	if e jmp holiday
	cmp al, 'C'
	if e jmp credits
	cmp al, 'c'
	if e jmp credits
        cmp al, 'D'
        if e jmp dagdag
        cmp al, 'd'
        if e jmp dagdag

	jmp ask

;---------------------------------------kalendaryo       

january1:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month1
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year1
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,63
        mov row2,06
        lea si,31
act1:
        cmp si,00
        if e jmp act2
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si
        jmp act1

act2:
        mov col1,65
        mov row1,20
        call curse
        mov ah,09h
        lea dx,next
        int 21h


        mov col1,65
        mov row1,22
        call curse
        mov ah,09h
        lea dx,exit1
        int 21h

        mov col1,30
        mov row1,22
        call curse
        mov ah,09h
        lea dx,option
        int 21h

        mov col1,01
        mov row1,22
        call curse
        mov ah,09h
        lea dx,add1
        int 21h

        mov col1,80
        mov row1,25
        call curse


        mov ah,07h
        int 21h
        call choice
        cmp al,'M'     
        if e jmp febuary1
        cmp al,'m'
        if e jmp febuary1
        jmp act2

febuary1:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month2
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year1
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,15
        mov row2,06
        lea si,29
act3:
        cmp si,00
        if e jmp act4
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si
        jmp act3

act4:
        call press           
        mov ah,07h
        int 21h
        call choice
        cmp al,'M'
        if e jmp march1
        cmp al,'m'
        if e jmp march1
        cmp al,'B'
        if e jmp january1
        cmp al,'b'
        if e jmp january1
        jmp act4

march1:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month3
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year1
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,27
        mov row2,06
        lea si,31
act5:
        cmp si,00
        if e jmp act6
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si        
        jmp act5

act6:
        
        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp april1
        cmp al,'m'
        if e jmp april1
        cmp al,'B'
        if e jmp febuary1
        cmp al,'b'
        if e jmp febuary1
        jmp act6
april1:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month4
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year1
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,63
        mov row2,06
        lea si,30
act7:
        cmp si,00
        if e jmp act8
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si   
        jmp act7

act8:
        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp may1
        cmp al,'m'
        if e jmp may1
        cmp al,'B'
        if e jmp march1
        cmp al,'b'
        if e jmp march1
        
        jmp act8

may1:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month5
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year1
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,03
        mov row2,06
        lea si,31
act9:
        cmp si,00
        if e jmp act10

        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si          
        jmp act9

act10:
	call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp june1
        cmp al,'m'
        if e jmp june1
        cmp al,'B'
        if e jmp april1
        cmp al,'b'
        if e jmp april1
        
        jmp act10

june1:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month6
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year1
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,39
        mov row2,06
        lea si,30
act11:
        cmp si,00
        if e jmp act12
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si           
        jmp act11

act12:

	call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp july1
        cmp al,'m'
        if e jmp july1
        cmp al,'B'
        if e jmp may1
        cmp al,'b'
        if e jmp may1
        
        jmp act12


july1:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month7
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year1
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,63
        mov row2,06
        lea si,31
act13:
        cmp si,00
        if e jmp act14
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si         
        jmp act13

act14:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp august1
        cmp al,'m'
        if e jmp august1
        cmp al,'B'
        if e jmp june1
        cmp al,'b'
        if e jmp june1
        
        jmp act14

august1:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month8
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year1
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,15
        mov row2,06
        lea si,31
act15:
        cmp si,00
        if e jmp act16
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si         
        jmp act15

act16:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp september1
        cmp al,'m'
        if e jmp september1
        cmp al,'B'
        if e jmp july1
        cmp al,'b'
        if e jmp july1
        
        jmp act16

september1:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month9
        int 21h


        mov col1,71
        call curse

        mov ah,09
        lea dx,year1
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,51
        mov row2,06
        lea si,30
act17:
        cmp si,00
        if e jmp act18
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si         
        jmp act17

act18:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp october1
        cmp al,'m'
        if e jmp october1
        cmp al,'B'
        if e jmp august1
        cmp al,'b'
        if e jmp august1
        
        jmp act18

october1:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month10
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year1
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,75
        mov row2,06
        lea si,31
act19:
        cmp si,00
        if e jmp act20 
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si          
        jmp act19

act20:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp november1
        cmp al,'m'
        if e jmp november1
        cmp al,'B'
        if e jmp september1
        cmp al,'b'
        if e jmp september1
        
        jmp act20

november1:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month11
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year1
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,27
        mov row2,06
        lea si,30
act21:
        cmp si,00
        if e jmp act22
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si        
        jmp act21

act22:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp december1
        cmp al,'m'
        if e jmp december1
        cmp al,'B'
        if e jmp october1
        cmp al,'b'
        if e jmp october1
        
        jmp act22

december1:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month12
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year1
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,51
        mov row2,06
        lea si,31
act23:
        cmp si,00
        if e jmp act24
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si         
        jmp act23

act24:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp january2
        cmp al,'m'
        if e jmp january2
        cmp al,'B'
        if e jmp november1
        cmp al,'b'
        if e jmp november1
        
        jmp act24

;---------------------------------------2017 na tohl!

january2:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month1
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year2
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,03
        mov row2,06
        lea si,31
act1a:
        cmp si,00
        if e jmp act2a
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si     
        jmp act1a

act2a:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp febuary2
        cmp al,'m'
        if e jmp febuary2
        cmp al,'B'
        if e jmp december1
        cmp al,'b'
        if e jmp december1
        jmp act2a

febuary2:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month2
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year2
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,39
        mov row2,06
        lea si,28
act3a:
        cmp si,00
        if e jmp act4a
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si          
        jmp act3a

act4a:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp march2
        cmp al,'m'
        if e jmp march2
        cmp al,'B'
        if e jmp january2
        cmp al,'b'
        if e jmp january2
        jmp act4a

march2:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month3
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year2
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,39
        mov row2,06
        lea si,31
act5a:
        cmp si,00
        if e jmp act6a
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si        
        jmp act5a

act6a:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp april2
        cmp al,'m'
        if e jmp april2
        cmp al,'B'
        if e jmp febuary2
        cmp al,'b'
        if e jmp febuary2
        jmp act6a
april2:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month4
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year2
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,75
        mov row2,06
        lea si,30
act7a:
        cmp si,00
        if e jmp act8a
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si         
        jmp act7a

act8a:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp may2
        cmp al,'m'
        if e jmp may2
        cmp al,'B'
        if e jmp march2
        cmp al,'b'
        if e jmp march2
        
        jmp act8a

may2:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month5
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year2
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,15
        mov row2,06
        lea si,31
act9a:
        cmp si,00
        if e jmp act10a
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si          
        jmp act9a

act10a:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp june2
        cmp al,'m'
        if e jmp june2
        cmp al,'B'
        if e jmp april2
        cmp al,'b'
        if e jmp april2
        
        jmp act10a

june2:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month6
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year2
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,51
        mov row2,06
        lea si,30
act11a:
        cmp si,00
        if e jmp act12a
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si          
        jmp act11a

act12a:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp july2
        cmp al,'m'
        if e jmp july2
        cmp al,'B'
        if e jmp may2
        cmp al,'b'
        if e jmp may2
        
        jmp act12a


july2:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month7
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year2
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,75
        mov row2,06
        lea si,31
act13a:
        cmp si,00
        if e jmp act14a
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si         
        jmp act13a

act14a:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp august2
        cmp al,'m'
        if e jmp august2
        cmp al,'B'
        if e jmp june2
        cmp al,'b'
        if e jmp june2
        
        jmp act14a

august2:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month8
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year2
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,27
        mov row2,06
        lea si,31
act15a:
        cmp si,00
        if e jmp act16a
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si           
        jmp act15a

act16a:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp september2
        cmp al,'m'
        if e jmp september2
        cmp al,'B'
        if e jmp july2
        cmp al,'b'
        if e jmp july2
        
        jmp act16a

september2:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month9
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year2
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,63
        mov row2,06
        lea si,30
act17a:
        cmp si,00
        if e jmp act18a
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si           
        jmp act17a

act18a:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp october2
        cmp al,'m'
        if e jmp october2
        cmp al,'B'
        if e jmp august2
        cmp al,'b'
        if e jmp august2
        
        jmp act18a

october2:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month10
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year2
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,03
        mov row2,06
        lea si,31
act19a:
        cmp si,00
        if e jmp act20a
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si         
        jmp act19a

act20a:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp november2
        cmp al,'m'
        if e jmp november2
        cmp al,'B'
        if e jmp september2
        cmp al,'b'
        if e jmp september2
        
        jmp act20a

november2:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month11
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year2
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,39
        mov row2,06
        lea si,30
act21a:
        cmp si,00
        if e jmp act22a
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si        
        jmp act21a

act22a:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp december2
        cmp al,'m'
        if e jmp december2
        cmp al,'B'
        if e jmp october2
        cmp al,'b'
        if e jmp october2
        
        jmp act22a

december2:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month12
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year2
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,63
        mov row2,06
        lea si,31
act23a:
        cmp si,00
        if e jmp act24a
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si         
        jmp act23a

act24a:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp january3
        cmp al,'m'
        if e jmp january3
        cmp al,'B'
        if e jmp november2
        cmp al,'b'
        if e jmp november2
        
        jmp act24a

;----------------------------------------2018 na tohl

january3:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month1
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year3
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,15
        mov row2,06
        lea si,31
act1b:
        cmp si,00
        if e jmp act2b
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si    
        jmp act1b

act2b:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp febuary3
        cmp al,'m'
        if e jmp febuary3
        cmp al,'B'
        if e jmp december2
        cmp al,'b'
        if e jmp december2
        jmp act2b

febuary3:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month2
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year3
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,51
        mov row2,06
        lea si,28
act3b:
        cmp si,00
        if e jmp act4b
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si        
        jmp act3b

act4b:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp march3
        cmp al,'m'
        if e jmp march3
        cmp al,'B'
        if e jmp january3
        cmp al,'b'
        if e jmp january3
        jmp act4b

march3:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month3
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year3
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,51
        mov row2,06
        lea si,31
act5b:
        cmp si,00
        if e jmp act6b
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si       
        jmp act5b

act6b:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp april3
        cmp al,'m'
        if e jmp april3
        cmp al,'B'
        if e jmp febuary3
        cmp al,'b'
        if e jmp febuary3
        jmp act6b
april3:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month4
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year3
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,03
        mov row2,06
        lea si,30
act7b:
        cmp si,00
        if e jmp act8b
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si       
        jmp act7b

act8b:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp may3
        cmp al,'m'
        if e jmp may3
        cmp al,'B'
        if e jmp march3
        cmp al,'b'
        if e jmp march3
        
        jmp act8b

may3:                    ;may3

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month5
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year3
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,27
        mov row2,06
        lea si,31
act9b:
        cmp si,00
        if e jmp act10b
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si       
        jmp act9b

act10b:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp june3
        cmp al,'m'
        if e jmp june3
        cmp al,'B'
        if e jmp april3
        cmp al,'b'
        if e jmp april3
        
        jmp act10b

june3:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month6
        int 10h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year3
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,63
        mov row2,06
        lea si,30
act11b:
        cmp si,00
        if e jmp act12b
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si       
        jmp act11b

act12b:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp july3
        cmp al,'m'
        if e jmp july3
        cmp al,'B'
        if e jmp may3
        cmp al,'b'
        if e jmp may3
        
        jmp act12b


july3:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month7
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year3
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,03
        mov row2,06
        lea si,31
act13b:
        cmp si,00
        if e jmp act14b
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si        
        jmp act13b

act14b:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp august3
        cmp al,'m'
        if e jmp august3
        cmp al,'B'
        if e jmp june3
        cmp al,'b'
        if e jmp june3
        
        jmp act14b

august3:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month8
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year3
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,39
        mov row2,06
        lea si,31
act15b:
        cmp si,00
        if e jmp act16b
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si       
        jmp act15b

act16b:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp september3
        cmp al,'m'
        if e jmp september3
        cmp al,'B'
        if e jmp july3
        cmp al,'b'
        if e jmp july3
        
        jmp act16b

september3:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month9
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year3
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,75
        mov row2,06
        lea si,30
act17b:
        cmp si,00
        if e jmp act18b
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si       
        jmp act17b

act18b:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp october3
        cmp al,'m'
        if e jmp october3
        cmp al,'B'
        if e jmp august3
        cmp al,'b'
        if e jmp august3
        
        jmp act18b

october3:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month10
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year3
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,15
        mov row2,06
        lea si,31
act19b:
        cmp si,00
        if e jmp act20b
        call set
        cmp att2,58
        if e call attrib
        cmp col2,87
        if e call column
        dec si        
        jmp act19b

act20b:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp november3
        cmp al,'m'
        if e jmp november3
        cmp al,'B'
        if e jmp september3
        cmp al,'b'
        if e jmp september3
        
        jmp act20b

november3:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month11
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year3
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,51
        mov row2,06
        lea si,30
act21b:
        cmp si,00
        if e jmp act22b
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si         
        jmp act21b

act22b:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp december3
        cmp al,'m'
        if e jmp december3
        cmp al,'B'
        if e jmp october3
        cmp al,'b'
        if e jmp october3
        
        jmp act22b

december3:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month12
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year3
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,75
        mov row2,06
        lea si,31
act23b:
        cmp si,00
        if e jmp act24b
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si         
        jmp act23b

act24b:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp january4
        cmp al,'m'
        if e jmp january4
        cmp al,'B'
        if e jmp november3
        cmp al,'b'
        if e jmp november3
        
        jmp act24b

;----------------------------------------2019 na tohl


january4:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month1
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year4
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,27
        mov row2,06
        lea si,31
act1c:
        cmp si,00
        if e jmp act2c
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si    
        jmp act1c

act2c:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp febuary4
        cmp al,'m'
        if e jmp febuary4
        cmp al,'B'
        if e jmp december3
        cmp al,'b'
        if e jmp december3
        jmp act2c

febuary4:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month2
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year4
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,63
        mov row2,06
        lea si,28
act3c:
        cmp si,00
        if e jmp act4c
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si        
        jmp act3c

act4c:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp march4
        cmp al,'m'
        if e jmp march4
        cmp al,'B'
        if e jmp january4
        cmp al,'b'
        if e jmp january4
        jmp act4c

march4:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month3
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year4
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,63
        mov row2,06
        lea si,31
act5c:
        cmp si,00
        if e jmp act6c
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si       
        jmp act5c

act6c:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp april4
        cmp al,'m'
        if e jmp april4
        cmp al,'B'
        if e jmp febuary4
        cmp al,'b'
        if e jmp febuary4
        jmp act6c
april4:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month4
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year4
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,15
        mov row2,06
        lea si,30
act7c:
        cmp si,00
        if e jmp act8c
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si       
        jmp act7c

act8c:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp may4
        cmp al,'m'
        if e jmp may4
        cmp al,'B'
        if e jmp march4
        cmp al,'b'
        if e jmp march4
        
        jmp act8c

may4:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month5
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year4
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,39
        mov row2,06
        lea si,31
act9c:
        cmp si,00
        if e jmp act10c
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si       
        jmp act9c

act10c:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp june4
        cmp al,'m'
        if e jmp june4
        cmp al,'B'
        if e jmp april4
        cmp al,'b'
        if e jmp april4
        
        jmp act10c

june4:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month6
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year4
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,75
        mov row2,06
        lea si,30
act11c:
        cmp si,00
        if e jmp act12c
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si       
        jmp act11c

act12c:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp july4
        cmp al,'m'
        if e jmp july4
        cmp al,'B'
        if e jmp may4
        cmp al,'b'
        if e jmp may4
        
        jmp act12c


july4:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month7
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year4
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,15
        mov row2,06
        lea si,31
act13c:
        cmp si,00
        if e jmp act14c
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si        
        jmp act13c

act14c:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp august4
        cmp al,'m'
        if e jmp august4
        cmp al,'B'
        if e jmp june4
        cmp al,'b'
        if e jmp june4
        
        jmp act14c

august4:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month8
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year4
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,51
        mov row2,06
        lea si,31
act15c:
        cmp si,00
        if e jmp act16c
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si       
        jmp act15c

act16c:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp september4
        cmp al,'m'
        if e jmp september4
        cmp al,'B'
        if e jmp july4
        cmp al,'b'
        if e jmp july4
        
        jmp act16c

september4:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month9
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year4
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,03
        mov row2,06
        lea si,30
act17c:
        cmp si,00
        if e jmp act18c
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si       
        jmp act17c

act18c:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp october4
        cmp al,'m'
        if e jmp october4
        cmp al,'B'
        if e jmp august4
        cmp al,'b'
        if e jmp august4
        
        jmp act18c

october4:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month10
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year4
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,27
        mov row2,06
        lea si,31
act19c:
        cmp si,00
        if e jmp act20c
        call set
        cmp att2,58
        if e call attrib
        cmp col2,87
        if e call column
        dec si        
        jmp act19c

act20c:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp november4
        cmp al,'m'
        if e jmp november4
        cmp al,'B'
        if e jmp september4
        cmp al,'b'
        if e jmp september4
        
        jmp act20c

november4:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month11
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year4
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,63
        mov row2,06
        lea si,30
act21c:
        cmp si,00
        if e jmp act22c
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si         
        jmp act21c

act22c:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp december4
        cmp al,'m'
        if e jmp december4
        cmp al,'B'
        if e jmp october4
        cmp al,'b'
        if e jmp october4
        
        jmp act22c

december4:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month12
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year4
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,03
        mov row2,06
        lea si,31
act23c:
        cmp si,00
        if e jmp act24c
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si         
        jmp act23c

act24c:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp january5
        cmp al,'m'
        if e jmp january5
        cmp al,'B'
        if e jmp november4
        cmp al,'b'
        if e jmp november4
        
        jmp act24c
 
;----------------------------------------2020 tohl


january5:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month1
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year5
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,39
        mov row2,06
        lea si,31
act1d:
        cmp si,00
        if e jmp act2d
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si    
        jmp act1d

act2d:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp febuary5
        cmp al,'m'
        if e jmp febuary5
        cmp al,'B'
        if e jmp december4
        cmp al,'b'
        if e jmp december4
        jmp act2d

febuary5:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month2
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year5
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,75
        mov row2,06
        lea si,29
act3d:
        cmp si,00
        if e jmp act4d
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si        
        jmp act3d

act4d:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp march5
        cmp al,'m'
        if e jmp march5
        cmp al,'B'
        if e jmp january5
        cmp al,'b'
        if e jmp january5
        jmp act4d

march5:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month3
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year5
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,03
        mov row2,06
        lea si,31
act5d:
        cmp si,00
        if e jmp act6d
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si       
        jmp act5d

act6d:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp april5
        cmp al,'m'
        if e jmp april5
        cmp al,'B'
        if e jmp febuary5
        cmp al,'b'
        if e jmp febuary5
        jmp act6d
april5:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month4
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year5
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,39
        mov row2,06
        lea si,30
act7d:
        cmp si,00
        if e jmp act8d
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si       
        jmp act7d

act8d:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp may5
        cmp al,'m'
        if e jmp may5
        cmp al,'B'
        if e jmp march5
        cmp al,'b'
        if e jmp march5
        
        jmp act8d

may5:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month5
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year5
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,63
        mov row2,06
        lea si,31
act9d:
        cmp si,00
        if e jmp act10d
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si       
        jmp act9d

act10d:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp june5
        cmp al,'m'
        if e jmp june5
        cmp al,'B'
        if e jmp april5
        cmp al,'b'
        if e jmp april5
        
        jmp act10d

june5:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month6
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year5
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,15
        mov row2,06
        lea si,30
act11d:
        cmp si,00
        if e jmp act12d
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si       
        jmp act11d

act12d:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp july5
        cmp al,'m'
        if e jmp july5
        cmp al,'B'
        if e jmp may5
        cmp al,'b'
        if e jmp may5
        
        jmp act12d


july5:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month7
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year5
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,39
        mov row2,06
        lea si,31
act13d:
        cmp si,00
        if e jmp act14d
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si        
        jmp act13d

act14d:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp august5
        cmp al,'m'
        if e jmp august5
        cmp al,'B'
        if e jmp june5
        cmp al,'b'
        if e jmp june5
        
        jmp act14d

august5:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month8
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year5
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,75
        mov row2,06
        lea si,31
act15d:
        cmp si,00
        if e jmp act16d
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si       
        jmp act15d

act16d:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp september5
        cmp al,'m'
        if e jmp september5
        cmp al,'B'
        if e jmp july5
        cmp al,'b'
        if e jmp july5
        
        jmp act16d

september5:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month9
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year5
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,27
        mov row2,06
        lea si,30
act17d:
        cmp si,00
        if e jmp act18d
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si       
        jmp act17d

act18d:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp october5
        cmp al,'m'
        if e jmp october5
        cmp al,'B'
        if e jmp august5
        cmp al,'b'
        if e jmp august5
        
        jmp act18d

october5:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month10
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year5
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,51
        mov row2,06
        lea si,31
act19d:
        cmp si,00
        if ne jmp act20d
        call set
        cmp att2,58
        if e call attrib
        cmp col2,87
        if e call column
        dec si        
        jmp act19d

act20d:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp november5
        cmp al,'m'
        if e jmp november5
        cmp al,'B'
        if e jmp september5
        cmp al,'b'
        if e jmp september5
        
        jmp act20d

november5:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month11
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year5
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,03
        mov row2,06
        lea si,30
act21d:
        cmp si,00
        if e jmp act22d
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si         
        jmp act21d

act22d:

        call press 
        mov ah,07h
        int 21h
	call choice
        cmp al,'M'
        if e jmp december5
        cmp al,'m'
        if e jmp december5
        cmp al,'B'
        if e jmp october5
        cmp al,'b'
        if e jmp october5
        
        jmp act22d

december5:

        call clear
        call disp1
        call monthpos
        call curse

        mov ah,09h
        lea dx,month12
        int 21h

        mov col1,71
        call curse

        mov ah,09
        lea dx,year5
        int 21h

        mov col1,00
        mov row1,03
        call curse

        mov ah,09h
        lea dx,day1
        int 21h

        mov att1,48
        mov att2,49
        mov col2,27
        mov row2,06
        lea si,31
act23d:
        cmp si,00
        if e jmp act24d
        call set
        cmp col2,87
        if e call column
        cmp att2,58
        if e call attrib
        dec si         
        jmp act23d

act24d:

        mov col1,65
        mov row1,22
        call curse
        mov ah,09h
        lea dx,exit1
        int 21h


        mov col1,01
        mov row1,20
        call curse
        mov ah,09h
        lea dx,back
        int 21h

        mov col1,30
        mov row1,22
        call curse
        mov ah,09h
        lea dx,option
        int 21h

        mov col1,01
        mov row1,22
        call curse
        mov ah,09h
        lea dx,add1
        int 21h

        mov col1,80
        mov row1,25
        call curse
        

        mov ah,07h
        int 21h
	call choice
        cmp al,'B'
        if e jmp november5
        cmp al,'b'
        if e jmp november5
        
        jmp act24d

;----------------------------------------Pumunta sa time machine

search1:
        call clear
	
	mov ax,0600h
        mov bh,0fh
        mov cx,0404h
        mov dx,0945h
        int 10h     

	mov col1,00
	mov row1,00
	
	call curse
	mov ah,09h
	lea dx, screen6
	int 21h 

        mov col1,28
        mov row1,10
        call curse
        mov ah,09h
        lea dx,ins1
        int 21h

        inc row1,02
        call curse
        mov ah,09h
        lea dx,ins2
        int 21h

        mov col1,10
        mov row1,17
        call curse
        mov ah,09h
        lea dx,ins3
        int 21h

        mov col1,40
        mov row1,10
        call curse
        mov ah,0ah
        lea dx,string1
        int 21h

        inc col1
        inc row1,02
        call curse
        mov ah,0ah
        lea dx,string2
        int 21h

        mov col1,80
        mov row1,25
        call curse
yearly:
        cld
        mov ch,00
        mov cl,actlen1
        lea di,kybd1
        lea si,year1a
        repe cmpsb
        if e jmp monthly1

        cld
        mov ch,00
        mov cl,actlen1
        lea di,kybd1
        lea si,year2a
        repe cmpsb
        if e jmp monthly2

        cld
        mov ch,00
        mov cl,actlen1
        lea di,kybd1
        lea si,year3a
        repe cmpsb
        if e jmp monthly3

        cld
        mov ch,00
        mov cl,actlen1
        lea di,kybd1
        lea si,year4a
        repe cmpsb
        if e jmp monthly4

        cld
        mov ch,00
        mov cl,actlen1
        lea di,kybd1
        lea si,year5a
        repe cmpsb
        if e jmp monthly5

        jmp search1

monthly1:
        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month1a
        repe cmpsb
        if e jmp january1

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month2a
        repe cmpsb
        if e jmp febuary1

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month3a
        repe cmpsb
        if e jmp march1

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month4a
        repe cmpsb
        if e jmp april1

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month5a
        repe cmpsb
        if e jmp may1

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month6a
        repe cmpsb
        if e jmp june1

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month7a
        repe cmpsb
        if e jmp july1

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month8a
        repe cmpsb
        if e jmp august1

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month9a
        repe cmpsb
        if e jmp september1

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month10a
        repe cmpsb
        if e jmp october1

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month11a
        repe cmpsb
        if e jmp november1

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month12a
        repe cmpsb
        if e jmp december1

        jmp search1

monthly2:
        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month1a
        repe cmpsb
        if e jmp january2

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month2a
        repe cmpsb
        if e jmp febuary2

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month3a
        repe cmpsb
        if e jmp march2

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month4a
        repe cmpsb
        if e jmp april2

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month5a
        repe cmpsb
        if e jmp may2

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month6a
        repe cmpsb
        if e jmp june2

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month7a
        repe cmpsb
        if e jmp july2

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month8a
        repe cmpsb
        if e jmp august2

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month9a
        repe cmpsb
        if e jmp september2

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month10a
        repe cmpsb
        if e jmp october2

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month11a
        repe cmpsb
        if e jmp november2

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month12a
        repe cmpsb
        if e jmp december2

        jmp search1

monthly3:
        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month1a
        repe cmpsb
        if e jmp january3

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month2a
        repe cmpsb
        if e jmp febuary3

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month3a
        repe cmpsb
        if e jmp march3

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month4a
        repe cmpsb
        if e jmp april3

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month5a
        repe cmpsb
        if e jmp may3

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month6a
        repe cmpsb
        if e jmp june3

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month7a
        repe cmpsb
        if e jmp july3

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month8a
        repe cmpsb
        if e jmp august3

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month9a
        repe cmpsb
        if e jmp september3

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month10a
        repe cmpsb
        if e jmp october3

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month11a
        repe cmpsb
        if e jmp november3

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month12a
        repe cmpsb
        if e jmp december3

        jmp search1

monthly4:
        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month1a
        repe cmpsb
        if e jmp january4

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month2a
        repe cmpsb
        if e jmp febuary4

        std
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month3a
        repe cmpsb
        if e jmp march4

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month4a
        repe cmpsb
        if e jmp april4

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month5a
        repe cmpsb
        if e jmp may4

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month6a
        repe cmpsb
        if e jmp june4

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month7a
        repe cmpsb
        if e jmp july4

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month8a
        repe cmpsb
        if e jmp august4

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month9a
        repe cmpsb
        if e jmp september4

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month10a
        repe cmpsb
        if e jmp october4

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month11a
        repe cmpsb
        if e jmp november4

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month12a
        repe cmpsb
        if e jmp december4

        jmp search1

monthly5:
        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month1a
        repe cmpsb
        if e jmp january5

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month2a
        repe cmpsb
        if e jmp febuary5

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month3a
        repe cmpsb
        if e jmp march5

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month4a
        repe cmpsb
        if e jmp april5

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month5a
        repe cmpsb
        if e jmp may5

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month6a
        repe cmpsb
        if e jmp june5

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month7a
        repe cmpsb
        if e jmp july5

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month8a
        repe cmpsb
        if e jmp august5

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month9a
        repe cmpsb
        if e jmp september5

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month10a
        repe cmpsb
        if e jmp october5

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month11a
        repe cmpsb
        if e jmp november5

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month12a
        repe cmpsb
        if e jmp december5

        jmp search1


;----------------------------------------dagdagan ng event

dagdag:
        mov cx, ger1
	mov bx, cx

	call clear
        call disp3

        mov col1,00
        mov row1,00
        call curse
        mov ah,09h
        lea dx,screen7
        int 21h
        
        mov col1,22
        mov row1,16
        call curse

	lea dx, event_arr
	mov ah, 0ah
	int 21h

	lea si, event_wrd
	mov ucounter, 0
sentry:
	mov al, alen
	cmp ucounter, al
	if e jmp vice
	if ne jmp holder
holder:
	mov ah, [si]
	mov even_view[bx], ah
	inc bx
	inc si
	inc ucounter
	jmp sentry           
vice:
	mov al, 10
	mov even_view[bx], al
	inc bx
        mov al, 13
	mov even_view[bx], al
	inc bx
	mov al, 32
	mov even_view[bx], al
	inc bx
	mov al, 32
	mov even_view[bx], al
	inc bx
	mov al, 32
	mov even_view[bx], al
	inc bx
	mov al, 32
	mov even_view[bx], al
	inc bx
	mov al, 32
	mov even_view[bx], al
	inc bx
	mov al, 32
	mov even_view[bx], al
	inc bx
	mov al, 32
	mov even_view[bx], al
	inc bx

	mov cx,bx
	mov ger1,cx
	jmp confirm

confirm:
	call clear
        call disp3

        mov col1,00
        mov row1,00
        call curse
        mov ah,09h
        lea dx,screen8
        int 21h
	
	mov col1,07
	mov row1,08
	call curse
	lea dx,even_view
	mov ah, 09h
	int 21h

ask5:
	mov ah,07h
	int 21h
	
	cmp al,'M'
	if e jmp mainmenu
	cmp al,'m'
	if e jmp mainmenu
	cmp al,'D'
	if e jmp dagdag
	cmp al,'d'
	if e jmp dagdag
	cmp al,'K'
	if e jmp january1
	cmp al,'k'
	if e jmp january1
	
	jmp ask5	
	
;----------------------------------------credits

credits:
	call clear
        call disp2

	mov col1,00
	mov row1,00
	call curse
	mov ah,09h
        lea dx,screen2
	int 21h
ask2:
	mov ah,07h
	int 21h

	cmp al,'B'
        if e jmp mainmenu
	cmp al,'b'
        if e jmp mainmenu
 
	jmp ask2

;----------------------------------------holiday

holiday:
	call clear
        call disp2

	mov col1, 00
	mov row1, 00
	call curse

	mov ah, 09h
	lea dx, screen5
	int 21h
ask3:
	mov ah,07h
	int 21h

	cmp al,'B'
        if e jmp mainmenu
	cmp al,'b'
        if e jmp mainmenu
 
	jmp ask3
       
;----------------------------------------call of duty

delay proc near                 
		    
        mov del1,1500
      
lpo13:	mov del2,0ffffh
lpo14:	nop
	dec del2
	jnz lpo14
	dec del1
	jnz lpo13
        ret          
        delay endp

curse proc near
        mov ah,02h
        mov dh,row1
        mov dl,col1
        mov bh,00
        int 10h
        ret
        curse endp
curse1 proc near
        mov ah,02h
        mov dh,row2
        mov dl,col2
        mov bh,00
        int 10h
        ret
        curse endp

column proc near
        mov col2,03
        inc row2,02
        ret        
        column endp

attrib proc near
        mov att2,48
        inc att1
        attrib endp

clear proc near
        mov ax,03h
        int 10h
        ret
        clear endp

set proc near
        call curse1
	cmp col2,03
	if e call red
	if ne call black

        mov ah,09h
        mov al,att1
        mov bh,00
        mov bl,color
        mov cx,01
        int 10h

        inc col2
        call curse1

        mov ah,09h
        mov al,att2
        mov bh,00
        mov bl,color
        mov cx,01
        int 10h
        inc col2,11
        inc att2
        ret
        set endp

red proc near
        mov color,7ch            
	ret
	red endp

black proc near
        mov color,70h
	ret
	black endp

disp1 proc near

;-------month dashboard
        mov ax,0600h 
        mov bh,0ah
        mov cx,0000h
        mov dx,0550h
        int 10h

;-------sunday red     
        mov ax,0600h
        mov bh,0ch
        mov cx,0302h
        mov dx,0308h
        int 10h

;-------layouted days
        mov ax,0600h
        mov bh,70h
        mov cx,0500h
        mov dx,1950h
        int 10h
        ret
        disp1 endp

disp2 proc near

        mov ax, 0600h
        mov bh, 0ah
        mov cx, 0000h
        mov dx, 1950h
        int 10h

        mov ax, 0600h
        mov bh, 0fh
        mov cx, 0404h
        mov dx, 0945h
        int 10h

        mov ax, 0600h
        mov bh, 0fh
        mov cx, 1415h
        mov dx, 1640h
        int 10h

        ret
        disp2 endp

disp3 proc near

        mov ax, 0600h
        mov bh, 70h
        mov cx, 0000h
        mov dx, 1950h
        int 10h

	mov ax, 0600h
	mov bh, 80h
	mov cx, 0000h
	mov dx, 0550h
	int 10h

	mov ax, 0600h
	mov bh, 8fh
	mov cx, 0305h
	mov dx, 0443h
	int 10h
        ret
        disp3 endp

press proc near

	mov col1,65
        mov row1,20
        call curse
        mov ah,09h
        lea dx,next
        int 21h

        mov col1,01
        mov row1,20
        call curse
        mov ah,09h
        lea dx,back
        int 21h
                  
        mov col1,65
        mov row1,22
        call curse
        mov ah,09h
        lea dx,exit1
        int 21h

        mov col1,30
        mov row1,22
        call curse
        mov ah,09h
        lea dx,option
        int 21h

        mov col1,01
        mov row1,22
        call curse
        mov ah,09h
        lea dx,add1
        int 21h

        mov col1,80
        mov row1,25
        call curse
        ret
        press endp

choice proc near
        cmp al,'D'
        if e jmp dagdag
        cmp al,'d'
        if e jmp dagdag
        cmp al,'P'
        if e jmp search1
        cmp al,'p'
        if e jmp search1
        cmp al,'E'
        if e jmp mainmenu
        cmp al,'e'
        if e jmp mainmenu
        ret
        choice endp
        
monthpos proc near

        mov col1,02
        mov row1,01
        ret
        monthpos endp

;-------------------------------------------exit sa menu

exit:

	call clear
        mov ax, 0600h
        mov bh, 0ah
        mov cx, 0000h
        mov dx, 1950h
        int 10h

	mov ax, 0600h
        mov bh, 0fh
        mov cx, 0743h
        mov dx, 1437h
	int 10h

	call curse
	mov ah, 09h
	lea dx, screen4
	int 21h

	call delay
        
        int 20h
        gervin endp
        end gervin
