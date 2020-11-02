algoritmo "exercicio_3"
// Exercício 3 - Trabalho em Dupla
// Autor : Fábio, Ralph
// Data : 17/10/2012
// 3) Elabore um algoritmo com uma matriz g = 4 X 7. Faça o teste e imprima os valores pares e ímpares.

var
g: vetor[1..4,1..7] de inteiro
i, j, valida: inteiro

inicio

escreval("NÚMEROS PARES E ÍMPARES")

para i de 1 ate 4 passo 1 faca
     para j de 1 ate 7 passo 1 faca
     escreva("Informe um valor: ")
     leia(g[i,j])
     fimpara
fimpara


para i de 1 ate 4 passo 1 faca
     para j de 1 ate 7 passo 1 faca

     se g[i,j] mod 2 = 0 entao
     escreval(g[i,j]," é um número par.")
     senao
     escreval(g[i,j]," é um número ímpar.")
     fimse
     fimpara
fimpara


// Seção de Comandos
fimalgoritmo



