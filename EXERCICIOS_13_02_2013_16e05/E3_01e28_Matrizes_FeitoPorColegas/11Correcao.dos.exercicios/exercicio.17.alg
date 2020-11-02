algoritmo "semnome"
// Função :
// Autor :
// Data : 17/10/2012
// Seção de Declarações
// Escreva uma matriz 3x3 de numeros inteiro e um valor inteiro para somar com cada elemento da matriz e
// armazena-los o resultados na mesma.
var
i,j, valor, soma : inteiro
M: vetor [1..3,1..3] de inteiro
inicio

escreval("Digite um numero para somar com os elementos da matriz")
leia(valor)

para i de 1 ate 3 faca
   para j de 1 ate 3 faca
      escreval("Digite um numero para a posicao de linha ",i," e coluna ",j)
      leia(M[i,j])
      soma <- M[i,j]+valor
      M[i,j] <- soma
   fimpara
fimpara

para i de 1 ate 3 faca
   para j de 1 ate 3 faca
      escreval("O valor da posicao",i,",",j," somado por",valor," é igual a",M[i,j])
   fimpara
fimpara
fimalgoritmo
