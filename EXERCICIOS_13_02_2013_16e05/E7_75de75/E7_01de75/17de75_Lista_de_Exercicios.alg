algoritmo "List_Ex_17de75"
//arquivo "C:\Users\WILLIAM\Desktop\17_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//17. Fa�a um algoritmo que leia um vetor de 500 posi��es
//de n�meros inteiros e divida todos os seus elementos pelo
// maior valor do vetor. Mostre o vetor ap�s os c�lculos.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Se��o de Declara��es
var
//IMPOSSIVEL FAZER COM 500 posi�oes devivo a restri�oes do visualG
v:vetor[1..50] de inteiro
calc:vetor[1..50] de real
i,maior:inteiro

inicio
para i de 1 ate 50 faca
   escreva("Informe um valor .: ")
   leia(v[i])
   se (i=1) entao
      maior:=v[i]
   fimse
   se (v[i]>maior) entao
      maior:=v[i]
   fimse
fimpara

para i de 1 ate 50 faca
   calc[i]:=v[i]/maior
fimpara

para i de 1 ate 50 faca
   escreval("v[",i,"] DIVIDO POR ",maior," = ",calc[i])
fimpara

fimalgoritmo
