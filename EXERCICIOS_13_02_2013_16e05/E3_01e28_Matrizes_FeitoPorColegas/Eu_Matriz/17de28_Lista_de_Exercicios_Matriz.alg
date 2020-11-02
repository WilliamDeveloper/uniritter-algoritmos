algoritmo "List_Ex_17de28"
//arquivo "C:\Users\WILLIAM\Desktop\17_28Exercicio.txt"
// Função :
// Autor : WILLIAM GOULART
// Data : 22/10/2012
// Seção de Declarações
//17. Escreva uma matriz 3x3 de números inteiros e um valor inteiro para somar
//com cada elemento da matriz e armazena-los o resultados na mesma.
var
i,j, valor : inteiro
M: vetor [1..3,1..3] de inteiro
inicio

escreva("Informe um numero para somar com os elementos da matriz :")
leia(valor)

para i de 1 ate 3 faca
   para j de 1 ate 3 faca
      escreva("Informe um numero para M[",i,",",j,"] : ")
      leia(M[i,j])
      M[i,j] <- M[i,j]+valor
   fimpara
fimpara


escreval
escreval("------------------------------------------------------------")
escreval

para i de 1 ate 3 faca
   para j de 1 ate 3 faca
      escreval("O valor de M[",i,",",j,"] somado a",valor," é igual a",M[i,j])
   fimpara
fimpara
fimalgoritmo
