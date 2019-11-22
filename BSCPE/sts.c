#include<stdio.h>
main()
{

long w;
char str[100],y;
clrscr();

printf("Enter a Word:");

gets(str);


w=strlen(str);

printf("Access:");

scanf("%c",&y);


if((y=='a')||(y=='A'))
{
for(z=0;z<w;z++)
{
x=str[z];
}
switch(x);
{
case 'a':case 'A': pritnf("E");break;
case 'b':case 'B': printf("F");break;
case 'c':case 'A': pritnf("G");break;
case 'd':case 'B': printf("H");break;
case 'e':case 'A': pritnf("I");break;
case 'f':case 'B': printf("J");break;
case 'g':case 'A': pritnf("K");break;
case 'h':case 'B': printf("L");break;
case 'i':case 'A': pritnf("M");break;
case 'j':case 'B': printf("N");break;
case 'l':case 'L': printf("O");break;
case 'k':case 'A': pritnf("P");break;
case 'm':case 'B': printf("Q");break;
case 'n':case 'A': pritnf("R");break;
case 'o':case 'B': printf("S");break;
case 'p':case 'A': pritnf("T");break;
case 'q':case 'B': printf("U");break;
case 'r':case 'A': pritnf("V");break;
case 's':case 'B': printf("W");break;
case 't':case 'A': pritnf("X");break;
case 'u':case 'B': printf("Y");break;
case 'v':case 'A': pritnf("Z");break;
case 'w':case 'B': printf("A");break;
case 'x':case 'A': pritnf("B");break;
case 'y':case 'B': printf("C");break;
case 'z':case 'A': pritnf("D");break;
case ' ':printf(" ");break;
}














getch();
}