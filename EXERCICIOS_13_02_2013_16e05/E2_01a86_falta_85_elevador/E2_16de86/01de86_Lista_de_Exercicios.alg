algoritmo "List_Ex_01de86"
//arquivo "C:\Users\WILLIAM\Desktop\01_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//1. Supondo que A, B e C s�o vari�veis inteiras com
//valores iguais a 5, 10 e -8, respectivamente, e uma
// vari�vel real D com valor igual a 1.5, quais os
//resultados das express�es aritm�ticas a seguir?
//a) 2 * mod(A,3)-C
//b) mod(30,4) * Pot(3,2) * -1
//c) Pot(C,2) + (D*10)/A
//d) Pot(A,B)/A + C * D
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 28/09/2012
// Se��o de Declara��es
var
A,B,C:INTEIRO
D:REAL
RA,RB,RC,RD:REAL
inicio
A:=5
B:=10
C:=-8
D:=1.5

RA:= 2 * (A mod 3) - C
RB:= 30 MOD 4 * EXP(3,2)*-1
RC:=-EXP(C,2)+(D*10)/A
RD:=EXP(A,B)/A+C*D

ESCREVAL("O RESULTADO DE ( 2*mod(A,3)-C ) � : ",RA)
ESCREVAL("O RESULTADO DE ( mod(30,4)*Pot(3,2)*-1 ) � : ",RB)
ESCREVAL("O RESULTADO DE ( -Pot(C,2)+(D*10)/A ) � : ",RC)
ESCREVAL("O RESULTADO DE ( Pot(A,B)/A+C*D ) � : ",RD)

fimalgoritmo
