//Escreva uma matriz com 3 linha e 3 colunas e fa�a a soma da matriz.
algoritmo "semnome"
// Fun��o :
// Autor :
// Data : 17/10/2012
// Se��o de Declara��es 
var
matriz: vetor [1..3,1..3] de inteiro
linha,coluna,SOMA: inteiro
inicio
para linha de 1 ate 3 faca
     para coluna de 1 ate 3 faca
     leia(matriz[linha,coluna])
fimpara
fimpara

SOMA<-0
para linha de 1 ate 3 faca
     para coluna de 1 ate 3 faca
     escreva(matriz[linha,coluna]:4)
SOMA<- SOMA + matriz [linha,coluna]
fimpara
escreval("")
fimpara
escreval("A soma �:",SOMA)

fimalgoritmo
