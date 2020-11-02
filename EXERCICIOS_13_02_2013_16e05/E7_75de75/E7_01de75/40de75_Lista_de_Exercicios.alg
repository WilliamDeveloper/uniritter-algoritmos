algoritmo "List_Ex_40de75"
//arquivo "C:\Users\WILLIAM\Desktop\40_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//40. Leia uma matriz 8 x 8 e a transforme numa matriz triangular
//inferior , atribuindo zero a todos os elementos acima da diagonal
//principal, escrevendo-a ao final.
//Uma matriz triangular superior é aquela em que os elementos abaixo da diagonal principal são zero.
//Uma matriz triangular inferior é aquela em que os elementos acima da diagonal são zero.
//Uma matriz diagonal é uma onde só os elementos da diagonal principal são diferentes de zero.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Seção de Declarações
var
m:vetor[1..8,1..8] de inteiro
i,j,n:inteiro

inicio

para i de 1 ate 8 faca
   para j de 1 ate 8 faca
      escreva("Informe um numero para m[",i,",",j,"] .: ")
      leia(m[i,j])
   fimpara
fimpara

n:=1
para i de 1 ate 8 faca
   n:=n+1
   para j de n ate 8 faca
      m[i,j]:=0
   fimpara
fimpara


para i de 1 ate 8 faca
   para j de 1 ate 8 faca
      escreva (m[i,j]:2," ")
   fimpara
   escreval
fimpara





fimalgoritmo
