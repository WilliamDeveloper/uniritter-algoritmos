algoritmo "matriz_03"
// Função :
// Autor :WILLIAM, IURI
// Data : 17/10/2012
// Seção de Declarações

//[3] crie uma matriz 3x4 que leia os numero na primeira linha o
//resultado da segunda linha deve ser o mod 2 da primeira e a
//terceira linha de ser o resultado da segunda soma a 8.

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
