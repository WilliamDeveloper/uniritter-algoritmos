algoritmo "List_Ex_25de28"
//arquivo "C:\Users\WILLIAM\Desktop\25_28Exercicio.txt"
// Fun��o :
// Autor : WILLIAM GOULART
// Data : 22/10/2012
// Se��o de Declara��es 
//25. Crie uma matriz 3X4 onde cada elemento � a soma dos �ndices de sua posi��o
//dentro da matriz.
var
M:vetor[1..3,1..4] de inteiro
i,j:inteiro

inicio

para i de 1 ate 3 faca
     para j de 1 ate 4 faca
          M[i,j]<-i+j
     fimpara
fimpara

para i de 1 ate 3 faca
     para j de 1 ate 4 faca
          escreva(m[i,j]," ")
     fimpara
          escreval(" ")
fimpara
fimalgoritmo
