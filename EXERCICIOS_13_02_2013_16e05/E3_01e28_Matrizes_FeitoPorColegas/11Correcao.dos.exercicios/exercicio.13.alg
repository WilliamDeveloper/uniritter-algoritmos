algoritmo "exercicio_2"
// Exercício 2 - Trabalho em Dupla
// Autor : Fábio, Ralph
// Data : 17/10/2012
// 2) Elabore um algoritmo que receba uma matriz z 2 x 8, e escreva quantos números são negativos.

var
z: vetor[1..2,1..8] de inteiro
i, j, menores: inteiro

inicio

menores := 0;

escreval("NÚMEROS MENORES QUE 0")

para i de 1 ate 2 passo 1 faca
     para j de 1 ate 8 passo 1 faca
     escreva("Informe um valor: ")
     leia(z[i,j])
     fimpara
fimpara


para i de 1 ate 2 passo 1 faca
     para j de 1 ate 8 passo 1 faca

           se z[i,j] < 0 entao
           menores := menores + 1;
           fimse

     fimpara
 fimpara

 escreval("Foi encontrado ",menores," valor(es) menor(es) que 0.")

// Seção de Comandos
fimalgoritmo


