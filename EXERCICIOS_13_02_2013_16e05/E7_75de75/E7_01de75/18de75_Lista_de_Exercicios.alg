algoritmo "List_Ex_18de75"
//arquivo "C:\Users\WILLIAM\Desktop\18_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//18. Fa�a um algoritmo que leia um vetor de 80 posi��es
//e encontre o menor valor. Mostre-o juntamente com seu
// n�mero de ordem.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Se��o de Declara��es
var
v:vetor[1..80] de inteiro
i,vpos,menor:inteiro
inicio

para i de 1 ate 80 faca
   escreva ("Informe um numero para v[",i,"] .: ")
   leia(v[i])
   se (i=1) entao
      menor:=v[i]
      vpos:=i
   fimse
   se (v[i]<menor) entao
      menor:=v[i]
      vpos:=i
   fimse
fimpara

escreva("O menor elemento do vetor � ",menor,"  e esta na posicao ",vpos," ...")


fimalgoritmo
