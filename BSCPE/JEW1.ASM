.model small
.code
org 100h
jmp main

ins1 db "Enter Your Six Letter Word: $"

row db ?
col db ?

del1 dw ?
del2 dw ?

string label byte
maxlen db 07
actlen db ?
kybd db 07 dup ('$')

 brb1  db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                    €     €                                    ',0ah,0dh
       db '                                     €   €                                     ',0ah,0dh
       db '                                    €€€€€€€                                    ',0ah,0dh
       db '                                   €€ €€€ €€                                   ',0ah,0dh
       db '                                  €€€€€€€€€€€                                  ',0ah,0dh
       db '                                  € €€€€€€€ €                                  ',0ah,0dh
       db '                                  € €     € €                                  ',0ah,0dh
       db '                                     €€ €€                                     ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                 - JEW . WASH -                                ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '             €€€    €€€   €€€€    €€€€       €     €€€   €€€  €   €            ',0ah,0dh
       db '            €   €  €   €  €   €  €           €    €   € €   € €   €            ',0ah,0dh
       db '            €      €€€€€  €€€€   €€€€   €€€  €    €   € €     €€€€             ',0ah,0dh
       db '            €   €  €   €  €          €       €    €   € €   € €   €            ',0ah,0dh
       db '             €€€   €   €  €      €€€€        €€€€€ €€€   €€€  €   €            ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ','$' 
       
 brb2  db '                                                                               ',0ah,0dh
       db '                  Program Deterministic Finite Automata                        ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                    …ÕÕÕÕª                                     ',0ah,0dh
       db '        ⁄ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ>∫ Q9 ∫<ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒø         ',0ah,0dh
       db '        ≥           ⁄ƒƒƒƒƒƒƒƒƒƒƒƒƒƒ>»ÕÕÕÕº<ƒƒƒƒƒƒƒƒƒƒƒƒƒø            ≥         ',0ah,0dh
       db '        ≥           ≥               ^    ^              ≥            ≥         ',0ah,0dh
       db '        ≥           ≥           ⁄ƒƒƒŸ    ¿ƒƒƒø          ≥            ≥         ',0ah,0dh
       db '        ≥           ≥           ≥            ≥          ≥            ≥         ',0ah,0dh
       db '      …ÕÕÕÕª      …ÕÕÕÕª      …ÕÕÕÕª      …ÕÕÕÕª      …ÕÕÕÕª      …ÕÕÕÕª       ',0ah,0dh
       db '      ∫ Q1 ∫ƒƒƒƒƒ>∫ Q2 ∫ƒƒƒƒƒ>∫ Q3 ∫ƒƒƒƒƒ>∫ Q4 ∫ƒƒƒƒƒ>∫ Q5 ∫ƒƒƒƒƒ>∫ Q6 ∫       ',0ah,0dh
       db '      »ÕÕÕÕº      »ÕÕÕÕº      »ÕÕÕÕº      »ÕÕÕÕº      »ÕÕÕÕº      »ÕÕÕÕº       ',0ah,0dh
       db '       ^  ^                                                                    ',0ah,0dh
       db '       ≥  ≥                                                                    ',0ah,0dh
       db '       ≥  ≥                                                                    ',0ah,0dh
       db '       ≥  ¿ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒø                ',0ah,0dh
       db '       ≥                                                      ≥                ',0ah,0dh
       db '       ≥                                                      ≥                ',0ah,0dh
       db '       ≥                                                      V                ',0ah,0dh
       db '       ≥    …ÕÕÕÕª                                          …ÕÕÕÕª             ',0ah,0dh
       db '       ¿ƒƒƒ>∫ Q7 ∫                                          ∫ Q8 ∫             ',0ah,0dh
       db '            »ÕÕÕÕº                                          »ÕÕÕÕº             ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                      Press [E] to Continue    ',0ah,0dh
       db '                                                                               ','$'
 
 brb3  db '                                                                               ',0ah,0dh
       db '                  Program Deterministic Finite Automata                        ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                    …ÕÕÕÕª                                     ',0ah,0dh
       db '        ⁄ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ>∫ Q9 ∫                                     ',0ah,0dh
       db '        ≥                           »ÕÕÕÕº                                     ',0ah,0dh
       db '        ≥                                                                      ',0ah,0dh
       db '        ≥                                                                      ',0ah,0dh
       db '        ≥                                                                      ',0ah,0dh
       db '      …ÕÕÕÕª      …ÕÕÕÕª      …ÕÕÕÕª      …ÕÕÕÕª      …ÕÕÕÕª      …ÕÕÕÕª       ',0ah,0dh
       db '      ∫ Q1 ∫      ∫ Q2 ∫      ∫ Q3 ∫      ∫ Q4 ∫      ∫ Q5 ∫      ∫ Q6 ∫       ',0ah,0dh
       db '      »ÕÕÕÕº      »ÕÕÕÕº      »ÕÕÕÕº      »ÕÕÕÕº      »ÕÕÕÕº      »ÕÕÕÕº       ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '            …ÕÕÕÕª                                          …ÕÕÕÕª             ',0ah,0dh
       db '            ∫ Q7 ∫                                          ∫ Q8 ∫             ',0ah,0dh
       db '            »ÕÕÕÕº                                          »ÕÕÕÕº             ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '    String Rejected!!                                 Press [E] to Continue    ',0ah,0dh
       db '                                                                               ','$'       


 brb4  db '                                                                               ',0ah,0dh
       db '                  Program Deterministic Finite Automata                        ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                    …ÕÕÕÕª                                     ',0ah,0dh
       db '                                    ∫ Q9 ∫                                     ',0ah,0dh
       db '                    ⁄ƒƒƒƒƒƒƒƒƒƒƒƒƒƒ>»ÕÕÕÕº                                     ',0ah,0dh
       db '                    ≥                                                          ',0ah,0dh
       db '                    ≥                                                          ',0ah,0dh
       db '                    ≥                                                          ',0ah,0dh
       db '      …ÕÕÕÕª      …ÕÕÕÕª      …ÕÕÕÕª      …ÕÕÕÕª      …ÕÕÕÕª      …ÕÕÕÕª       ',0ah,0dh
       db '      ∫ Q1 ∫ƒƒƒƒƒ>∫ Q2 ∫      ∫ Q3 ∫      ∫ Q4 ∫      ∫ Q5 ∫      ∫ Q6 ∫       ',0ah,0dh
       db '      »ÕÕÕÕº      »ÕÕÕÕº      »ÕÕÕÕº      »ÕÕÕÕº      »ÕÕÕÕº      »ÕÕÕÕº       ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '            …ÕÕÕÕª                                          …ÕÕÕÕª             ',0ah,0dh
       db '            ∫ Q7 ∫                                          ∫ Q8 ∫             ',0ah,0dh
       db '            »ÕÕÕÕº                                          »ÕÕÕÕº             ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '    String Rejected!!                                 Press [E] to Continue    ',0ah,0dh
       db '                                                                               ','$'             


 brb5  db '                                                                               ',0ah,0dh
       db '                  Program Deterministic Finite Automata                        ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                    …ÕÕÕÕª                                     ',0ah,0dh
       db '                                    ∫ Q9 ∫                                     ',0ah,0dh
       db '                                    »ÕÕÕÕº                                     ',0ah,0dh
       db '                                    ^                                          ',0ah,0dh
       db '                                ⁄ƒƒƒŸ                                          ',0ah,0dh
       db '                                ≥                                              ',0ah,0dh
       db '      …ÕÕÕÕª      …ÕÕÕÕª      …ÕÕÕÕª      …ÕÕÕÕª      …ÕÕÕÕª      …ÕÕÕÕª       ',0ah,0dh
       db '      ∫ Q1 ∫ƒƒƒƒƒ>∫ Q2 ∫ƒƒƒƒƒ>∫ Q3 ∫      ∫ Q4 ∫      ∫ Q5 ∫      ∫ Q6 ∫       ',0ah,0dh
       db '      »ÕÕÕÕº      »ÕÕÕÕº      »ÕÕÕÕº      »ÕÕÕÕº      »ÕÕÕÕº      »ÕÕÕÕº       ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '            …ÕÕÕÕª                                          …ÕÕÕÕª             ',0ah,0dh
       db '            ∫ Q7 ∫                                          ∫ Q8 ∫             ',0ah,0dh
       db '            »ÕÕÕÕº                                          »ÕÕÕÕº             ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '    String Rejected!!                                 Press [E] to Continue    ',0ah,0dh
       db '                                                                               ','$'
       
       
 brb6  db '                                                                               ',0ah,0dh
       db '                  Program Deterministic Finite Automata                        ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                    …ÕÕÕÕª                                     ',0ah,0dh
       db '                                    ∫ Q9 ∫                                     ',0ah,0dh
       db '                                    »ÕÕÕÕº                                     ',0ah,0dh
       db '                                         ^                                     ',0ah,0dh
       db '                                         ¿ƒƒƒø                                 ',0ah,0dh
       db '                                             ≥                                 ',0ah,0dh
       db '      …ÕÕÕÕª      …ÕÕÕÕª      …ÕÕÕÕª      …ÕÕÕÕª      …ÕÕÕÕª      …ÕÕÕÕª       ',0ah,0dh
       db '      ∫ Q1 ∫ƒƒƒƒƒ>∫ Q2 ∫ƒƒƒƒƒ>∫ Q3 ∫ƒƒƒƒƒ>∫ Q4 ∫      ∫ Q5 ∫      ∫ Q6 ∫       ',0ah,0dh
       db '      »ÕÕÕÕº      »ÕÕÕÕº      »ÕÕÕÕº      »ÕÕÕÕº      »ÕÕÕÕº      »ÕÕÕÕº       ',0ah,0dh
       db '       ^  ^                                                                    ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '            …ÕÕÕÕª                                          …ÕÕÕÕª             ',0ah,0dh
       db '            ∫ Q7 ∫                                          ∫ Q8 ∫             ',0ah,0dh
       db '            »ÕÕÕÕº                                          »ÕÕÕÕº             ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '    String Rejected!!                                 Press [E] to Continue    ',0ah,0dh
       db '                                                                               ','$'
       
    
 brb7  db '                                                                               ',0ah,0dh
       db '                  Program Deterministic Finite Automata                        ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                    …ÕÕÕÕª                                     ',0ah,0dh
       db '                                    ∫ Q9 ∫                                     ',0ah,0dh
       db '                                    »ÕÕÕÕº<ƒƒƒƒƒƒƒƒƒƒƒƒƒø                      ',0ah,0dh
       db '                                                        ≥                      ',0ah,0dh
       db '                                                        ≥                      ',0ah,0dh
       db '                                                        ≥                      ',0ah,0dh
       db '      …ÕÕÕÕª      …ÕÕÕÕª      …ÕÕÕÕª      …ÕÕÕÕª      …ÕÕÕÕª      …ÕÕÕÕª       ',0ah,0dh
       db '      ∫ Q1 ∫ƒƒƒƒƒ>∫ Q2 ∫ƒƒƒƒƒ>∫ Q3 ∫ƒƒƒƒƒ>∫ Q4 ∫ƒƒƒƒƒ>∫ Q5 ∫      ∫ Q6 ∫       ',0ah,0dh
       db '      »ÕÕÕÕº      »ÕÕÕÕº      »ÕÕÕÕº      »ÕÕÕÕº      »ÕÕÕÕº      »ÕÕÕÕº       ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '            …ÕÕÕÕª                                          …ÕÕÕÕª             ',0ah,0dh
       db '            ∫ Q7 ∫                                          ∫ Q8 ∫             ',0ah,0dh
       db '            »ÕÕÕÕº                                          »ÕÕÕÕº             ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '    String Rejected!!                                 Press [E] to Continue    ',0ah,0dh
       db '                                                                               ','$' 
       
       
 brb8  db '                                                                               ',0ah,0dh
       db '                  Program Deterministic Finite Automata                        ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                    …ÕÕÕÕª                                     ',0ah,0dh
       db '                                    ∫ Q9 ∫<ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒø         ',0ah,0dh
       db '                                    »ÕÕÕÕº                           ≥         ',0ah,0dh
       db '                                                                     ≥         ',0ah,0dh
       db '                                                                     ≥         ',0ah,0dh
       db '                                                                     ≥         ',0ah,0dh
       db '      …ÕÕÕÕª      …ÕÕÕÕª      …ÕÕÕÕª      …ÕÕÕÕª      …ÕÕÕÕª      …ÕÕÕÕª       ',0ah,0dh
       db '      ∫ Q1 ∫ƒƒƒƒƒ>∫ Q2 ∫ƒƒƒƒƒ>∫ Q3 ∫ƒƒƒƒƒ>∫ Q4 ∫ƒƒƒƒƒ>∫ Q5 ∫ƒƒƒƒƒ>∫ Q6 ∫       ',0ah,0dh
       db '      »ÕÕÕÕº      »ÕÕÕÕº      »ÕÕÕÕº      »ÕÕÕÕº      »ÕÕÕÕº      »ÕÕÕÕº       ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '            …ÕÕÕÕª                                          …ÕÕÕÕª             ',0ah,0dh
       db '            ∫ Q7 ∫                                          ∫ Q8 ∫             ',0ah,0dh
       db '            »ÕÕÕÕº                                          »ÕÕÕÕº             ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '    String Rejected!!                                 Press [E] to Continue    ',0ah,0dh
       db '                                                                               ','$'
       
       
 brb9  db '                                                                               ',0ah,0dh
       db '                  Program Deterministic Finite Automata                        ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                    …ÕÕÕÕª                                     ',0ah,0dh
       db '                                    ∫ Q9 ∫                                     ',0ah,0dh
       db '                                    »ÕÕÕÕº                                     ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '      …ÕÕÕÕª      …ÕÕÕÕª      …ÕÕÕÕª      …ÕÕÕÕª      …ÕÕÕÕª      …ÕÕÕÕª       ',0ah,0dh
       db '      ∫ Q1 ∫ƒƒƒƒƒ>∫ Q2 ∫ƒƒƒƒƒ>∫ Q3 ∫ƒƒƒƒƒ>∫ Q4 ∫ƒƒƒƒƒ>∫ Q5 ∫ƒƒƒƒƒ>∫ Q6 ∫       ',0ah,0dh
       db '      »ÕÕÕÕº      »ÕÕÕÕº      »ÕÕÕÕº      »ÕÕÕÕº      »ÕÕÕÕº      »ÕÕÕÕº       ',0ah,0dh
       db '       ^                                                                       ',0ah,0dh
       db '       ≥                                                                       ',0ah,0dh
       db '       ≥                                                                       ',0ah,0dh
       db '       ≥                                                                       ',0ah,0dh
       db '       ≥                                                                       ',0ah,0dh
       db '       ≥                                                                       ',0ah,0dh
       db '       ≥                                                                       ',0ah,0dh
       db '       ≥    …ÕÕÕÕª                                          …ÕÕÕÕª             ',0ah,0dh
       db '       ¿ƒƒƒ>∫ Q7 ∫                                          ∫ Q8 ∫             ',0ah,0dh
       db '            »ÕÕÕÕº                                          »ÕÕÕÕº             ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '    String Accepted!!  Output:                        Press [E] to Continue    ',0ah,0dh
       db '                                                                               ','$'
       
       
brb10  db '                                                                               ',0ah,0dh
       db '                  Program Deterministic Finite Automata                        ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                    …ÕÕÕÕª                                     ',0ah,0dh
       db '                                    ∫ Q9 ∫                                     ',0ah,0dh
       db '                                    »ÕÕÕÕº                                     ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '      …ÕÕÕÕª      …ÕÕÕÕª      …ÕÕÕÕª      …ÕÕÕÕª      …ÕÕÕÕª      …ÕÕÕÕª       ',0ah,0dh
       db '      ∫ Q1 ∫ƒƒƒƒƒ>∫ Q2 ∫ƒƒƒƒƒ>∫ Q3 ∫ƒƒƒƒƒ>∫ Q4 ∫ƒƒƒƒƒ>∫ Q5 ∫ƒƒƒƒƒ>∫ Q6 ∫       ',0ah,0dh
       db '      »ÕÕÕÕº      »ÕÕÕÕº      »ÕÕÕÕº      »ÕÕÕÕº      »ÕÕÕÕº      »ÕÕÕÕº       ',0ah,0dh
       db '          ^                                                                    ',0ah,0dh
       db '          ≥                                                                    ',0ah,0dh
       db '          ≥                                                                    ',0ah,0dh
       db '          ¿ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒø                ',0ah,0dh
       db '                                                              ≥                ',0ah,0dh
       db '                                                              ≥                ',0ah,0dh
       db '                                                              V                ',0ah,0dh
       db '            …ÕÕÕÕª                                          …ÕÕÕÕª             ',0ah,0dh
       db '            ∫ Q7 ∫                                          ∫ Q8 ∫             ',0ah,0dh
       db '            »ÕÕÕÕº                                          »ÕÕÕÕº             ',0ah,0dh
       db '                                                                               ',0ah,0dh
       db '    String Accepted!!  Output:                        Press [E] to Continue    ',0ah,0dh
       db '                                                                               ','$'                                         

main proc near

	call clear

	mov ah,09h
	lea dx,brb1
	int 21h
	
	call delay
	call clear
	
	mov ah,09h
        lea dx,brb2
	int 21h

	ask:
	
	mov ah,07h
	int 21h
	cmp al,'e'
	if e jmp act1
	jmp ask

	
	act1:
		call clear
		
		mov ah,09h
		lea dx,ins1
		int 21h
		
		mov ah,0ah
		lea dx,string
		int 21h
		
		mov bx,00
                mov cx,00
		jmp act2
        
	act2:
		cmp bx,06
		if e jmp act3
		cmp kybd[bx],'a'
		if e jmp count
		cmp kybd[bx],'b'
		if e jmp count
		cmp kybd[bx],'c'
		if e jmp count
		cmp kybd[bx],'d'
		if e jmp count
		cmp kybd[bx],'e'
		if e jmp count
		cmp kybd[bx],'f'
		if e jmp count
		cmp kybd[bx],'g'
		if e jmp count
		cmp kybd[bx],'h'
		if e jmp count
		cmp kybd[bx],'i'
		if e jmp count
		cmp kybd[bx],'j'
		if e jmp count
		cmp kybd[bx],'k'
		if e jmp count
		cmp kybd[bx],'l'
		if e jmp count
		cmp kybd[bx],'m'
		if e jmp count
		cmp kybd[bx],'n'
		if e jmp count
		cmp kybd[bx],'o'
		if e jmp count
		cmp kybd[bx],'p'
		if e jmp count
		cmp kybd[bx],'q'
		if e jmp count
		cmp kybd[bx],'r'
		if e jmp count
		cmp kybd[bx],'s'
		if e jmp count
		cmp kybd[bx],'t'
		if e jmp count
		cmp kybd[bx],'u'
		if e jmp count
		cmp kybd[bx],'v'
		if e jmp count
		cmp kybd[bx],'w'
		if e jmp count
		cmp kybd[bx],'x'
		if e jmp count
		cmp kybd[bx],'y'
		if e jmp count
		cmp kybd[bx],'z'
		if e jmp count
		cmp kybd[bx],'A'
		if e jmp count
		cmp kybd[bx],'B'
		if e jmp count
		cmp kybd[bx],'C'
		if e jmp count
		cmp kybd[bx],'D'
		if e jmp count
		cmp kybd[bx],'E'
		if e jmp count
		cmp kybd[bx],'F'
		if e jmp count
		cmp kybd[bx],'G'
		if e jmp count
		cmp kybd[bx],'H'
		if e jmp count
		cmp kybd[bx],'I'
		if e jmp count
		cmp kybd[bx],'J'
		if e jmp count
		cmp kybd[bx],'K'
		if e jmp count
		cmp kybd[bx],'L'
		if e jmp count
		cmp kybd[bx],'M'
		if e jmp count
		cmp kybd[bx],'N'
		if e jmp count
		cmp kybd[bx],'O'
		if e jmp count
		cmp kybd[bx],'P'
		if e jmp count
		cmp kybd[bx],'Q'
		if e jmp count
		cmp kybd[bx],'R'
		if e jmp count
		cmp kybd[bx],'S'
		if e jmp count
		cmp kybd[bx],'T'
		if e jmp count
		cmp kybd[bx],'U'
		if e jmp count
		cmp kybd[bx],'V'
		if e jmp count
		cmp kybd[bx],'W'
		if e jmp count
		cmp kybd[bx],'X'
		if e jmp count
		cmp kybd[bx],'Y'
		if e jmp count
		cmp kybd[bx],'Z'
		if e jmp count
		jmp error
		
	count:
		inc cx
		inc bx
		jmp act2
		
	error:
		cmp cx,00
		if e jmp disp1
		cmp cx,01
		if e jmp disp2
		cmp cx,02
		if e jmp disp3
		cmp cx,03
		if e jmp disp4
		cmp cx,04
		if e jmp disp5
		cmp cx,05
		if e jmp disp6
		
	disp1:
	    mov ah,09h
	    lea dx,brb3
	    int 21h
	    jmp ask1
	
	disp2:    
	    mov ah,09h
	    lea dx,brb4
	    int 21h
	    jmp ask1
	
	disp3:    
	    mov ah,09h
	    lea dx,brb5
	    int 21h
	    jmp ask1
	
	disp4:    
	    mov ah,09h
	    lea dx,brb6
	    int 21h
		jmp ask1
		
	disp5:    
	    mov ah,09h
	    lea dx,brb7
	    int 21h
		jmp ask1
		
	disp6:    
	    mov ah,09h
	    lea dx,brb8
	    int 21h
		jmp ask1
		
	ask1:	
		mov ah,07h
		int 21h
		cmp al,'e'
		if e jmp exit
		jmp ask1	
			
	act3:
		mov bx,00
		mov cx,06
		cmp kybd[1],'a'
		if e jmp vowel
		cmp kybd[1],'b'
		if e jmp cons
		cmp kybd[1],'c'
		if e jmp cons
		cmp kybd[1],'d'
		if e jmp cons
		cmp kybd[1],'e'
		if e jmp vowel
		cmp kybd[1],'f'
		if e jmp cons
		cmp kybd[1],'g'
		if e jmp cons
		cmp kybd[1],'h'
		if e jmp cons
		cmp kybd[1],'i'
		if e jmp vowel
		cmp kybd[1],'j'
		if e jmp cons
		cmp kybd[1],'k'
		if e jmp cons
		cmp kybd[1],'l'
		if e jmp cons
		cmp kybd[1],'m'
		if e jmp cons
		cmp kybd[1],'n'
		if e jmp cons
		cmp kybd[1],'o'
		if e jmp vowel
		cmp kybd[1],'p'
		if e jmp cons
		cmp kybd[1],'q'
		if e jmp cons
		cmp kybd[1],'r'
		if e jmp cons
		cmp kybd[1],'s'
		if e jmp cons
		cmp kybd[1],'t'
		if e jmp cons
		cmp kybd[1],'u'
		if e jmp vowel
		cmp kybd[1],'v'
		if e jmp cons
		cmp kybd[1],'w'
		if e jmp cons
		cmp kybd[1],'x'
		if e jmp cons
		cmp kybd[1],'y'
		if e jmp cons
		cmp kybd[1],'z'
		if e jmp cons
		cmp kybd[1],'A'
		if e jmp vowel
		cmp kybd[1],'B'
		if e jmp cons
		cmp kybd[1],'C'
		if e jmp cons
		cmp kybd[1],'D'
		if e jmp cons
		cmp kybd[1],'E'
		if e jmp vowel
		cmp kybd[1],'F'
		if e jmp cons
		cmp kybd[1],'G'
		if e jmp cons
		cmp kybd[1],'H'
		if e jmp cons
		cmp kybd[1],'I'
		if e jmp vowel
		cmp kybd[1],'J'
		if e jmp cons
		cmp kybd[1],'K'
		if e jmp cons
		cmp kybd[1],'L'
		if e jmp cons
		cmp kybd[1],'M'
		if e jmp cons
		cmp kybd[1],'N'
		if e jmp cons
		cmp kybd[1],'O'
		if e jmp vowel
		cmp kybd[1],'P'
		if e jmp cons
		cmp kybd[1],'Q'
		if e jmp cons
		cmp kybd[1],'R'
		if e jmp cons
		cmp kybd[1],'S'
		if e jmp cons
		cmp kybd[1],'T'
		if e jmp cons
		cmp kybd[1],'U'
		if e jmp vowel
		cmp kybd[1],'V'
		if e jmp cons
		cmp kybd[1],'W'
		if e jmp cons
		cmp kybd[1],'X'
		if e jmp cons
		cmp kybd[1],'Y'
		if e jmp cons
		cmp kybd[1],'Z'
		if e jmp cons
		
	vowel:
		mov ah,kybd[bx]
		cmp ah,41h
		jb act4
		cmp ah,5ah
		ja act4
		xor ah,00100000b
		mov kybd[bx],ah
	act4:
		inc bx
		loop vowel
		
	output1:
		mov ah,09h
	    lea dx,brb9
	    int 21h
	    
	    mov col,30
        mov row,24
        call curse
        
        mov ah,09h
	    lea dx,kybd
	    int 21h
        
		jmp ask1
		
		
	cons:
		mov ah,kybd[bx]
		cmp ah,61h
		jb act5
		cmp ah,7ah
		ja act5
		xor ah,00100000b
		mov kybd[bx],ah
	act5:
		inc bx
		loop vowel
		
	output2:
		mov ah,09h
	    lea dx,brb10
	    int 21h
	    
	    mov col,30
        mov row,24
        call curse
        
        mov ah,09h
	    lea dx,kybd
	    int 21h
        
		jmp ask1			
		
exit:	
	int 20h		
	main endp
	end main
		 
	
;---------------
 
clear proc near

	mov ax,03h
	int 10h
	ret
	clear endp
	
curse proc near
        mov ah,02h
        mov dh,row
        mov dl,col
        mov bh,00
        int 10h
        ret
        curse endp	
	
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
