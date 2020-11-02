algoritmo "List_Ex_02de28"
//arquivo "C:\Users\WILLIAM\Desktop\02_28Exercicio.txt"
// Função :
// Autor : WILLIAM GOULART
// Data : 22/10/2012
// Seção de Declarações
//2. Escrever uma matriz 5X5 e gerar um nova onde os elementos serão os
//valores elevado ao cubo da primeira matriz informada.
var
m1 : vetor[1..5,1..5] de real
m2 : vetor[1..5,1..5] de real
i,j:inteiro
inicio
para i de 1 ate 5 faca
   para j de 1 ate 5 faca
      escreva("Informe um numero para  M1[", i, ",", j, "] : ")
      leia(m1[i,j])
      m2[i,j]:= exp((m1[i,j]),3)
   fimpara
fimpara
escreval
escreval("---------------------------")
escreval("!!! GERANDO MATRIZ !!!")
escreval("---------------------------")
escreval

para i de 1 ate 5 faca
   para j de 1 ate 5 faca
      escreva(m1[i,j])
   fimpara
   escreval
fimpara

escreval
escreval("---------------------------")
escreval("!!! GERANDO NOVA MATRIZ !!!")
escreval("---------------------------")
escreval

para i de 1 ate 5 faca
   para j de 1 ate 5 faca
      escreva(m2[i,j])
   fimpara
   escreval
fimpara



fimalgoritmo
