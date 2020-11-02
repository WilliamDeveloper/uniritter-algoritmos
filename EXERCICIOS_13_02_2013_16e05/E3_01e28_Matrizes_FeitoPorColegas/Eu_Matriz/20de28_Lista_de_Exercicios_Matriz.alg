algoritmo "List_Ex_20de28"
//arquivo "C:\Users\WILLIAM\Desktop\20_28Exercicio.txt"
// Função :
// Autor : WILLIAM GOULART
// Data : 22/10/2012
// Seção de Declarações 
//20. Crie uma matriz 3x4 que leia os números na primeira linha. O resultado da
//segunda linha deve ser o resto da divisão inteira por 2 da primeira e a terceira
//linha de ser o resultado da segunda somado a 8.

// gabarito
//1 2 3 4  - numeros digitados pelo usuario
//1 0 1 0  - resultado de mod 2 para cada um dos numeros digitados pelo usuario
//9 8 9 8  - o resultado da segunda linha somado a 8
var
i,j,k,l:inteiro
m:vetor[1..3,1..4] de inteiro

inicio
k:=1
l:=2
para i de 1 ate 3 faca
   para j de 1 ate 4 faca
      se (i=1) entao
         escreval("informe um numero")
         leia(m[i,j])
      senao
         se (i=2) entao
         m[i,j]:=m[k,j] mod 2

         senao
         m[i,j]:=m[l,j] +8

         fimse
      fimse

   fimpara
fimpara


para i de 1 ate 3 faca
   para j de 1 ate 4 faca
      se (j=1) entao
         escreval
      fimse
      escreva(m[i,j])
   fimpara
fimpara


fimalgoritmo
