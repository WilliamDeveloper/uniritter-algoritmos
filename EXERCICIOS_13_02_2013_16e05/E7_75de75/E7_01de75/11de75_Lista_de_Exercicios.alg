algoritmo "List_Ex_11de75"
//arquivo "C:\Users\WILLIAM\Desktop\11_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//11. Escrever um algoritmo que gera os 10 primeiros números
// primos acima de 100 e os armazena em um vetor de X(10)
//escrevendo, no final, o vetor X.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Seção de Declarações
var
x:vetor[1..10] de inteiro
num,i,k,flag:inteiro

inicio
k:=1
num:=100

enquanto (num>=100) E (k<=10) faca
   flag:=0
   para i de 2 ate num-1 faca
      se (num mod i = 0) entao
         flag:=1
      fimse
   fimpara

   se (flag=0) entao
      x[k]:=num
      k:=k+1
   fimse

   num:=num+1
fimenquanto

escreval
escreval("-----------------------------------------")
escreval("  GERANDO O VETOR X DE NUMEROS PRIMOS")
escreval("-----------------------------------------")
escreval
para i de 1 ate 10 faca
   escreval("X[",i,"] =",x[i])
fimpara




fimalgoritmo
