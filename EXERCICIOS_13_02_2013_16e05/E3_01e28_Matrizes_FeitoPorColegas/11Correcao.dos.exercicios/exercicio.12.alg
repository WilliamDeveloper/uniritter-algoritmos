algoritmo "exercicio_1"
// Exercício 1 - Trabalho em Dupla
// Autor : Fábio, Ralph
// Data : 17/10/2012
// 1) Elabore um algoritmo que receba uma matriz m 3 x 6, e escreva quantos números são maiores que 100.

var
m: vetor[1..3,1..6] de inteiro
j, k, calcula: inteiro

inicio

calcula := 0;

escreval("NÚMEROS MAIORES QUE 100")

para j de 1 ate 3 passo 1 faca
     para k de 1 ate 6 passo 1 faca
     escreva("Informe um valor: ")
     leia(m[j,k])
     fimpara
fimpara


para j de 1 ate 3 passo 1 faca
     para k de 1 ate 6 passo 1 faca
     
           se m[j,k] > 100 entao
           calcula := calcula + 1;
           fimse
 
     fimpara
 fimpara

 escreval("Foi encontrado ",calcula," valor(es) maior(es) que 100.")

// Seção de Comandos
fimalgoritmo

