algoritmo "List_Ex_15de75"
//arquivo "C:\Users\WILLIAM\Desktop\15_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//15. Fa�a um algoritmo que leia um c�digo num�rico inteiro
//e um vetor de 50 posi��es de n�meros reais. Se o c�digo for zero,
//termine o algoritmo. Se o c�digo for 1, mostre o vetor na ordem direta.
//Se o c�digo for 2, mostre o vetor na ordem inversa.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Se��o de Declara��es
var
v:vetor[1..50] de real
i,codigo:inteiro
inicio
para i de 1 ate 50 faca
   escreva("Informe um numero .: ")
   leia(v[i])
fimpara

repita
   escreva("Informe um valor de Codigo ..: ")
   leia(codigo)
   escolha(codigo)
   caso 1
      para i de 1 ate 50 faca
         escreval(v[i])
      fimpara
   caso 2 
      para i de 50 ate 1 passo -1 faca
         escreval(v[i])
      fimpara
   fimescolha

ate codigo=0


fimalgoritmo
