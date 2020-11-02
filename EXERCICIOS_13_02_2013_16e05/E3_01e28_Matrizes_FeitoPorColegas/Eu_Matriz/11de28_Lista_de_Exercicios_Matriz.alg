algoritmo "List_Ex_11de28"
//arquivo "C:\Users\WILLIAM\Desktop\11_28Exercicio.txt"
// Função :
// Autor : WILLIAM GOULART
// Data : 22/10/2012
// Seção de Declarações
//11. Elabore um algoritmo que leia uma matriz 3X3 que conte quantos valores
//maiores de 5 e menores que 10 ela recebeu.
var

i,j : inteiro
m: vetor [1..3,1..3] de inteiro
cont: inteiro

inicio

cont:=0

para i de 1 ate 3 faca
   para j de 1 ate 3 faca

      escreva("Informe um numero : ")
      leia(m[i,j])
   fimpara
fimpara
para i de 1 ate 3 faca
   para j de 1 ate 3 faca
      se (m[i,j]>5) e (m[i,j]<10) entao
         cont:= cont + 1

      fimse
   fimpara
fimpara

escreval
escreval("------------------------------------------------------------------------")
escreval(" a quantidade de valores maiores de 5 e menores que 10 da matriz é ",cont)
escreval("------------------------------------------------------------------------")
escreval



fimalgoritmo
