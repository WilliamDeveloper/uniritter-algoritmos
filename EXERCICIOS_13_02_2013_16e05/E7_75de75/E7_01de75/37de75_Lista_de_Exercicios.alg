algoritmo "List_Ex_37de75"
//arquivo "C:\Users\WILLIAM\Desktop\37_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//37. Leia uma matriz 6 x 6, conte e escreva quantos valores
// maiores que 10 ela possui.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Seção de Declarações
var
m:vetor[1..6,1..6] de inteiro
i,j,k:inteiro

inicio

k:=0
para i de 1 ate 6 faca
   para j de 1 ate 6 faca
      escreva("Informe um numero para m[",i,"",j,"] .: ")
      leia(m[i,j])
      se (m[i,j]>10) entao
         k:=k+1
      fimse
   fimpara
fimpara
escreval
escreval("-----------------------------------------------------")
Escreval("Existem ",k," numeros maior que 10 na matriz 6x6")
escreval("-----------------------------------------------------")
escreval
fimalgoritmo
