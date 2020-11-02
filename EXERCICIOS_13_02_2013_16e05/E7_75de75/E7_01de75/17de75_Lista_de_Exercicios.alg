algoritmo "List_Ex_17de75"
//arquivo "C:\Users\WILLIAM\Desktop\17_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//17. Faça um algoritmo que leia um vetor de 500 posições
//de números inteiros e divida todos os seus elementos pelo
// maior valor do vetor. Mostre o vetor após os cálculos.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Seção de Declarações
var
//IMPOSSIVEL FAZER COM 500 posiçoes devivo a restriçoes do visualG
v:vetor[1..50] de inteiro
calc:vetor[1..50] de real
i,maior:inteiro

inicio
para i de 1 ate 50 faca
   escreva("Informe um valor .: ")
   leia(v[i])
   se (i=1) entao
      maior:=v[i]
   fimse
   se (v[i]>maior) entao
      maior:=v[i]
   fimse
fimpara

para i de 1 ate 50 faca
   calc[i]:=v[i]/maior
fimpara

para i de 1 ate 50 faca
   escreval("v[",i,"] DIVIDO POR ",maior," = ",calc[i])
fimpara

fimalgoritmo
