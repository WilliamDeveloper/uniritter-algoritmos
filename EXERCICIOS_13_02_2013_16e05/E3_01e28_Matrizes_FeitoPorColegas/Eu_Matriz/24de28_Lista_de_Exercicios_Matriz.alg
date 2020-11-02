algoritmo "List_Ex_24de28"
//arquivo "C:\Users\WILLIAM\Desktop\24_28Exercicio.txt"
// Função :
// Autor : WILLIAM GOULART
// Data : 22/10/2012
// Seção de Declarações
//24. Ler uma matriz 5X5 e gerar outra em que cada elemento é o cubo do
//elemento respectivo na matriz original. Imprima depois o elemento do meio
//desta nova matriz.
var
m1:vetor[1..5,1..5] de real
m2:vetor[1..5,1..5] de real
i,j:inteiro

inicio

para i de 1 ate 5 faca
   para j de 1 ate 5 faca
      escreva("Ingorme um numero para M1[",i,",", j,"] : ")
      leia(m1[i,j])
   fimpara
fimpara
escreval
escreval("---------------------------------------------------")
escreval("!!!!!!!!!!!!!! GERANDO MATRIZ M1 !!!!!!!!!!!!!!!!!!")
escreval("---------------------------------------------------")
escreval
para i de 1 ate 5 faca
   para j de 1 ate 5 faca
      escreva(m1[i,j]:7)
   fimpara
   escreval("")
fimpara

para i de 1 ate 5 faca
   para j de 1 ate 5 faca
      m2[i,j]<- (m1[i,j]^3)
   fimpara
fimpara
escreval
escreval("---------------------------------------------------")
escreval("!!!!!!!!!!!!!! GERANDO MATRIZ M2 !!!!!!!!!!!!!!!!!!")
escreval("---------------------------------------------------")
escreval
para i de 1 ate 5 faca
   para j de 1 ate 5 faca

      escreva(m2[i,j]:7)

   fimpara
   escreval("")
fimpara


fimalgoritmo
