.model large
.code
org 100h
jmp main

month1 db 'January$'
month2 db 'February$'
month3 db 'March$'
month4 db 'April$'
month5 db 'May$'
month6 db 'June$'
month7 db 'July$'
month8 db 'August$'
month9 db 'September$'
month10 db 'October$'
month11 db 'November$'
month12 db 'December$'

day1 db 'SUN         MON         TUE         WED         THU         FRI         SAT$'

next db '[N]ext Month>>$'
back db '<<[P]revious Month$'
exit1 db '[E]xit to Menu$'
option db '[G]o to Month$'
add1 db '[A]dd Event$'

year1 db '2016$'
year2 db '2017$'
year3 db '2018$'
year4 db '2019$'
year5 db '2020$'

color db ?

col1 db ?
col2 db ?

row1 db ?
row2 db ?

att1 db ?
att2 db ?

del1 dw ?
del2 dw ?

sto1 dw ?



ins1 db 'Enter Year: $'
ins2 db 'Enter Month: $'
ins3 db 'Year - Date - Month - Event to Be Added$'

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

 brb1  db 'ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º                                                                             º',0ah,0dh       
       db 'ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db 'ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼','$'

 brb2  db 'ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»',0ah,0dh
       db 'º        ±±±   ±±±        ±±±±±  ±±±       ±   ±  ±±±  ±   ± ±±±±± ±   ±      º',0ah,0dh
       db 'º       ±     ±   ±         ±   ±   ±      ±± ±± ±   ± ±±  ±   ±   ±   ±      º',0ah,0dh
       db 'º       ±  ±± ±   ±         ±   ±   ±      ± ± ± ±   ± ± ± ±   ±   ±±±±±      º',0ah,0dh
       db 'º       ±   ± ±   ±         ±   ±   ±      ±   ± ±   ± ±  ±±   ±   ±   ±      º',0ah,0dh
       db 'º        ±±±   ±±±          ±    ±±±       ±   ±  ±±±  ±   ±   ±   ±   ±      º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º                     Start with a Cpital Letter For Month                    º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º         Enter Year: 2017                      Enter Year: 2017              º',0ah,0dh
       db 'º         Enter Month: January                  Enter Month: january          º',0ah,0dh
       db 'º            Correct (O)                            Incorrect (X)             º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼','$'

 brb3  db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                    Û     Û                                    ',0ah,0dh
       db '                                     Û   Û                                     ',0ah,0dh
       db '                                    ÛÛÛÛÛÛÛ                                    ',0ah,0dh
       db '                                   ÛÛ ÛÛÛ ÛÛ                                   ',0ah,0dh
       db '                                  ÛÛÛÛÛÛÛÛÛÛÛ                                  ',0ah,0dh
       db '                                  Û ÛÛÛÛÛÛÛ Û                                  ',0ah,0dh
       db '                                  Û Û     Û Û                                  ',0ah,0dh
       db '                                     ÛÛ ÛÛ                                     ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                 - JEW . WASH -                                ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '             ÛÛÛ    ÛÛÛ   ÛÛÛÛ    ÛÛÛÛ       Û     ÛÛÛ   ÛÛÛ  Û   Û            ',0ah,0dh
       db '            Û   Û  Û   Û  Û   Û  Û           Û    Û   Û Û   Û Û   Û            ',0ah,0dh
       db '            Û      ÛÛÛÛÛ  ÛÛÛÛ   ÛÛÛÛ   ÛÛÛ  Û    Û   Û Û     ÛÛÛÛ             ',0ah,0dh
       db '            Û   Û  Û   Û  Û          Û       Û    Û   Û Û   Û Û   Û            ',0ah,0dh
       db '             ÛÛÛ   Û   Û  Û      ÛÛÛÛ        ÛÛÛÛÛ ÛÛÛ   ÛÛÛ  Û   Û            ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ','$' 

 brb4  db 'ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º      Û   Û    ÛÛÛÛÛ ÛÛÛÛÛ Û   Û ÛÛÛÛÛ       Û   Û ÛÛÛÛ           Û   Û      º',0ah,0dh
       db 'º      ÛÛ ÛÛ    Û       Û   Û   Û ÛÛÛ   ÛÛÛÛÛ  Û Û  Û   Û          ÛÛ ÛÛ      º',0ah,0dh
       db 'º      Û Û Û    ÛÛÛ     Û   Û   Û Û             Û   ÛÛÛÛ   ÛÛ      Û Û Û      º',0ah,0dh
       db 'º      Û   Û    Û     ÛÛÛÛÛ ÛÛÛÛ  ÛÛÛÛÛ         Û   Û   Û  ÛÛ      Û   Û      º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º       ÛÛÛ     ÛÛÛ   ÛÛÛ  Û     ÛÛÛÛÛ Û   Û ÛÛÛÛ   ÛÛÛ  ÛÛÛÛ      ÛÛÛÛÛ      º',0ah,0dh
       db 'º      Û   Û   Û     Û   Û Û     ÛÛÛ   ÛÛ  Û Û   Û Û   Û Û   Û     ÛÛÛ        º',0ah,0dh
       db 'º      ÛÛÛÛÛ   Û     ÛÛÛÛÛ Û     Û     Û Û Û Û   Û ÛÛÛÛÛ ÛÛÛÛ      Û          º',0ah,0dh
       db 'º      Û   Û    ÛÛÛ  Û   Û ÛÛÛÛÛ ÛÛÛÛÛ Û  ÛÛ ÛÛÛÛ  Û   Û Û   Û     ÛÛÛÛÛ      º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º      ÛÛÛÛÛ                                                       Û   Û      º',0ah,0dh
       db 'º        Û     ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»     ÛÛ  Û      º',0ah,0dh
       db 'º        Û     º                                             º     Û Û Û      º',0ah,0dh
       db 'º      ÛÛÛÛÛ   º [P]roceed to Calendar      [G]o to Month    º     Û  ÛÛ      º',0ah,0dh
       db 'º              º                                             º                º',0ah,0dh
       db 'º      Û   Û   º [H]elp/Credits             [F]un Facts      º     Û   Û      º',0ah,0dh
       db 'º      ÛÛ  Û   º                                             º     Û   Û      º',0ah,0dh
       db 'º      Û Û Û   º [A]dd Events               [E]xit           º     Û   Û      º',0ah,0dh
       db 'º      Û  ÛÛ   º                                             º      ÛÛÛ       º',0ah,0dh
       db 'º              ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼                º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼','$'

 brb5  db 'ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º  Press [B]ack              Û   Û ÛÛÛÛÛ Û     ÛÛÛÛ          Press [C]redits  º',0ah,0dh
       db 'º                            Û   Û Û     Û     Û   Û                          º',0ah,0dh
       db 'º                            ÛÛÛÛÛ ÛÛÛ   Û     ÛÛÛÛ                           º',0ah,0dh
       db 'º                            Û   Û Û     Û     Û                              º',0ah,0dh
       db 'º                            Û   Û ÛÛÛÛÛ ÛÛÛÛÛ Û                              º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º      WELCOME TO THE JEW CALENDAR!                                           º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º          The buttons in the Calendar are:                                   º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º          [P] - Previous Month                                               º',0ah,0dh
       db 'º          [N] - Next Month                                                   º',0ah,0dh
       db 'º          [G] - Go to a Month                                                º',0ah,0dh
       db 'º          [E] - Exit/Exit to Menu                                            º',0ah,0dh
       db 'º          [A] - Add Event                                                    º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º          Note in Go to Month                                                º',0ah,0dh
       db 'º          - The program will always ask for a correct year and month         º',0ah,0dh
       db 'º            else the program will loop and not exit.                         º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼','$'

 brb6  db 'ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º   Press [B]ack    ÛÛÛ  ÛÛÛÛ  ÛÛÛÛÛ ÛÛÛÛ  ÛÛÛÛÛ ÛÛÛÛÛ   ÛÛÛÛ                 º',0ah,0dh
       db 'º                  Û   Û Û   Û Û     Û   Û   Û     Û    Û                     º',0ah,0dh
       db 'º                  Û     ÛÛÛÛ  ÛÛÛÛ  Û   Û   Û     Û     ÛÛÛ                  º',0ah,0dh
       db 'º                  Û   Û Û   Û Û     Û   Û   Û     Û        Û                 º',0ah,0dh
       db 'º                   ÛÛÛ  Û   Û ÛÛÛÛÛ ÛÛÛÛ  ÛÛÛÛÛ   Û    ÛÛÛÛ                  º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º      For Laptop Used                       For Bed and Work Area            º',0ah,0dh
       db 'º      -Max Angelo Perin                     -Azkalz B.House                  º',0ah,0dh       
       db 'º                                                                             º',0ah,0dh
       db 'º      For Internet                          For Making the Calendar          º',0ah,0dh
       db 'º      -BPSTEA 1                             -Joash Hann L. Roma              º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º      For Assembly Knowlwdge                About the Creator                º',0ah,0dh
       db 'º      -Engr. Jeralyn G. Alagon              -Is a student of BISU in the     º',0ah,0dh
       db 'º                                            course of BSCpE and was          º',0ah,0dh
       db 'º      For Calendar Ideas                    Kuyazoned by many but is still  º',0ah,0dh
       db 'º      -Alessandar Mea Lelis                 loyal to one girl he loves       º',0ah,0dh
       db 'º      -Jeffry Fernandez                     named Lorelie Cordovan and is a  º',0ah,0dh
       db 'º      -Gervin Dingal                        sudent studying under            º',0ah,0dh
       db 'º      -Geford Taga-an                       Engr. Jeralyn G.Alagon           º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼','$'

 brb7  db 'ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º             ÛÛÛÛÛ Û   Û Û   Û    ÛÛÛÛÛ  ÛÛÛ   ÛÛÛ  ÛÛÛÛÛ  ÛÛÛÛ              º',0ah,0dh
       db 'º             Û     Û   Û ÛÛ  Û    Û     Û   Û Û   Û   Û   Û                  º',0ah,0dh
       db 'º             ÛÛÛ   Û   Û Û Û Û    ÛÛÛ   ÛÛÛÛÛ Û       Û    ÛÛÛ               º',0ah,0dh
       db 'º             Û     Û   Û Û  ÛÛ    Û     Û   Û Û   Û   Û       Û              º',0ah,0dh
       db 'º             Û      ÛÛÛ  Û   Û    Û     Û   Û  ÛÛÛ    Û   ÛÛÛÛ               º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º   January: named after Janus               Why 7 Days a Week?               º',0ah,0dh
       db 'º   March: named after Mars                  -The earlies record of a seven   º',0ah,0dh
       db 'º   April named after Aphrodite              day week dates back to 600BCE,   º',0ah,0dh
       db 'º   May named after Maia                     where a holy day was celebrated  º',0ah,0dh
       db 'º   June: named after Juno                   every seven days starting with   º',0ah,0dh
       db 'º   July: named after Julius Caesar          a new moon. This period of days  º',0ah,0dh
       db 'º   August: named after Augustus Caesar      corresponds to the main phases   º',0ah,0dh
       db 'º   September: from the Latin for seven      of the moon with each quarter    º',0ah,0dh
       db 'º   October: from the Latin for eight        falling roughly seven days       º',0ah,0dh
       db 'º   November: from the Latin for nine        apart, or every 7.3825 days      º',0ah,0dh
       db 'º   December: from the Latin for ten                                          º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º                                                        Press [B]ack         º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼','$'

 brb8  db 'ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '  [E]xit to Menu    ÛÛÛÛÛ Û   Û ÛÛÛÛÛ Û   Û ÛÛÛÛÛ  ÛÛÛÛ  [A]dd Another Event   ',0ah,0dh
       db '                    Û     Û   Û Û     ÛÛ  Û   Û   Û                            ',0ah,0dh
       db '                    ÛÛÛ   Û   Û ÛÛÛ   Û Û Û   Û    ÛÛÛ   [P]roceed to Calendar ',0ah,0dh
       db '                    Û     Û  Û  Û     Û  ÛÛ   Û       Û                        ',0ah,0dh
       db '                    ÛÛÛÛÛ ÛÛÛ   ÛÛÛÛÛ Û   Û   Û   ÛÛÛÛ                         ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db 'ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ','$'

 brb9  db 'ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º               ÛÛÛ  ÛÛÛÛ  ÛÛÛÛ     ÛÛÛÛÛ Û   Û ÛÛÛÛÛ Û   Û ÛÛÛÛÛ             º',0ah,0dh
       db 'º              Û   Û Û   Û Û   Û    Û     Û   Û Û     ÛÛ  Û   Û               º',0ah,0dh
       db 'º              Û   Û Û   Û Û   Û    ÛÛÛ   Û   Û ÛÛÛ   Û Û Û   Û               º',0ah,0dh
       db 'º              ÛÛÛÛÛ Û   Û Û   Û    Û     Û   Û Û     Û  ÛÛ   Û               º',0ah,0dh
       db 'º              Û   Û Û   Û Û   Û    Û     Û   Û Û     Û   Û   Û               º',0ah,0dh
       db 'º              Û   Û ÛÛÛÛ  ÛÛÛÛ     ÛÛÛÛÛ ÛÛÛÛ  ÛÛÛÛÛ Û   Û   Û               º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º                        Ex. 2020/08/03 Birth Day Ni Crush                    º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º                      Enter:                                                 º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º                            YEAR/DAY/MONTH    EVENT TO ADD                   º',0ah,0dh
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

 brb10 db 'ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º                 ÛÛÛ   ÛÛÛ  Û   Û ÛÛÛÛ ÛÛÛÛÛ ÛÛÛÛ  Û   Û                     º',0ah,0dh
       db 'º                Û   Û Û   Û ÛÛ  Û Û      Û   Û   Û ÛÛ ÛÛ                     º',0ah,0dh
       db 'º                Û     Û   Û Û Û Û ÛÛÛ    Û   ÛÛÛÛ  Û Û Û                     º',0ah,0dh
       db 'º                Û   Û Û   Û Û  ÛÛ Û      Û   Û   Û Û   Û                     º',0ah,0dh
       db 'º                 ÛÛÛ   ÛÛÛ  Û   Û Û    ÛÛÛÛÛ Û   Û Û   Û                     º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º                                 Press                                       º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º     [E]xit to Menu      [P]roceed to January 2016     [A]dd Another Event   º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º                         [V]iew Added Events                                 º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'º                                                                             º',0ah,0dh
       db 'ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼','$'

 brb11 db '                  ÛÛ                     ÛÛ                                    ',0ah,0dh
       db '                  ÛÛÛ               ÛÛ  ÛÛÛ                                    ',0ah,0dh
       db '                   ÛÛÛ              Û  ÛÛÛ                                     ',0ah,0dh
       db '                    ÛÛÛ Û           ÛÛÛÛÛ                                      ',0ah,0dh
       db '                     ÛÛÛÛ            ÛÛÛ                                       ',0ah,0dh
       db '                     ÛÛÛÛ Û         ÛÛÛÛ Û                                     ',0ah,0dh
       db '                   ÛÛÛ ÛÛÛÛ        ÛÛÛ ÛÛÛ                                     ',0ah,0dh
       db '                  ÛÛÛÛ   ÛÛ       ÛÛÛ                                          ',0ah,0dh
       db '                  ÛÛ ÛÛÛÛÛÛÛ     ÛÛÛ            Û  Û Û ÛÛÛ  Û ÛÛÛÛÛ  ÛÛÛ       ',0ah,0dh
       db '                       ÛÛ ÛÛÛ   ÛÛÛ             Û  Û Û Û  Û Û   Û   Û   Û      ',0ah,0dh
       db '                       ÛÛ  ÛÛÛ ÛÛÛ          ÛÛÛ ÛÛÛ  Û ÛÛÛ  Û   Û   Û   Û      ',0ah,0dh
       db '                            ÛÛÛÛÛ               Û  Û Û Û  Û Û   Û   Û   Û      ',0ah,0dh
       db '                             ÛÛÛ                Û  Û Û Û  Û Û   Û    ÛÛÛ       ',0ah,0dh
       db '                            ÛÛÛÛÛ                                              ',0ah,0dh
       db '                           ÛÛÛ ÛÛÛ                                             ',0ah,0dh
       db '                          ÛÛÛ   ÛÛÛ              ÛÛ   ÛÛÛ Û  Û Û   Û  ÛÛ       ',0ah,0dh
       db '                         ÛÛÛ     ÛÛÛ            Û  Û Û    Û  Û ÛÛ  Û Û  Û      ',0ah,0dh
       db '                        ÛÛÛ       ÛÛÛ           Û  Û  ÛÛ  Û  Û Û Û Û Û  Û ÛÛÛ  ',0ah,0dh
       db '                       ÛÛÛ         ÛÛÛ          ÛÛÛÛ    Û Û  Û Û  ÛÛ ÛÛÛÛ      ',0ah,0dh
       db '                      ÛÛÛ           ÛÛÛ         Û  Û ÛÛÛ   ÛÛ  Û   Û Û  Û      ',0ah,0dh
       db '                     ÛÛÛ             ÛÛÛ                                       ',0ah,0dh
       db '                    ÛÛÛ               ÛÛÛ                                      ',0ah,0dh
       db '                   ÛÛÛ                 ÛÛÛ                 EXIT                ',0ah,0dh
       db '                  ÛÛÛ                   ÛÛÛ                                    ',0ah,0dh
       db '                  ÛÛ                     ÛÛ                                    ','$' 

main proc near
	mov sto1,00
	call clear
        mov ax,0600h
        mov bh,0ah
        mov cx,0000h
        mov dx,1950h
        int 10h
	mov col1,00
	mov row1,00
	call curse
	mov ah,09h
	lea dx,brb3
	int 21h
	call delay
menu:

	call clear
        mov ax,0600h
        mov bh,07h
        mov cx,0000h
        mov dx,1950h
        int 10h
	
        mov ax,0600h
        mov bh,0bh
        mov cx,030fh
        mov dh,06
	mov dl,60
        int 10h

        mov ax,0600h
        mov bh,0bh
        mov cx,080eh
        mov dh,11
	mov dl,61
        int 10h

        mov ax,0600h
        mov bh,0ah
        mov cx,0307h
        mov dh,21
	mov dl,11
        int 10h
 
        mov ax,0600h
        mov bh,0ah
        mov ch,03
	mov cl,67
        mov dh,21
	mov dl,71
        int 10h

        mov ax,0600h
        mov bh,0ah
        mov ch,14
	mov cl,15
        mov dh,22
	mov dl,61
        int 10h

	mov col1,00
	mov row1,00
	call curse
	mov ah,09h
	lea dx,brb4
	int 21h
ask:	
	mov ah,07h
	int 21h
	
	cmp al,'p'
	if e jmp january1 
	cmp al,'P'
	if e jmp january1 
	cmp al,'e'
	if e jmp exit
	cmp al,'E'
	if e jmp exit 
	cmp al,'g'
	if e jmp search1
	cmp al,'G'
	if e jmp search1
	cmp al,'h'
	if e jmp help1
	cmp al,'H'
	if e jmp help1
	cmp al,'a'
	if e jmp adder
	cmp al,'A'
	if e jmp adder
	cmp al,'f'
	if e jmp facts
	cmp al,'F'
	if e jmp facts   
	jmp ask

january1:


        call clear
        call disp1
        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month1
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year1
        int 21h

        mov col1,02
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
        mov col1,64
        mov row1,20
        call curse
        mov ah,09h
        lea dx,next
        int 21h


        mov col1,01
        mov row1,20
        call curse
        mov ah,09h
        lea dx,exit1
        int 21h

        mov col1,41
        mov row1,22
        call curse
        mov ah,09h
        lea dx,option
        int 21h

        mov col1,23
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
        cmp al,'N'     
        if e jmp febuary1
        cmp al,'n'
        if e jmp febuary1
        jmp act2

febuary1:

   

        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month2
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year1
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp march1
        cmp al,'n'
        if e jmp march1
        cmp al,'P'
        if e jmp january1
        cmp al,'p'
        if e jmp january1
        jmp act4

march1:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month3
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year1
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp april1
        cmp al,'n'
        if e jmp april1
        cmp al,'P'
        if e jmp febuary1
        cmp al,'p'
        if e jmp febuary1
        jmp act6
april1:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month4
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year1
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp may1
        cmp al,'n'
        if e jmp may1
        cmp al,'P'
        if e jmp march1
        cmp al,'p'
        if e jmp march1
        
        jmp act8

may1:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month5
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year1
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp june1
        cmp al,'n'
        if e jmp june1
        cmp al,'P'
        if e jmp april1
        cmp al,'p'
        if e jmp april1
        
        jmp act10

june1:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month6
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year1
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp july1
        cmp al,'n'
        if e jmp july1
        cmp al,'P'
        if e jmp may1
        cmp al,'p'
        if e jmp may1
        
        jmp act12


july1:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month7
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year1
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp august1
        cmp al,'n'
        if e jmp august1
        cmp al,'P'
        if e jmp june1
        cmp al,'p'
        if e jmp june1
        
        jmp act14

august1:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month8
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year1
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp september1
        cmp al,'n'
        if e jmp september1
        cmp al,'P'
        if e jmp july1
        cmp al,'p'
        if e jmp july1
        
        jmp act16

september1:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month9
        int 21h


        mov col1,70
        call curse

        mov ah,09
        lea dx,year1
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp october1
        cmp al,'n'
        if e jmp october1
        cmp al,'P'
        if e jmp august1
        cmp al,'p'
        if e jmp august1
        
        jmp act18

october1:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month10
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year1
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp november1
        cmp al,'n'
        if e jmp november1
        cmp al,'P'
        if e jmp september1
        cmp al,'p'
        if e jmp september1
        
        jmp act20

november1:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month11
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year1
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp december1
        cmp al,'n'
        if e jmp december1
        cmp al,'P'
        if e jmp october1
        cmp al,'p'
        if e jmp october1
        
        jmp act22

december1:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month12
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year1
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp january2
        cmp al,'n'
        if e jmp january2
        cmp al,'P'
        if e jmp november1
        cmp al,'p'
        if e jmp november1
        
        jmp act24
;.............................year 2017

january2:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month1
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year2
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp febuary2
        cmp al,'n'
        if e jmp febuary2
        cmp al,'P'
        if e jmp december1
        cmp al,'p'
        if e jmp december1
        jmp act2a

febuary2:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month2
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year2
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp march2
        cmp al,'n'
        if e jmp march2
        cmp al,'P'
        if e jmp january2
        cmp al,'p'
        if e jmp january2
        jmp act4a

march2:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month3
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year2
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp april2
        cmp al,'n'
        if e jmp april2
        cmp al,'P'
        if e jmp febuary2
        cmp al,'p'
        if e jmp febuary2
        jmp act6a
april2:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month4
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year2
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp may2
        cmp al,'n'
        if e jmp may2
        cmp al,'P'
        if e jmp march2
        cmp al,'p'
        if e jmp march2
        
        jmp act8a

may2:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month5
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year2
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp june2
        cmp al,'n'
        if e jmp june2
        cmp al,'P'
        if e jmp april2
        cmp al,'p'
        if e jmp april2
        
        jmp act10a

june2:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month6
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year2
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp july2
        cmp al,'n'
        if e jmp july2
        cmp al,'P'
        if e jmp may2
        cmp al,'p'
        if e jmp may2
        
        jmp act12a


july2:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month7
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year2
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp august2
        cmp al,'n'
        if e jmp august2
        cmp al,'P'
        if e jmp june2
        cmp al,'p'
        if e jmp june2
        
        jmp act14a

august2:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month8
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year2
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp september2
        cmp al,'n'
        if e jmp september2
        cmp al,'P'
        if e jmp july2
        cmp al,'p'
        if e jmp july2
        
        jmp act16a

september2:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month9
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year2
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp october2
        cmp al,'n'
        if e jmp october2
        cmp al,'P'
        if e jmp august2
        cmp al,'p'
        if e jmp august2
        
        jmp act18a

october2:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month10
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year2
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp november2
        cmp al,'n'
        if e jmp november2
        cmp al,'P'
        if e jmp september2
        cmp al,'p'
        if e jmp september2
        
        jmp act20a

november2:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month11
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year2
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp december2
        cmp al,'n'
        if e jmp december2
        cmp al,'P'
        if e jmp october2
        cmp al,'p'
        if e jmp october2
        
        jmp act22a

december2:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month12
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year2
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp january3
        cmp al,'n'
        if e jmp january3
        cmp al,'P'
        if e jmp november2
        cmp al,'p'
        if e jmp november2
        
        jmp act24a

;......................year 2018

january3:
   
        call clear
        call disp1
            
        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month1
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year3
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp febuary3
        cmp al,'n'
        if e jmp febuary3
        cmp al,'P'
        if e jmp december2
        cmp al,'p'
        if e jmp december2
        jmp act2b

febuary3:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month2
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year3
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp march3
        cmp al,'n'
        if e jmp march3
        cmp al,'P'
        if e jmp january3
        cmp al,'p'
        if e jmp january3
        jmp act4b

march3:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month3
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year3
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp april3
        cmp al,'n'
        if e jmp april3
        cmp al,'P'
        if e jmp febuary3
        cmp al,'p'
        if e jmp febuary3
        jmp act6b
april3:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month4
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year3
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp may3
        cmp al,'n'
        if e jmp may3
        cmp al,'P'
        if e jmp march3
        cmp al,'p'
        if e jmp march3
        
        jmp act8b

may3:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month5
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year3
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp june3
        cmp al,'n'
        if e jmp june3
        cmp al,'P'
        if e jmp april3
        cmp al,'p'
        if e jmp april3
        
        jmp act10b

june3:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month6
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year3
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp july3
        cmp al,'n'
        if e jmp july3
        cmp al,'P'
        if e jmp may3
        cmp al,'p'
        if e jmp may3
        
        jmp act12b


july3:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month7
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year3
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp august3
        cmp al,'n'
        if e jmp august3
        cmp al,'P'
        if e jmp june3
        cmp al,'p'
        if e jmp june3
        
        jmp act14b

august3:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month8
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year3
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp september3
        cmp al,'n'
        if e jmp september3
        cmp al,'P'
        if e jmp july3
        cmp al,'p'
        if e jmp july3
        
        jmp act16b

september3:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month9
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year3
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp october3
        cmp al,'n'
        if e jmp october3
        cmp al,'P'
        if e jmp august3
        cmp al,'p'
        if e jmp august3
        
        jmp act18b

october3:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month10
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year3
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp november3
        cmp al,'n'
        if e jmp november3
        cmp al,'P'
        if e jmp september3
        cmp al,'p'
        if e jmp september3
        
        jmp act20b

november3:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month11
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year3
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp december3
        cmp al,'n'
        if e jmp december3
        cmp al,'P'
        if e jmp october3
        cmp al,'p'
        if e jmp october3
        
        jmp act22b

december3:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month12
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year3
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp january4
        cmp al,'n'
        if e jmp january4
        cmp al,'P'
        if e jmp november3
        cmp al,'p'
        if e jmp november3
        
        jmp act24b

;..........................year 2019


january4:
   
        call clear
        call disp1
            
        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month1
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year4
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp febuary4
        cmp al,'n'
        if e jmp febuary4
        cmp al,'P'
        if e jmp december3
        cmp al,'p'
        if e jmp december3
        jmp act2c

febuary4:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month2
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year4
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp march4
        cmp al,'n'
        if e jmp march4
        cmp al,'P'
        if e jmp january4
        cmp al,'p'
        if e jmp january4
        jmp act4c

march4:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month3
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year4
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp april4
        cmp al,'n'
        if e jmp april4
        cmp al,'P'
        if e jmp febuary4
        cmp al,'p'
        if e jmp febuary4
        jmp act6c
april4:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month4
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year4
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp may4
        cmp al,'n'
        if e jmp may4
        cmp al,'P'
        if e jmp march4
        cmp al,'p'
        if e jmp march4
        
        jmp act8c

may4:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month5
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year4
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp june4
        cmp al,'n'
        if e jmp june4
        cmp al,'P'
        if e jmp april4
        cmp al,'p'
        if e jmp april4
        
        jmp act10c

june4:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month6
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year4
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp july4
        cmp al,'n'
        if e jmp july4
        cmp al,'P'
        if e jmp may4
        cmp al,'p'
        if e jmp may4
        
        jmp act12c


july4:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month7
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year4
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp august4
        cmp al,'n'
        if e jmp august4
        cmp al,'P'
        if e jmp june4
        cmp al,'p'
        if e jmp june4
        
        jmp act14c

august4:	
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month8
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year4
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp september4
        cmp al,'n'
        if e jmp september4
        cmp al,'P'
        if e jmp july4
        cmp al,'p'
        if e jmp july4
        
        jmp act16c

september4:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month9
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year4
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp october4
        cmp al,'n'
        if e jmp october4
        cmp al,'P'
        if e jmp august4
        cmp al,'p'
        if e jmp august4
        
        jmp act18c

october4:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month10
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year4
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp november4
        cmp al,'n'
        if e jmp november4
        cmp al,'P'
        if e jmp september4
        cmp al,'p'
        if e jmp september4
        
        jmp act20c

november4:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month11
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year4
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp december4
        cmp al,'n'
        if e jmp december4
        cmp al,'P'
        if e jmp october4
        cmp al,'p'
        if e jmp october4
        
        jmp act22c

december4:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month12
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year4
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp january5
        cmp al,'n'
        if e jmp january5
        cmp al,'P'
        if e jmp november4
        cmp al,'p'
        if e jmp november4
        
        jmp act24c
 
;...........................year 2020


january5:
   
        call clear
        call disp1
            
        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month1
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year5
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp febuary5
        cmp al,'n'
        if e jmp febuary5
        cmp al,'P'
        if e jmp december4
        cmp al,'p'
        if e jmp december4
        jmp act2d

febuary5:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month2
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year5
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp march5
        cmp al,'n'
        if e jmp march5
        cmp al,'P'
        if e jmp january5
        cmp al,'p'
        if e jmp january5
        jmp act4d

march5:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month3
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year5
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp april5
        cmp al,'n'
        if e jmp april5
        cmp al,'P'
        if e jmp febuary5
        cmp al,'p'
        if e jmp febuary5
        jmp act6d
april5:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month4
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year5
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp may5
        cmp al,'n'
        if e jmp may5
        cmp al,'P'
        if e jmp march5
        cmp al,'p'
        if e jmp march5
        
        jmp act8d

may5:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month5
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year5
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp june5
        cmp al,'n'
        if e jmp june5
        cmp al,'P'
        if e jmp april5
        cmp al,'p'
        if e jmp april5
        
        jmp act10d

june5:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month6
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year5
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp july5
        cmp al,'n'
        if e jmp july5
        cmp al,'P'
        if e jmp may5
        cmp al,'p'
        if e jmp may5
        
        jmp act12d


july5:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month7
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year5
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp august5
        cmp al,'n'
        if e jmp august5
        cmp al,'P'
        if e jmp june5
        cmp al,'p'
        if e jmp june5
        
        jmp act14d

august5:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month8
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year5
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp september5
        cmp al,'n'
        if e jmp september5
        cmp al,'P'
        if e jmp july5
        cmp al,'p'
        if e jmp july5
        
        jmp act16d

september5:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month9
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year5
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp october5
        cmp al,'n'
        if e jmp october5
        cmp al,'P'
        if e jmp august5
        cmp al,'p'
        if e jmp august5
        
        jmp act18d

october5:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month10
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year5
        int 21h

        mov col1,02
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
        if e jmp act20d
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
        cmp al,'N'
        if e jmp november5
        cmp al,'n'
        if e jmp november5
        cmp al,'P'
        if e jmp september5
        cmp al,'p'
        if e jmp september5
        
        jmp act20d

november5:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month11
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year5
        int 21h

        mov col1,02
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
        cmp al,'N'
        if e jmp december5
        cmp al,'n'
        if e jmp december5
        cmp al,'P'
        if e jmp october5
        cmp al,'p'
        if e jmp october5
        
        jmp act22d

december5:
   
        call clear
        call disp1

        mov col1,60
        mov row1,01
        call curse

        mov ah,09h
        lea dx,month12
        int 21h

        mov col1,70
        call curse

        mov ah,09
        lea dx,year5
        int 21h

        mov col1,02
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

        mov col1,64
        mov row1,20
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

        mov col1,41
        mov row1,22
        call curse
        mov ah,09h
        lea dx,option
        int 21h

        mov col1,23
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
        cmp al,'P'
        if e jmp november5
        cmp al,'p'
        if e jmp november5
        
        jmp act24d

;...........................Exit program
exit:
	call clear
        mov ax,0600h
        mov bh,70h
        mov cx,0000h
        mov dx,1950h
        int 10h

        mov ax,0600h
        mov bh,7bh
        mov cx,0d00h
        mov dx,191dh
        int 10h

        mov ax,0600h
        mov bh,7bh
        mov cx,001fh
        mov dx,0b2bh
        int 10h

	mov col1,00
	mov row1,00
	call curse
	mov ah,09h
	lea dx,brb11
	int 21h
	call delay
        
	int 20h

        main endp
        end main
;...........................Finding Year & Month
search1:
        call clear
        call disp1

        mov ax,0600h
        mov bh,90h
        mov cx,0000h
        mov dx,0650h
        int 10h

        mov ax,0600h
        mov bh,90h
        mov cx,1000h
        mov dx,1950h
        int 10h

	mov col1,00
	mov row1,00
	call curse
	mov ah,09h
	lea dx,brb2
	int 21h 

        mov col1,28
        mov row1,10
        call curse
        mov ah,09h
        lea dx,ins1
        int 21h
        inc row1
        call curse
        mov ah,09h
        lea dx,ins2
        int 21h 

        mov col1,40
        mov row1,10
        call curse
        mov ah,0ah
        lea dx,string1
        int 21h

        inc col1
        inc row1
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
        lea si,year1
        repe cmpsb
        if e jmp monthly1

        cld
        mov ch,00
        mov cl,actlen1
        lea di,kybd1
        lea si,year2
        repe cmpsb
        if e jmp monthly2

        cld
        mov ch,00
        mov cl,actlen1
        lea di,kybd1
        lea si,year3
        repe cmpsb
        if e jmp monthly3

        cld
        mov ch,00
        mov cl,actlen1
        lea di,kybd1
        lea si,year4
        repe cmpsb
        if e jmp monthly4

        cld
        mov ch,00
        mov cl,actlen1
        lea di,kybd1
        lea si,year5
        repe cmpsb
        if e jmp monthly5

        jmp search1

;......................Finding Month at 2016 

monthly1:
        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month1
        repe cmpsb
        if e jmp january1

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month2
        repe cmpsb
        if e jmp febuary1

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month3
        repe cmpsb
        if e jmp march1

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month4
        repe cmpsb
        if e jmp april1

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month5
        repe cmpsb
        if e jmp may1

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month6
        repe cmpsb
        if e jmp june1

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month7
        repe cmpsb
        if e jmp july1

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month8
        repe cmpsb
        if e jmp august1

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month9
        repe cmpsb
        if e jmp september1

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month10
        repe cmpsb
        if e jmp october1

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month11
        repe cmpsb
        if e jmp november1

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month12
        repe cmpsb
        if e jmp december1

        jmp search1

;......................Finding Month at 2017

monthly2:
        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month1
        repe cmpsb
        if e jmp january2

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month2
        repe cmpsb
        if e jmp febuary2

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month3
        repe cmpsb
        if e jmp march2

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month4
        repe cmpsb
        if e jmp april2

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month5
        repe cmpsb
        if e jmp may2

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month6
        repe cmpsb
        if e jmp june2

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month7
        repe cmpsb
        if e jmp july2

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month8
        repe cmpsb
        if e jmp august2

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month9
        repe cmpsb
        if e jmp september2

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month10
        repe cmpsb
        if e jmp october2

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month11
        repe cmpsb
        if e jmp november2

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month12
        repe cmpsb
        if e jmp december2

        jmp search1

;......................Finding Month at 2018

monthly3:
        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month1
        repe cmpsb
        if e jmp january3

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month2
        repe cmpsb
        if e jmp febuary3

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month3
        repe cmpsb
        if e jmp march3

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month4
        repe cmpsb
        if e jmp april3

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month5
        repe cmpsb
        if e jmp may3

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month6
        repe cmpsb
        if e jmp june3

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month7
        repe cmpsb
        if e jmp july3

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month8
        repe cmpsb
        if e jmp august3

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month9
        repe cmpsb
        if e jmp september3

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month10
        repe cmpsb
        if e jmp october3

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month11
        repe cmpsb
        if e jmp november3

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month12
        repe cmpsb
        if e jmp december3

        jmp search1

;......................Finding Month at 2019

monthly4:
        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month1
        repe cmpsb
        if e jmp january4

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month2
        repe cmpsb
        if e jmp febuary4

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month3
        repe cmpsb
        if e jmp march4

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month4
        repe cmpsb
        if e jmp april4

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month5
        repe cmpsb
        if e jmp may4

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month6
        repe cmpsb
        if e jmp june4

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month7
        repe cmpsb
        if e jmp july4

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month8
        repe cmpsb
        if e jmp august4

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month9
        repe cmpsb
        if e jmp september4

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month10
        repe cmpsb
        if e jmp october4

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month11
        repe cmpsb
        if e jmp november4

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month12
        repe cmpsb
        if e jmp december4

        jmp search1

;......................Finding Month at 2020

monthly5:
        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month1
        repe cmpsb
        if e jmp january5

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month2
        repe cmpsb
        if e jmp febuary5

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month3
        repe cmpsb
        if e jmp march5

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month4
        repe cmpsb
        if e jmp april5

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month5
        repe cmpsb
        if e jmp may5

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month6
        repe cmpsb
        if e jmp june5

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month7
        repe cmpsb
        if e jmp july5

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month8
        repe cmpsb
        if e jmp august5

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month9
        repe cmpsb
        if e jmp september5

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month10
        repe cmpsb
        if e jmp october5

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month11
        repe cmpsb
        if e jmp november5

        cld
        mov ch,00
        mov cl,actlen2
        lea di,kybd2
        lea si,month12
        repe cmpsb
        if e jmp december5

	lea di , even_view
        jmp search1
;...........................Help display

help1:
	call clear

        mov ax,0600h
        mov bh,0dh
        mov cx,0000h
        mov dx,1950h
        int 10h

	mov col1,00
	mov row1,00
	call curse
	mov ah,09h
	lea dx,brb5
	int 21h
ask1:
	mov ah,07h
	int 21h

	cmp al,'b'
	if e jmp menu
	cmp al,'B'
	if e jmp menu
	cmp al,'c'
	if e jmp credits
	cmp al,'C'
	if e jmp credits 
	jmp ask1
;...........................Credits display

credits:
	call clear

        mov ax,0600h
        mov bh,0bh
        mov cx,0000h
        mov dx,1950h
        int 10h

	mov col1,00
	mov row1,00
	call curse
	mov ah,09h
	lea dx,brb6
	int 21h
ask2:
	mov ah,07h
	int 21h

	cmp al,'b'
	if e jmp menu
	cmp al,'B'
	if e jmp menu 
	jmp ask2
;...........................fun facts display

facts:
	call clear

        mov ax,0600h
        mov bh,0dh
        mov cx,0000h
        mov dx,1950h
        int 10h

	mov col1,00
	mov row1,00
	call curse
	mov ah,09h
	lea dx,brb7
	int 21h
ask3:
	mov ah,07h
	int 21h

	cmp al,'b'
	if e jmp menu
	cmp al,'B'
	if e jmp menu 
	jmp ask3	
;...........................The adding of Events

	
   
adder:
	mov cx,sto1
	mov bx,cx
        call clear
        mov ax,0600h
        mov bh,70h
        mov cx,0000h
        mov dx,1950h
        int 10h

	mov ax, 0600h
	mov bh, 90h
	mov cx, 0000h
	mov dx, 0850h
	int 10h

        mov col1,00
        mov row1,00
        call curse
        mov ah,09h
        lea dx,brb9
        int 21h
        
        mov col1,29
        mov row1,12
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
	mov sto1,cx 
	jmp confirm

confirm:
	call clear

        mov ax,0600h
        mov bh,70h
        mov cx,0000h
        mov dx,1950h
        int 10h
	
	mov ax, 0600h
	mov bh, 90h
	mov cx, 0000h
	mov dx, 0850h
	int 10h

        mov col1,00
        mov row1,00
        call curse
        mov ah,09h
        lea dx,brb10
        int 21h
ask5:
	mov ah,07h
	int 21h
	
	cmp al,'e'
	if e jmp menu
	cmp al,'E'
	if e jmp menu
	cmp al,'v'
	if e jmp pili
	cmp al,'V'
	if e jmp pili
	cmp al,'p'
	if e jmp january1
	cmp al,'P'
	if e jmp january1
	cmp al,'a'
	if e jmp adder
	cmp al,'A'
	if e jmp adder
	jmp ask5

;.......................Display events
		
pili:

	call clear

	mov ax, 0600h
	mov bh, 70h
	mov cx, 0000h
	mov dx, 1950h
	int 10h
	
	mov ax, 0600h
	mov bh, 90h
	mov cx, 0000h
	mov dx, 0950h
	int 10h

	mov ah, 09h
	lea dx, brb8
	int 21h

	mov col1, 07
	mov row1, 11
	call curse
	lea dx, even_view
	mov ah, 09h
	int 21h
	
ask4:
	mov ah,07h
	int 21h

	cmp al,'e'
	if e jmp menu
	cmp al,'E'
	if e jmp menu
	cmp al,'a'
	if e jmp adder
	cmp al,'A'
	if e jmp adder
	cmp al,'p'
	if e jmp january1
	cmp al,'P'
	if e jmp january1
	jmp ask4

		                          
;...........................Call Center


;----------------------->set Coursor
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
;---------------------->Calendar Number Placing
column proc near
        mov col2,03
        inc row2,02
        ret        
        column endp

attrib proc near
        mov att2,48
        inc att1
        ret
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
	mov color,74h
	ret
	red endp

black proc near
	mov color,70h
	ret
	black endp

disp1 proc near
 
        mov ax,0600h
        mov bh,5eh
        mov cx,0000h
        mov dx,0550h
        int 10h

        mov ax,0600h
        mov bh,70h
        mov cx,0500h
        mov dx,1950h
        int 10h

        mov ax,0600h
        mov bh,0eh
        mov cx,1200h
        mov dx,1950h
        int 10h

	mov col1,00
	mov row1,00
	call curse
	mov ah,09h
	lea dx,brb1
	int 21h
        ret
        disp1 endp
;------------------------->Displays Options
press proc near
        mov col1,64
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

        mov col1,51
        mov row1,22
        call curse
        mov ah,09h
        lea dx,exit1
        int 21h

        mov col1,33
        mov row1,22
        call curse
        mov ah,09h
        lea dx,option
        int 21h

        mov col1,17
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

;-------------------->Compares Letter to Jump

choice proc near
   
        cmp al,'A'
        if e jmp adder
        cmp al,'a'
        if e jmp adder
        cmp al,'G'
        if e jmp search1
        cmp al,'g'
        if e jmp search1
        cmp al,'E'
        if e jmp menu
        cmp al,'e'
        if e jmp menu
        ret
        choice endp
;--------------------->Delays a Display
delay proc near                 
		    
	mov del1,5000
      
lpo13:	mov del2,0ffffh
lpo14:	nop
		dec del2
		jnz lpo14
		dec del1
		jnz lpo13
	 ret
         delay endp
        
        
        

