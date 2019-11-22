c:
md \a86
cd \a86
a:pcunzip -o a:a86*.zip
a:pcunzip -o a:d86*.zip
a:pcunzip -o a:reg_only.zip
del *.diz
copy a:errata
copy a:read.me
rem   Thank you for your interest in A86 and D86!
rem   You can print the manual with the command
rem   COPY *.DOC PRN but be warned it's huge: over
rem   150 pages for the assembler alone.  The files
rem   A02.DOC and D02.DOC contain demonstrations
rem   to show you how the programs work.
