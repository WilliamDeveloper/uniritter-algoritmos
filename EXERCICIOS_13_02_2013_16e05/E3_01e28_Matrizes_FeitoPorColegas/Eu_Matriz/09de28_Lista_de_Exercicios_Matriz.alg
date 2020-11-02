algoritmo "List_Ex_09de28"
//arquivo "C:\Users\WILLIAM\Desktop\09_28Exercicio.txt"
// Função :
// Autor : WILLIAM GOULART
// Data : 22/10/2012
// Seção de Declarações
//9. Crie um algoritmo que lerá 10 números e os coloquem numa matriz
//ordenando sua linha e coluna.
var
i,j : inteiro
m: vetor [1..5,1..2] de inteiro

inicio

para i de 1 ate 5 faca
   para j de 1 ate 2 faca

      escreva("Informe um numero : ")
      leia(m[i,j])

   fimpara
fimpara

para i de 1 ate 5 faca
   para j de 1 ate 2 faca
      escreval("o numero ",m[i,j],"  está na linha ",i,"  coluna  ",j)
   fimpara
fimpara
escreval

para i de 1 ate 5 faca
   para j de 1 ate 2 faca
      escreva(m[i,j]:3)
   fimpara
   escreval("")
fimpara

fimalgoritmo
