algoritmo "List_Ex_14de28"
//arquivo "C:\Users\WILLIAM\Desktop\14_28Exercicio.txt"
// Função :
// Autor : WILLIAM GOULART
// Data : 22/10/2012
// Seção de Declarações
//14. Elabore um algoritmo com uma matriz G 4x7. Faça o teste e imprima os
//valores pares e ímpares.
var
m: vetor[1..4,1..7] de inteiro
i, j: inteiro

inicio

escreval("NÚMEROS PARES E ÍMPARES")

para i de 1 ate 4 passo 1 faca
   para j de 1 ate 7 passo 1 faca
      escreva("Informe um valor: ")
      leia(m[i,j])
   fimpara
fimpara
escreval
escreval("---------------------------")
escreval("!!! RESULTADO !!!")
escreval("---------------------------")
escreval

para i de 1 ate 4 passo 1 faca
   para j de 1 ate 7 passo 1 faca

      se m[i,j] mod 2 = 0 entao
         escreval(m[i,j]," é um número par.")
      senao
         escreval(m[i,j]," é um número ímpar.")
      fimse
   fimpara
fimpara
fimalgoritmo
