algoritmo "List_Ex_40de75"
//arquivo "C:\Users\WILLIAM\Desktop\40_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//40. Leia uma matriz 8 x 8 e a transforme numa matriz triangular
//inferior , atribuindo zero a todos os elementos acima da diagonal
//principal, escrevendo-a ao final.
//Uma matriz triangular superior � aquela em que os elementos abaixo da diagonal principal s�o zero.
//Uma matriz triangular inferior � aquela em que os elementos acima da diagonal s�o zero.
//Uma matriz diagonal � uma onde s� os elementos da diagonal principal s�o diferentes de zero.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Se��o de Declara��es
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
