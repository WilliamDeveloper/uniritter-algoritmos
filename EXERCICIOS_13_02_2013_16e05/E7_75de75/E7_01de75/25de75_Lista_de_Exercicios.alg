algoritmo "List_Ex_25de75"
//arquivo "C:\Users\WILLIAM\Desktop\25_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//25. Ler um vetor A de 10 n�meros. Ap�s, ler mais um n�mero
// e guardar em uma vari�vel X. Armazenar em um vetor M
//o resultado de cada elemento de A multiplicado pelo valor X.
//Logo ap�s, imprimir o vetor M.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Se��o de Declara��es
var
a:vetor[1..10] de inteiro
m:vetor[1..10] de inteiro
i,x:inteiro

inicio

para i de 1 ate 10 faca
   escreva("Informe um numero para a[",i,"] .: ")
   leia(a[i])
fimpara

escreval("Informe um valor para X . : ")
leia(x)

para i de 1 ate 10 faca
   m[i]:=a[i]*x
fimpara

escreval
escreval("------------------------------------")
para i de 1 ate 10 faca
   escreval("M[",i,"]= ",m[i])
fimpara
escreval("------------------------------------")
escreval



fimalgoritmo
