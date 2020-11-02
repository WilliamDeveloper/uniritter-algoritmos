algoritmo "List_Ex_25de28"
//arquivo "C:\Users\WILLIAM\Desktop\25_28Exercicio.txt"
// Função :
// Autor : WILLIAM GOULART
// Data : 22/10/2012
// Seção de Declarações 
//25. Crie uma matriz 3X4 onde cada elemento é a soma dos índices de sua posição
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
