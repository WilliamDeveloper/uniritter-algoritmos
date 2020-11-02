algoritmo "List_Ex_01de75"
//arquivo "C:\Users\WILLIAM\Desktop\01_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//1. Escreva um algoritmo que leia e mostre um vetor de 20 elementos inteiros.
// A seguir, conte quantos valores pares existem no vetor.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Seção de Declarações
var
v:vetor[1..20] de inteiro
contpar,i:inteiro
inicio
contpar:=0
para i de 1 ate 20 faca
   escreva("Informe um numero para o elemento",i,".: ")
   leia(v[i])
   se (v[i] mod 2 = 0) entao
      contpar:=contpar+1
   fimse
fimpara
para i de 1 ate 20 faca
   escreval(v[i])
fimpara

escreval("existem nessa sequencia",contpar," elementos pares")



fimalgoritmo
