algoritmo "List_Ex_01de15"
// usando leitura apartir do txt
//arquivo "C:\Users\WILLIAM\Desktop\ex01.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
// 1) Escrever um algoritmo que lê um vetor qualquer
// de 10 posições e imprime todos os valores iguais a 10,
// e suas respectivas posições neste vetor.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var
c : inteiro
v : vetor [1..10] de inteiro
inicio
para c de 1 ate 10 faca
   escreva("Informe um numero: ")
   leia(v[c])
fimpara

para c de 1 ate 10 faca
   se v[c]=10 entao
      escreval("A posicao ",c," do Vetor tem o valor 10.")
   fimse
fimpara
fimalgoritmo
