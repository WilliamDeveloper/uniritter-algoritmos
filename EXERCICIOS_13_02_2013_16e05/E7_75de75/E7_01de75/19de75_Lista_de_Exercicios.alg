algoritmo "List_Ex_19de75"
//arquivo "C:\Users\WILLIAM\Desktop\19_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//19. Fa�a um algoritmo que leia dois vetores (A e B) de 50
//posi��es de n�meros inteiros. O algoritmo deve, ent�o,
//subtrair o primeiro elemento de A do �ltimo de B, acumulando o valor,
//subtrair o segundo elemento de A do pen�ltimo de B, acumulando o valor,
// e assim por diante. Mostre o resultado da soma final.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Se��o de Declara��es
var
a:vetor[1..50] de inteiro
b:vetor[1..50] de inteiro
acum,i:inteiro

inicio
acum:=0
para i de 1 ate 50 faca
   escreva("informe um numero para a[",i,"] ..: ")
   leia(a[i])
fimpara

para i de 1 ate 50 faca
   escreva("informe um numero para b[",i,"] ..: ")
   leia(b[i])
fimpara

para i de 1 ate 50 faca
   acum:=acum+(a[i]-b[51-i])
fimpara

escreval("O resultado da soma final � ",acum)

fimalgoritmo
