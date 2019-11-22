.model small
.code
org 100h
jmp menu
string1 db      '','$'
string2	db		'|','$'

cong            db' ;------------       ',0ah,0dh				;you win! :)
                db' ;Congrats :)        ',0ah,0dh
                db' ;------------       ',0ah,0dh
                db' Tnx for playing...  ',0ah,0dh
                db' Press any key to continue...','$'

life 			db 		01h
g2_max			db 		?

life_1          db              ' Life left : 0','$'
life_2          db              ' Life left : 1','$'
life_3          db              ' Life left : 2','$'
life_4          db              ' Life left : 3','$'


game_o          db' ;-------------      ',0ah,0dh
                db' ;Game Over :(       ',0ah,0dh
                db' ;-------------      ',0ah,0dh                                       
                db' Press any key to continue...','$'

marg1   db  ' ⁄ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒø',0ah,0dh
        db  ' ≥                                                                            ≥',0ah,0dh
        db  ' ≥                                                                            ≥',0ah,0dh 
        db  ' ≥                                                                            ≥',0ah,0dh
        db  ' ≥                                                                            ≥',0ah,0dh 
        db  ' ≥                                                                            ≥',0ah,0dh
        db  ' ≥                                                                            ≥',0ah,0dh
        db  ' ≥                                                                            ≥',0ah,0dh 
        db  ' ≥                                                                            ≥',0ah,0dh
        db  ' ≥                                                                            ≥',0ah,0dh
        db  ' ≥                                                                            ≥',0ah,0dh
        db  ' ≥                                                                            ≥',0ah,0dh
        db  ' ≥                                                                            ≥',0ah,0dh
        db  ' ≥                                                                            ≥',0ah,0dh
        db  ' ≥                                                                            ≥',0ah,0dh
        db  ' ≥                                                                            ≥',0ah,0dh
        db  ' ≥                                                                            ≥',0ah,0dh
        db  ' ≥                                                                            ≥',0ah,0dh
        db  ' ≥                                                                            ≥',0ah,0dh
        db  ' ≥                                                                            ≥',0ah,0dh
        db  ' ≥                                                                            ≥',0ah,0dh
        db  ' ≥                                                                            ≥',0ah,0dh
        db  ' ≥                                                                            ≥',0ah,0dh
        db  ' ¿ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒŸ',0ah,0dh,'$'

;€

block1  db  '                                                                ',0ah,0dh
        db  '              €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€',0ah,0dh
        db  '              €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€',0ah,0dh
        db  '              €€                                             €€€',0ah,0dh
        db  '              €€ €€€€ €€€€  €€€€€€€€  €€€€€€€€€€ €€€€€€€€€€€ €€€',0ah,0dh
        db  '              €€ €€€€ €€€€ €€€€€€€€€€ €€€€€€€€€€ €€€€€€€€€€€ €€€',0ah,0dh
        db  '              €€ €€€€€€€€€ €€€€€€€€€€ €€€€€€€€€€ €€€€€€      €€€',0ah,0dh
        db  '              €€ €€€€€€€€€ €€€€€€€€€€    €€€€€€  €€€€€€€€€€  €€€',0ah,0dh
        db  '              €€ €€€€€€€€€ €€€€  €€€€   €€€€€€   €€€€€€€€€€  €€€',0ah,0dh
        db  '              €€ €€€€€€€€€ €€€€€€€€€€  €€€€€€    €€€€€€      €r€',0ah,0dh
        db  '              €€ €€€€€€€€€ €€€€€€€€€€ €€€€€€€€€€ €€€€€€€€€€€ €n€',0ah,0dh
        db  '              €€ € €€€€ €€ €€€€€ €€€€ €€€€€€€€€€ €€€€€€€€€€€ €o€',0ah,0dh
        db  '              €€ € €€€€ €€ €€€€€ €€€€ €€€€€€€€€€ €€€€€€€€€€€ €€€',0ah,0dh
        db  '              €€                                             €€€',0ah,0dh 
        db  '              €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€',0ah,0dh
        db  '              €€€€€€€€€€€€€€€€€€€€Press Any Key€€€€€€€€€€€€€€€€€',0ah,0dh
        db  '              €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€',0ah,0dh,'$'


map1    db   '                                                                                ',0ah,0dh
        db   ' ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤',0ah,0dh
        db   '  ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ ',0ah,0dh
        db   ' ≤              ≤≤≤≤   ≤≤   ≤≤≤≤≤≤≤    ≤≤≤  ≤≤≤≤        ≤    ≤≤ ≤ ≤≤ ≤≤ ≤   ≤≤≤',0ah,0dh
        db   '  ≤≤ ≤≤≤≤≤ ≤≤≤≤      ≤ ≤≤≤ ≤        ≤≤    ≤      ≤≤≤ ≤≤≤≤≤ ≤≤≤≤ ≤ ≤≤≤≤≤ ≤ ≤≤ ≤ ',0ah,0dh
        db   ' ≤≤≤ ≤≤    ≤≤≤≤ ≤≤ ≤≤≤≤  ≤ ≤≤≤≤  ≤≤≤   ≤≤ ≤ ≤≤≤≤≤≤≤     ≤≤ ≤    ≤       ≤  ≤≤≤≤',0ah,0dh
        db   '  ≤≤    ≤≤≤≤≤≤≤ ≤≤      ≤      ≤≤ ≤≤ ≤ ≤≤    ≤  ≤≤≤ ≤≤ ≤≤  ≤ ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ ',0ah,0dh
        db   ' ≤≤≤≤≤ ≤≤≤≤     ≤≤ ≤≤≤≤ ≤≤≤ ≤ ≤≤≤≤ ≤ ≤ ≤≤≤≤≤≤≤≤   ≤ ≤≤ ≤≤≤≤≤ ≤              ˚≤≤',0ah,0dh
        db   '  ≤    ≤≤≤ ≤ ≤≤    ≤  ≤    ≤≤ ≤≤≤≤ ≤  ≤≤   ≤ ≤≤≤≤    ≤    ≤≤ ≤ ≤≤≤≤ ≤≤≤≤ ≤≤≤≤≤ ',0ah,0dh
        db   ' ≤≤ ≤≤     ≤   ≤≤≤≤≤≤ ≤≤≤≤≤≤        ≤ ≤≤ ≤≤≤    ≤ ≤ ≤≤≤≤≤        ≤≤  ≤ ≤  ≤≤≤≤≤',0ah,0dh
        db   '  ≤ ≤≤ ≤≤≤≤≤≤≤      ≤    ≤≤≤ ≤≤≤≤≤≤≤≤ ≤≤   ≤≤≤≤   ≤ ≤ ≤≤≤ ≤ ≤≤≤≤ ≤≤≤≤≤≤≤≤    ≤ ',0ah,0dh
        db   ' ≤≤ ≤≤      ≤  ≤≤≤≤ ≤ ≤≤          ≤≤≤   ≤≤    ≤≤≤≤≤≤≤  ≤≤ ≤≤≤≤ ≤     ≤≤   ≤≤ ≤≤',0ah,0dh
        db   '  ≤   ≤≤ ≤≤ ≤≤≤≤≤≤≤ ≤≤≤≤≤≤≤≤≤ ≤≤≤     ≤≤≤≤ ≤≤    ≤    ≤≤≤ ≤    ≤ ≤≤≤  ≤≤≤ ≤≤ ≤ ',0ah,0dh
        db   ' ≤≤≤≤ ≤≤ ≤≤     ≤≤≤        ≤≤     ≤≤≤≤≤    ≤≤ ≤≤ ≤≤≤≤   ≤ ≤≤ ≤≤≤ ≤ ≤≤ ≤≤≤≤≤≤ ≤≤',0ah,0dh
        db   '  ≤   ≤≤    ≤≤≤ ≤≤≤≤≤≤≤ ≤≤ ≤≤ ≤≤≤≤≤ ≤≤≤≤≤≤≤≤≤≤≤≤ ≤  ≤ ≤≤≤  ≤ ≤   ≤  ≤ ≤ ≤≤   ≤ ',0ah,0dh
        db   ' ≤≤≤≤ ≤≤≤ ≤≤≤≤≤       ≤ ≤≤ ≤≤                      ≤≤ ≤≤≤≤≤  ≤≤≤≤≤≤ ≤     ≤≤ ≤≤',0ah,0dh
        db   '  ≤≤≤ ≤ ≤     ≤≤≤≤ ≤≤≤≤ ≤≤ ≤≤≤ ≤≤≤≤ ≤≤≤≤≤≤≤≤≤≤≤≤≤≤ ≤≤     ≤≤≤     ≤ ≤ ≤ ≤    ≤ ',0ah,0dh
        db   ' ≤≤≤≤ ≤≤≤ ≤≤≤≤≤≤ ≤≤≤≤ ≤ ≤≤   ≤    ≤      ≤≤≤≤≤ ≤ ≤ ≤≤≤≤≤≤≤ ≤≤≤≤≤ ≤≤ ≤  ≤≤ ≤≤≤≤≤',0ah,0dh
        db   '  ≤   ≤≤≤     ≤≤    ≤     ≤≤ ≤ ≤≤ ≤ ≤≤≤≤    ≤≤   ≤       ≤     ≤ ≤   ≤ ≤  ≤ ≤≤ ',0ah,0dh
        db   ' ≤≤ ≤≤≤≤≤≤≤≤≤ ≤≤ ≤≤ ≤≤≤≤ ≤≤≤≤≤ ≤≤ ≤ ≤≤   ≤ ≤≤≤ ≤ ≤≤ ≤≤≤≤≤≤ ≤≤ ≤≤≤≤≤≤ ≤≤≤ ≤≤  ≤≤',0ah,0dh
        db   '  ≤              ≤≤    ≤       ≤≤     ≤≤≤≤     ≤    ≤      ≤ ≤≤      ≤   ≤  ≤≤ ',0ah,0dh
        db   ' ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤',0ah,0dh
        db   '  ≤≤ ˚ - Finish ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ Created by: RNO ≤≤≤ ',0ah,0dh
        db   '                                    Level 1                                    ',0ah,0dh,'$'
		
map2    db   '                                                                               ',0ah,0dh
        db   ' ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤',0ah,0dh
        db   '  ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ ',0ah,0dh
        db   ' ≤≤≤  ≤    ≤≤      ≤   ≤≤≤≤≤≤≤≤    ≤   ≤   ≤≤    ≤≤ ≤   ≤≤       ≤        ≤ ≤≤',0ah,0dh
        db   '  ≤ ≤ ≤≤≤≤    ≤≤≤≤ ≤≤≤    ≤ ≤   ≤≤  ≤≤≤≤≤≤ ≤≤≤≤≤≤≤≤ ≤≤≤≤    ≤≤ ≤≤≤≤≤ ≤≤≤≤≤   ≤ ',0ah,0dh
        db   ' ≤≤ ≤      ≤ ≤       ≤ ≤ ≤≤≤≤≤ ≤≤≤≤     ≤≤               ≤≤ ≤     ≤≤   ≤≤≤ ≤≤≤≤',0ah,0dh
        db   '  ≤≤≤ ≤≤ ≤≤≤≤≤ ≤≤≤≤≤≤≤ ≤       ≤ ≤ ≤≤≤    ≤≤≤≤ ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ ≤≤  ≤  ≤    ≤ ',0ah,0dh
        db   ' ≤        ≤      ≤ ≤   ≤ ≤≤ ≤≤≤≤≤     ≤ ≤≤≤≤≤ ≤ ≤≤           ≤ ≤    ≤ ≤ ≤≤≤≤ ≤≤',0ah,0dh
        db   '  ≤≤≤ ≤≤≤ ≤ ≤≤ ≤≤≤≤≤≤≤≤≤≤≤≤ ≤≤  ≤ ≤≤≤      ≤≤ ≤ ≤≤ ≤≤≤≤≤≤ ≤ ≤≤ ≤≤≤≤ ≤ ≤ ≤  ≤ ≤ ',0ah,0dh
        db   ' ≤≤≤≤ ≤ ≤ ≤≤≤≤                ≤ ≤≤≤ ≤ ≤≤≤≤≤   ≤≤≤≤ ≤    ≤ ≤≤≤≤   ≤≤     ≤≤   ≤≤',0ah,0dh
        db   '  ≤   ≤ ≤≤≤ ≤≤≤≤ ≤≤≤≤≤≤≤ ≤≤≤ ≤≤ ≤       ≤≤≤ ≤≤≤≤≤  ≤≤≤ ≤  ≤≤   ≤ ≤≤≤≤ ≤≤≤≤ ≤≤≤ ',0ah,0dh
        db   ' ≤≤ ≤ ≤     ≤ ≤≤     ≤     ≤     ≤≤ ≤≤≤           ≤≤≤≤ ≤ ≤   ≤≤≤    ≤≤≤     ≤≤',0ah,0dh
        db   '  ≤ ≤ ≤≤≤≤≤ ≤    ≤≤≤   ≤≤≤   ≤≤≤≤≤≤ ≤   ≤≤ ≤≤≤ ≤≤≤≤    ≤ ≤≤≤     ≤≤ ≤ ≤ ≤≤≤≤≤≤ ',0ah,0dh
        db   ' ≤≤ ≤      ≤≤ ≤≤≤≤ ≤ ≤     ≤ ≤      ≤ ≤≤≤   ≤≤ ≤ ≤≤≤ ≤     ≤ ≤≤≤≤ ≤          ˚≤',0ah,0dh
        db   '  ≤ ≤≤≤ ≤≤    ≤   ≤≤ ≤≤≤ ≤≤≤ ≤ ≤≤≤≤≤≤    ≤≤ ≤≤       ≤≤≤ ≤≤≤    ≤≤≤≤≤ ≤≤≤≤≤ ≤≤ ',0ah,0dh
        db   ' ≤≤ ≤ ≤ ≤≤≤≤≤≤≤≤≤      ≤ ≤  ≤≤ ≤ ≤  ≤≤≤≤≤≤≤ ≤≤ ≤ ≤ ≤≤≤≤≤     ≤≤    ≤≤ ≤≤≤   ≤≤≤',0ah,0dh
        db   '  ≤ ≤ ≤      ≤ ≤≤ ≤≤ ≤≤≤ ≤≤≤      ≤ ≤       ≤≤≤≤≤≤       ≤≤≤≤≤≤ ≤≤≤≤≤ ≤≤≤ ≤≤≤≤ ',0ah,0dh
        db   ' ≤≤ ≤ ≤≤≤≤≤ ≤  ≤≤ ≤≤ ≤≤   ≤≤ ≤≤≤≤≤≤ ≤≤ ≤≤≤≤≤≤≤ ≤   ≤≤≤≤≤≤≤    ≤  ≤        ≤  ≤≤',0ah,0dh
        db   '  ≤ ≤   ≤ ≤ ≤≤ ≤≤≤ ≤    ≤≤≤≤    ≤   ≤≤   ≤     ≤≤≤≤≤   ≤ ≤≤≤≤≤ ≤≤≤≤ ≤≤≤ ≤≤≤ ≤ ',0ah,0dh
        db   ' ≤≤ ≤≤≤≤≤≤≤ ≤≤≤≤ ≤≤≤≤≤ ≤≤ ≤≤ ≤≤ ≤ ≤≤≤≤≤≤ ≤≤≤≤≤≤≤ ≤≤≤ ≤≤≤≤ ≤        ≤ ≤  ≤  ≤ ≤≤',0ah,0dh
        db   '  ≤           ≤    ≤        ≤≤                      ≤    ≤ ≤≤≤≤≤≤ ≤ ≤ ≤ ≤ ≤ ≤ ',0ah,0dh
        db   ' ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤',0ah,0dh
        db   '  ≤≤ ˚ - Finish ≤≤≤   -Life  ≤≤≤≤ Level 2 ≤≤≤≤≤≤≤≤≤≤ -Hit the ˚ twice ≤≤≤≤≤≤≤ ',0ah,0dh
        db   '                    ˘Move Left:                                                ',0ah,0dh,'$'

		
map3    db   '                                                                               ',0ah,0dh
        db   '  ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ ',0ah,0dh
        db   ' ≤≤≤   ≤≤≤   ≤≤≤ ≤≤≤ |    `≤        ≤≤    ≤  ≤≤≤≤ `≤≤       |  ≤ ≤       ≤ ≤≤≤≤',0ah,0dh
        db   '  ≤ ≤≤    ≤ ≤    |   ≤≤≤ ≤≤≤ ≤≤≤≤≤≤  ≤≤≤≤≤≤≤      ≤≤≤ ≤≤ ≤≤≤≤≤≤≤≤≤ ≤≤ ≤≤   | ≤ ',0ah,0dh
        db   ' ≤≤ ≤≤ ≤≤ ≤≤≤ ≤≤≤≤≤≤ ≤   ≤   ≤    ≤≤   |  `  ≤≤≤≤ ≤          ˚≤  ≤ ≤≤    ≤≤≤ ≤≤',0ah,0dh
        db   '  ≤≤≤  `≤     ≤ `| ≤ ≤ ≤≤≤ ≤≤≤ ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ ≤≤ ≤≤≤ ≤≤ ≤≤ ≤≤≤≤ ≤   ≤≤ ≤≤ | ≤ ',0ah,0dh
        db   ' ≤≤   ≤≤≤≤≤≤≤≤≤ ≤≤ ≤ ≤≤≤   `≤≤≤≤      |     ≤   ≤ `|`  `     `| ≤≤ ≤≤  ≤≤ ≤ ≤≤',0ah,0dh
        db   '  ≤ ≤ ≤  |      ≤≤ ≤     ≤≤≤     ≤≤≤≤ ≤≤ ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ ≤≤ ≤ ≤≤≤    ≤≤    ≤ ≤ ',0ah,0dh
        db   ' ≤≤≤≤ ≤ ≤≤≤≤ ≤≤ ≤≤≤≤≤≤≤≤≤≤≤≤ ≤ ≤≤   ≤          |    ≤       ≤     ≤≤≤≤≤≤≤ ≤≤ ≤≤',0ah,0dh
        db   '  ≤   ≤ ≤   ≤ ≤       |      ≤ ≤ ≤≤≤≤≤ ≤≤≤≤≤≤≤≤≤≤≤≤ ≤ ≤≤≤≤≤ ≤≤≤≤≤    |  ≤ ≤≤ ≤ ',0ah,0dh
        db   ' ≤≤ ≤≤  ≤≤≤ ≤ ≤≤≤≤ ≤≤≤≤≤≤≤≤≤≤≤≤≤≤ ≤≤ ≤   ≤  |   ≤ ≤ ≤≤≤       ≤≤≤≤≤≤≤≤≤ ≤  ≤ ≤≤',0ah,0dh
        db   '  ≤ ≤≤ ≤  ≤   ≤    ≤≤   ≤≤ ≤      ≤≤ ≤≤≤ ≤ ≤≤≤≤   ≤   ≤ ≤ ≤≤≤≤  ≤  ≤  ≤ ≤ ≤≤ ≤ ',0ah,0dh
        db   ' ≤     `≤ ≤ ≤≤≤ ≤    ≤≤≤   ≤ ≤≤≤≤≤       ≤ ≤ ≤≤ ≤≤≤≤≤ ≤       ≤≤≤≤ ≤≤≤≤≤≤ ≤≤ ≤≤',0ah,0dh
        db   '  ≤ ≤ ≤≤    ≤ ≤≤≤ ≤≤≤≤ ≤≤≤≤≤ ≤≤ ≤ ≤≤≤≤≤≤≤≤ ≤      `≤  ≤ ≤≤≤≤ ≤   ≤≤   ≤   ≤  ˚≤',0ah,0dh
        db   ' ≤≤     ≤ ≤≤≤   ≤≤≤ ≤≤         ≤ ≤≤    |   ≤ ≤≤≤≤≤ ≤ ≤≤≤≤ ≤≤ ≤≤ ≤≤≤≤ ≤≤ ≤≤ ≤≤≤≤',0ah,0dh
        db   '  ≤ ≤≤ ≤ ≤ ≤  ≤≤≤      ≤≤≤ ≤≤≤≤ ≤ ≤≤≤ ≤≤≤≤ ≤     ≤≤≤  `    ≤≤≤≤      |` ≤≤ ≤ ≤ ',0ah,0dh
        db   ' ≤≤ ≤≤  ≤ ≤≤≤≤≤ | ≤≤ ≤≤≤   `|      `     ≤ ≤≤≤≤≤ ≤   ≤≤≤ ≤    ≤≤≤ ≤≤≤≤≤≤   ≤ ≤≤',0ah,0dh
        db   '  ≤   ≤≤        ≤≤     ≤ ≤ ≤≤ ≤ ≤≤≤ ≤ ≤≤ ≤ |  `≤ ≤≤≤≤≤≤  `≤≤≤   |  `≤ ≤  ≤ ≤ ≤ ',0ah,0dh
        db   ' ≤≤ ≤ ≤≤≤≤≤ ≤≤≤≤≤≤≤≤≤≤≤≤ ≤≤≤  ≤ ≤ ≤ ≤ ≤≤ ≤≤≤ ≤≤≤        ≤   ≤≤≤ ≤≤≤ ≤≤≤ ≤≤≤≤ ≤≤',0ah,0dh
        db   '  ≤ ≤          | `       ≤  ≤ ≤     ≤    ≤    ≤ ≤≤ ≤≤ ≤ ≤≤  ≤  ≤˚≤ ≤  ≤≤   ≤ ',0ah,0dh
        db   ' ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤',0ah,0dh
        db   '  ≤≤ ˚ - Finish ≤≤≤    -Life  ≤≤≤≤≤≤≤≤≤ Level 3 ≤≤≤≤≤≤≤≤≤≤ | -No turn back ≤≤ ',0ah,0dh
        db   '                                                                                 ',0ah,0dh,'$'

 
row             db              ?
colom		db		?

              
intro1          db              ' ≥                        ::Welcome to RNO_MAZE::                 ', 0ah,0dh
                db              0ah,0dh,' ≥ Instructions:                                          ', 0ah,0dh
                db              ' ≥ 1. If you want to move the cursor up ---------------- press [w]', 0ah,0dh
                db              ' ≥ 2. If you want to move the cursor down -------------- press [s]', 0ah,0dh
                db              ' ≥ 3. If you want to move the cursor to the left ------- press [a]', 0ah,0dh
                db              ' ≥ 4. If you want to move the cursor to the right ------ press [d]', 0ah,0dh
                db              ' ≥ 5. If you want to use your remaining life ----------- press [u]', 0ah,0dh 
                db              ' ≥ 6. And if you want to quit/exit --------------------- press [q]',0ah,0dh 
                db              0ah,0dh,' ≥ Guide in playing:                                      ', 0ah,0dh
                db              ' ≥ In Level 1 just enjoy playing real maze :)                     ', 0ah,0dh                
                db              ' ≥ In Level 2 be careful with your move, get some life. And every press count.', 0ah,0dh
                db              ' ≥ In level 3 no comment..just enjoy the booby traps and traps :) ', 0ah,0dh
                db              0ah,0dh,' ≥ Press any key to play the game...','$'


main proc near
        ;mov ax,03h
        ;int 10h
		
		
        	
        call game1
		
        call game2

        call game3

        		
		mov ax,03h				;clear screen for end of the game.
        int 10h
		
		mov ah, 02h
        mov dh, 00h
        mov dl, 00h
        mov bh, 00h
        int 10h
		
		mov ah,06h
        mov al,00h
        mov ch,00
        mov cl,00
        mov dh,24
        mov dl,79
        mov bh,57h
        int 10h
		
		mov ah, 02h
        mov dh, 00h
        mov dl, 00h
        mov bh, 00h
        int 10h
		
		mov ah, 09h		;load/print congratiolation. 
		lea dx, cong
		int 21h
		
		mov ah,0bh		;red_key or Press_Any Key.. to Continue
		int 21h
        mov ah,07h
		int 21h	
		
		call menu
		
main endp
end main

clear101  proc  near

        mov ah,06h		;clearing the screen w/o a buff..
        mov al,00h
        mov ch,00
        mov cl,00
        mov dh,24
        mov dl,79
        mov bh,37h   
        int 10h
	ret
clear101 endp
end clear101

;--------------------
;	Level 1
;--------------------

game1 proc near
	mov row, 03h 
        mov colom,02h
      a1:
        call clear101
		
        mov ah, 02h
        mov dh, 00h
        mov dl, 00h
        mov bh, 00h
        int 10h
		
        mov ah, 09h
        lea dx, map1
        int 21h  
		
		mov ah,06h
        mov al,00h
        mov ch,row
        mov cl,colom
        mov dh,row
        mov dl,colom
        mov bh,34h
        int 10h
		
        mov ah, 02h
        mov dh, row
        mov dl, colom
        mov bh, 00h
        int 10h	
		
        mov ah, 09h
        lea dx, string1
        int 21h
		
        mov ah, 02h
        mov dh, row
        mov dl, colom
        mov bh, 00h
        int 10h	
		
        mov ah,0bh
        int 21h
        mov ah,07h
        int 21h
		
      a2:
        cmp al, 'd'
        je inc_col
		cmp al, 'D'
		je inc_col
      a3:
        cmp  al, 's'
        je a701
		cmp  al, 'S'
        je a701

      a4:
        cmp al, 'a'
        je dec_col
		cmp al, 'A'
        je dec_col
      a5:
        cmp al, 'w'
        je inc_row
		cmp al, 'W'
        je inc_row

      a6:
        cmp al, 'q'
        je exit101
		cmp al, 'Q'
        je exit101
		
		cmp al, '1'
		je ret
        jmp a1
							
exit101:						; exit program if you press letter (q/Q)
		mov ax, 03h
		int 10h
		mov ax, 4c00h
		int 21h
		
      a7:
        jmp a1

      inc_row:
        dec row

        mov ah, 02h
        mov dh, row
        mov dl, colom
        mov bh, 00h
        int 10h

        mov ah, 08h
        mov bh, 00h
        int 10h

        cmp al, ' '
        je a7

        inc row
        jmp a1

      inc_col:
	inc colom

        mov ah, 02h
        mov dh, row
        mov dl, colom
        mov bh, 00h
        int 10h

        mov ah, 08h
        mov bh, 00h
        int 10h

        cmp al, ' '
        je a7

        cmp al, '˚'
        je rno

        dec colom
        jmp a7
      a702:
        jmp a7
      rno:
        ret

      a701:
        jmp dec_row

      dec_col:
        dec colom

        mov ah, 02h
        mov dh, row
        mov dl, colom
        mov bh, 00h
        int 10h

        mov ah, 08h
        mov bh, 00h
        int 10h

        cmp al, ' '
        je a702

        inc colom
        jmp a1

      a700:
        jmp a7


      dec_row:
        inc row
        mov ah, 02h
        mov dh, row
        mov dl, colom
        mov bh, 00h
        int 10h

        mov ah, 08h
        mov bh, 00h
        int 10h

        cmp al, ' '
        je a700

        dec row
        jmp a700
		
        ret
game1 endp
end game1

;--------------------
;	Level 2
;--------------------

game2 proc near
	mov g2_max, 7dh

	mov row, 07h 
	mov colom,02h
	
	a1:
        call clear101
		
        mov ah, 02h
        mov dh, 00h
        mov dl, 00h
        mov bh, 00h
        int 10h
		
        mov ah, 09h
        lea dx, map2
        int 21h  
		
		
		mov ah, 02h
        mov dh, 23
        mov dl, 00
        mov bh, 00h
        int 10h	

		cmp life, 01h
		je amen1
		cmp life, 02h
		je amen2
		cmp life, 03h
		je amen3
		cmp life, 04h
		je amen4
		
amen1:							;printing life.. remaining
	mov ah, 09h
	lea dx, life_1
	int 21h
	jmp amen5
amen2:
	mov ah, 09h
	lea dx, life_2
	int 21h
	jmp amen5
amen3:
	mov ah, 09h
	lea dx, life_3
	int 21h
	jmp amen5
amen4:		
	mov ah, 09h
	lea dx, life_4
	int 21h
	jmp amen5
ret101:
	ret
	amen5:	
					
        mov ah, 02h
        mov dh, row
        mov dl, colom
        mov bh, 00h
        int 10h	
		
        mov ah, 09h
        lea dx, string1
        int 21h

		mov cl,g2_max
		mov ah, 02h
		mov dh, 23
		mov dl, 31
		mov bh, 00h
		int 10h
	lop1:
		mov ah, 09h
		lea dx,string2
		int 21h
		dec cx
		jnz lop1	

		
        mov ah, 02h
        mov dh, row
        mov dl, colom
        mov bh, 00h
        int 10h	
		
        mov ah,0bh
        int 21h
        mov ah,07h
        int 21h
		
		dec g2_max
		jz life_m101
		
		
				
      a2:
        cmp al, 'd'
        je inc_col2
		cmp al, 'D'
        je inc_col2
		
	  a3:
        cmp  al, 's'
        je a7012		
		cmp  al, 'S'
        je a7012
		
      a4:
        cmp al, 'a'
        je dec_col22
		cmp al, 'A'
        je dec_col22

      a5:
        cmp al, 'w'
        je inc_row2
		cmp al, 'W'
        je inc_row2
		
      a6:
        cmp al, 'q'
        je exit1012
		cmp al, 'Q'
        je exit1012
	  
	  a8:
		cmp al, 'u'
		je life_m101
		cmp al, 'U'
		je life_m101
	    
		cmp al, '1'
		je ret101
        jmp a1

a7012:
        jmp a703     
exit1012:
		mov ax, 03h
		int 10h
		mov ax, 4c00h
		int 21h
		
      a7:
        jmp a1
life_m101:
		jmp life_m
      inc_row2:
        dec row

        mov ah, 02h
        mov dh, row
        mov dl, colom
        mov bh, 00h
        int 10h

        mov ah, 08h
        mov bh, 00h
        int 10h

        cmp al, ' '
        je a7

        inc row
        jmp a1

dec_col22:
		jmp dec_col2
		
      inc_col2:
		inc colom

        mov ah, 02h
        mov dh, row
        mov dl, colom
        mov bh, 00h
        int 10h

        mov ah, 08h
        mov bh, 00h
        int 10h

                cmp al, '˚'
        je rno2	
        
		cmp al, ' '
        je a7

   		cmp al,''
		je  life_p  
       
		dec colom
        jmp a7
      a702:
        jmp a7

rno2:
        jmp ret101
life_m:							;decreament life if you press (u/U) for reset level.. :)
	dec life
	cmp life, 00
	je g_o
	jne gg
g_o:
		;mov ax, 03h
		;int 10h
		
		mov ah,06h
        mov al,00h
        mov ch,00
        mov cl,00
        mov dh,24
        mov dl,79
        mov bh,57h
        int 10h
		
		mov ah, 02h
        mov dh, 00h
        mov dl, 00h
        mov bh, 00h
        int 10h
		
		mov ah, 09h
		lea dx, game_o
		int 21h
		
		mov ah,0bh
		int 21h
        mov ah,07h
		int 21h
		
		call menu
gg: 
	call game2
	jmp a7
life_p:						;increament life if you hit the life character
	inc life
		cmp life, 04h
		ja ami	 
		jmp a7
	ami: 
		dec life
	jmp a7
a703:
      jmp dec_row2

      dec_col2:

        dec colom

        mov ah, 02h
        mov dh, row
        mov dl, colom
        mov bh, 00h
        int 10h

        mov ah, 08h
        mov bh, 00h
        int 10h

        cmp al, ' '
        je a702

        inc colom
        jmp a1

      a700:
        jmp a7


      dec_row2:
        inc row
        mov ah, 02h
        mov dh, row
        mov dl, colom
        mov bh, 00h
        int 10h

        mov ah, 08h
        mov bh, 00h
        int 10h

        cmp al, ' '
        je a700

        dec row
        jmp a700
		
       ret
game2 endp
end game2



;--------------------
;	Level 3
;--------------------

game3 proc near
	

	mov row, 0ch 
	mov colom,02h
	
	a1:
        ;call clear101
		mov ah,06h
        mov al,00h
        mov ch,00
        mov cl,00
        mov dh,24
        mov dl,79
        mov bh,09h
        int 10h
		
        mov ah, 02h
        mov dh, 00h
        mov dl, 00h
        mov bh, 00h
        int 10h
		
        mov ah, 09h
        lea dx, map3
        int 21h  
		
		mov ah,06h
        mov al,00h
        mov ch,row
        mov cl,colom
        mov dh,row
        mov dl,colom
        mov bh,07h
        int 10h
		
		mov ah, 02h
        mov dh, 22
        mov dl, 00
        mov bh, 00h
        int 10h	
		
		cmp life, 00h
		je g_o4

		cmp life, 01h
		je amen12
		
		cmp life, 02h
		je amen22

		cmp life, 03h
		je amen32

		cmp life, 04h
		je amen42
		
amen12:
	mov ah, 09h
	lea dx, life_1
	int 21h
	jmp amen52
amen22:
	mov ah, 09h
	lea dx, life_2
	int 21h
	jmp amen52
amen32:
	mov ah, 09h
	lea dx, life_3
	int 21h
	jmp amen52
amen42:
	mov ah, 09h
	lea dx, life_4
	int 21h
	jmp amen52
g_o4:
	jmp g_o3	
amen52:		
		
        mov ah, 02h
        mov dh, row
        mov dl, colom
        mov bh, 00h
        int 10h	
		
        mov ah, 09h
        lea dx, string1
        int 21h
		
        mov ah, 02h
        mov dh, row
        mov dl, colom
        mov bh, 00h
        int 10h	
		
        mov ah,0bh
        int 21h
        mov ah,07h
        int 21h
		
		
      a2:
        cmp al, 'd'
        je inc_col22
		cmp al, 'D'
        je inc_col22
		
	  a3:
        cmp  al, 's'
        je a70122		
		cmp  al, 'S'
        je a70122
		
      a4:
        cmp al, 'a'
        je dec_col222
		cmp al, 'A'
        je dec_col222


      a5:
        cmp al, 'w'
        je inc_row22
		cmp al, 'W'
        je inc_row22
		
      a6:
        cmp al, 'q'
        je exit10122
		cmp al, 'Q'
        je exit10122
	  
	  a8:
		cmp al, 'u'
		je life_m22
		cmp al, 'U'
		je life_m22
	  
		cmp al, '1'
		je ret
        jmp a1

g_o3:
	jmp g_o2		
a70122:
        jmp a7032     
exit10122:
		mov ax, 03h
		int 10h
		mov ax, 4c00h
		int 21h
		
      a7:
        jmp a1

      inc_row22:
        dec row

        mov ah, 02h
        mov dh, row
        mov dl, colom
        mov bh, 00h
        int 10h

        mov ah, 08h
        mov bh, 00h
        int 10h

		cmp al, '`'
        je b_t
		 
        cmp al, ' '
        je a7

        inc row
        jmp a1
life_m22:
		jmp life_m2
dec_col222:
		jmp dec_col221
		
      inc_col22:
		inc colom

        mov ah, 02h
        mov dh, row
        mov dl, colom
        mov bh, 00h
        int 10h

        mov ah, 08h
        mov bh, 00h
        int 10h
		
       cmp al, ' '
        je a7
		
		cmp al, '|'
		je a7

        cmp al, '˚'
        je rno22
		
		cmp al, '`'
		je b_t
		
		cmp al,''
		je  life_p2
		
        dec colom
        jmp a7
      a7022:
        jmp a7

rno22:
        ret

b_t:
	dec life
	jmp a7
life_m2:
	dec life
	cmp life, 00
	je g_o2
	jne gg2
g_o2:
		;mov ax, 03h
		;int 10h
		
		mov ah,06h
        mov al,00h
        mov ch,00
        mov cl,00
        mov dh,24
        mov dl,79
        mov bh,57h
        int 10h
		
		mov ah, 02h
        mov dh, 00h
        mov dl, 00h
        mov bh, 00h
        int 10h

		
		mov ah, 09h
		lea dx, game_o
		int 21h
		
		mov ah,0bh
		int 21h
        mov ah,07h
		int 21h
		
		call menu
gg2: 
	call game3
	jmp a7
life_p2:
	inc life
		cmp life, 04h
		ja ami2	 
		jmp a7
	ami2: 
		dec life
	jmp a7
a7032:
      jmp dec_row22


      dec_col221:
		dec colom

        mov ah, 02h
        mov dh, row
        mov dl, colom
        mov bh, 00h
        int 10h

        mov ah, 08h
        mov bh, 00h
        int 10h

        cmp al, ' '
        je a7022
		
		cmp al, '`'
		je b_t
		
        inc colom
        jmp a1

      a700:
        jmp a7


      dec_row22:
        inc row
        mov ah, 02h
        mov dh, row
        mov dl, colom
        mov bh, 00h
        int 10h

        mov ah, 08h
        mov bh, 00h
        int 10h

        cmp al, ' '
        je a700

        dec row
        jmp a700
		
        ret
game3 endp
end game3

menu proc near
        mov ax, 03h
        int 10h

		 mov ah,06h                      ;set color background 
        mov al,00h
        mov ch,00
        mov cl,00
        mov dh,24
        mov dl,79
        mov bh,27h
        int 10h
		
        mov ah, 02h
        mov dh, 4
        mov dl, 00
        mov bh, 00h
        int 10h

        mov ah, 09h
        lea dx, block1
        int 21h
		
		mov ah,0bh
		int 21h
        mov ah,07h
		int 21h
		
		


        call help

menu endp
end menu

help proc near
	mov ax, 03h
	int 10h
	
	mov ah,06h                      ;set color background 
        mov al,00h
        mov ch,00
        mov cl,00
        mov dh,24
        mov dl,79
        mov bh,57h
        int 10h
	
	mov ah, 02h
    mov dh, 00h
    mov dl, 00h
    mov bh, 00h
    int 10h

	mov ah, 09h
    lea dx, marg1
    int 21h

		
		mov ah, 02h
        mov dh, 03h
        mov dl, 00h
        mov bh, 00h
        int 10h
		
        mov ah, 09h
        lea dx, intro1		; load intro
        int 21h
		
		mov ah,0bh
		int 21h
        mov ah,07h
		int 21h
		
		call main
help endp
end help
	
	





	
	


; life remainnning: |||||||||||||||||||||||||||||||||||||||||||||||||
;					|||||||||||||||||||||||||||||||||||||||||||||||||
;					||||||||||||||||||||||||||||
