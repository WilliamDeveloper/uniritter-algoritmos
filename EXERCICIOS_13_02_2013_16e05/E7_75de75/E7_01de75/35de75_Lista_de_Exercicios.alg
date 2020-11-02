algoritmo "List_Ex_35de75"
//arquivo "C:\Users\WILLIAM\Desktop\35_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//35. Declare uma matriz 5 x 5. Preencha com 1 a diagonal
// principal e com 0 os demais elementos.
//Escreva ao final a matriz obtida.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Seção de Declarações
var
m:vetor[1..5,1..5] de inteiro
i,j:inteiro
inicio
para i de 1 ate 5 faca
   para j de 1 ate 5 faca
      se (i=j) entao
         m[i,j]:=1
      senao
         m[i,j]:=0
      fimse
   fimpara
fimpara
//diagonal principal
para i de 1 ate 5 faca
   para j de 1 ate 5 faca
      escreva(m[i,j])
      se (j=5) entao
         escreval
      fimse
   fimpara
fimpara


fimalgoritmo
