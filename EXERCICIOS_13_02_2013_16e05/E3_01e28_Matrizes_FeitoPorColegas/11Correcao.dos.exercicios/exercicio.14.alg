algoritmo "exercicio_3"
// Exerc�cio 3 - Trabalho em Dupla
// Autor : F�bio, Ralph
// Data : 17/10/2012
// 3) Elabore um algoritmo com uma matriz g = 4 X 7. Fa�a o teste e imprima os valores pares e �mpares.

var
g: vetor[1..4,1..7] de inteiro
i, j, valida: inteiro

inicio

escreval("N�MEROS PARES E �MPARES")

para i de 1 ate 4 passo 1 faca
     para j de 1 ate 7 passo 1 faca
     escreva("Informe um valor: ")
     leia(g[i,j])
     fimpara
fimpara


para i de 1 ate 4 passo 1 faca
     para j de 1 ate 7 passo 1 faca

     se g[i,j] mod 2 = 0 entao
     escreval(g[i,j]," � um n�mero par.")
     senao
     escreval(g[i,j]," � um n�mero �mpar.")
     fimse
     fimpara
fimpara


// Se��o de Comandos
fimalgoritmo



