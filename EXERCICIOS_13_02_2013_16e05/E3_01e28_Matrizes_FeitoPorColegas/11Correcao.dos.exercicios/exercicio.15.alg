algoritmo "semnome"
// Função :
// Autor :
// Data : 17/10/2012
// Seção de Declarações
// Escreva uma matriz 3x3 de numeros inteiro e um valor inteiro para multiplicar com cada elemento da matriz e imprimindo o resultado.
var
i,j, valor, mult : inteiro
M: vetor [1..3,1..3] de inteiro
inicio
para i de 1 ate 3 faca
   para j de 1 ate 3 faca
      escreval("Digite um numero para a posicao de linha ",i," e coluna ",j)
      leia(M[i,j])
   fimpara
fimpara

escreval("Digite um numero para a multiplicação")
leia(valor)

para i de 1 ate 3 faca
   para j de 1 ate 3 faca
      mult <- M[i,j]*valor
      escreval("O valor da posicao",i,",",j," multiplicados por",valor," é igual a",mult)
   fimpara
fimpara
fimalgoritmo
