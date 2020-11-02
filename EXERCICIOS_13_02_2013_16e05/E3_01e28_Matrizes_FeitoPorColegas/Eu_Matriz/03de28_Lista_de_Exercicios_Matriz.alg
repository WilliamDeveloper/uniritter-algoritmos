algoritmo "List_Ex_03de28"
//arquivo "C:\Users\WILLIAM\Desktop\03_28Exercicio.txt"
// Função :
// Autor : WILLIAM GOULART
// Data : 22/10/2012
// Seção de Declarações
//3. Faça um algoritmo para ler uma matriz 2X3 real e depois gerar e imprimir sua
//transposta (matriz 3X2 equivalente).
var
m1 : vetor[1..2,1..3] de real
m2 : vetor[1..3,1..2] de real
i,j:inteiro


inicio

para i de 1 ate 2 faca
   para j de 1 ate 3 faca
      escreva("Informe um numero real para  M[", i, ",", j, "] : ")
      leia(m1[i,j])
      m2[j,i]:=m1[i,j]
   fimpara
fimpara

escreval
escreval("---------------------------")
escreval("!!! GERANDO NOVA MATRIZ !!!")
escreval("---------------------------")
escreval

para i de 1 ate 2 faca
   para j de 1 ate 3 faca
      escreva(m1[i,j])
   fimpara
   escreval("")
fimpara


escreval
escreval("---------------------------")
escreval("!!! MATRIZ TRANSPOSTA !!!")
escreval("---------------------------")
escreval
para i de 1 ate 3 faca
   para j de 1 ate 2 faca
      escreva(m2[i,j])
   fimpara
   escreval("")
fimpara



fimalgoritmo
