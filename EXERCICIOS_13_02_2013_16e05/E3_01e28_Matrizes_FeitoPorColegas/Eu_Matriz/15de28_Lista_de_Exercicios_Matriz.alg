algoritmo "List_Ex_15de28"
//arquivo "C:\Users\WILLIAM\Desktop\15_28Exercicio.txt"
// Função :
// Autor : WILLIAM GOULART
// Data : 22/10/2012
// Seção de Declarações
//15. Escreva uma matriz 3x3 de números inteiros e um valor inteiro para
//multiplicar com cada elemento da matriz e imprimindo o resultado.
var

i,j, valor, mult : inteiro
M: vetor [1..3,1..3] de inteiro
inicio
para i de 1 ate 3 faca
   para j de 1 ate 3 faca
      escreva("Digite um numero para m[",i,",",j,"] : ")
      leia(M[i,j])
   fimpara
fimpara

escreva("Digite um numero para a multiplicação : ")
leia(valor)
escreval
escreval("---------------------------------------------------------------------------------------------")
escreval

para i de 1 ate 3 faca
   para j de 1 ate 3 faca
      mult <- M[i,j]*valor
      escreval(M[i,j]," que esta na posicao M[",i,",",j,"] multiplicado por",valor," é igual a",mult)
   fimpara
fimpara
fimalgoritmo
