algoritmo "List_Ex_31de75"
//arquivo "C:\Users\WILLIAM\Desktop\31_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//31. Faça um algoritmo para ler dois vetores V1 e V2 de 15 números cada.
// Calcular e escrever a quantidade de vezes que V1 e V2 possuem
//os mesmos números e nas mesmas posições.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Seção de Declarações
var
v1:vetor[1..15] de inteiro
v2:vetor[1..15] de inteiro
i,j:inteiro

inicio

para i de 1 ate 15 faca
   escreva("Informe  um numero para v1[",i,"] .: ")
   leia(v1[i])
fimpara
escreval
escreval("---------------------------------------------------")
escreval
para i de 1 ate 15 faca
   escreva("Informe  um numero para v2[",i,"] .: ")
   leia(v2[i])
fimpara
j:=0
para i de 1 ate 15 faca
   se (v1[i]=v2[i]) entao
      j:=j+1
   fimse
fimpara
escreval
escreval("----------------------------------------------------------------------")
escreval("o numero de vezes que v1 e v2 na mesma posicao sao iguais é .: ",j)
escreval("----------------------------------------------------------------------")
escreval
fimalgoritmo
