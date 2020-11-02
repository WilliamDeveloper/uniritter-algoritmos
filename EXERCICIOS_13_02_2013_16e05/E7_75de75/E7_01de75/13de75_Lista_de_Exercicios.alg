algoritmo "List_Ex_13de75"
//arquivo "C:\Users\WILLIAM\Desktop\13_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//13. Escrever um algoritmo que lê um vetor K(15) e o escreve.
//Crie, a seguir, um vetor P, que contenha todos os números primos de K.
//Escreva o vetor P.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Seção de Declarações
var
k:vetor[1..15] de inteiro
p:vetor[1..15] de inteiro
i,j,m,flag:inteiro
inicio
m:=1
para i de 1 ate 15 faca
   escreva("Informe um numero .: ")
   leia(k[i])
fimpara

para i de 1 ate 15 faca
   flag:=0
   para j de 2 ate k[i]-1 faca
      se (k[i] mod j = 0) entao
         flag:=1
      fimse

   fimpara
   se(flag=0 ) entao
      p[m]:=k[i]
      m:=m+1
   fimse
fimpara

para i de 1 ate m-1 faca
   escreva(p[i])
fimpara



fimalgoritmo
