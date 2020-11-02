algoritmo "List_Ex_01de28"
//arquivo "C:\Users\WILLIAM\Desktop\01_28Exercicio.txt"
// Função :
// Autor : WILLIAM GOULART
// Data : 22/10/2012
// Seção de Declarações
//1. Fazer um algoritmo que leia uma matriz de 3x4 de números reais e depois
//exibir o primeiro e o último valor.
var

m : vetor[1..3,1..4] de real
i,j:inteiro

inicio
para i de 1 ate 3 faca
   para j de 1 ate 4 faca
      escreva("Informe um numero real para  M[", i, ",", j, "] : ")
      leia(m[i,j])
   fimpara
fimpara
escreval
escreval("---------------------------")
escreval("!!! GERANDO MATRIZ !!!")
escreval("---------------------------")
para i de 1 ate 3 faca
   para j de 1 ate 4 faca
      escreva(m[i,j]:3)
   fimpara
   escreval("")
fimpara
escreval
escreval
para i de 1 ate 3 faca
   para j de 1 ate 4 faca
      se (i=1)E(j=1) entao
         escreval("---------------------------")
         escreval("!!! PRIMEIRO VALOR !!!")
         escreval("---------------------------")
         escreva(m[i,j]:3)
      fimse
      se (i=3)E(j=4) entao
         escreval
         escreval("---------------------------")
         escreval("!!! ULTIMO VALOR !!!")
         escreval("---------------------------")
         escreval
         escreva(m[i,j]:3)
      fimse
   fimpara
   escreval("")
fimpara
fimalgoritmo
