algoritmo "List_Ex_55de86"
//arquivo "C:\Users\WILLIAM\Desktop\55_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//55. Escrever um algoritmo que lê 10 valores para N,
//todos inteiros e positivos, e para cada N lido, escrever
//a tabuada de N*1 até N*N (Adaptado de Berg; Figueiró, 1998).
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var
n,i,j:inteiro


inicio

n:=10

para i de 1 ate n faca
   para j de 1 ate n faca
      se (j=1) entao
         escreval
         escreval("TABUADA DO ",i,"*",j," até",i,"*",n)
         escreval
      fimse
      escreval(i," x",j," =",i*j)

   fimpara
fimpara



fimalgoritmo
