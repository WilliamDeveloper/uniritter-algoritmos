algoritmo "List_Ex_26de75"
//arquivo "C:\Users\WILLIAM\Desktop\26_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//26. Fa�a um algoritmo para ler 20 n�meros e armazenar em um vetor.
// Ap�s a leitura total dos 20 n�meros, o algoritmo deve
//escrever esses 20 n�meros lidos na ordem inversa.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Se��o de Declara��es
var
v:vetor[1..20] de inteiro
i:inteiro
inicio

para i de 1 ate 20 faca
   escreva("Informe um numero para v[",i,"] .: ")
   leia(v[i])
fimpara

escreval
escreval("-----------------------------------")
para i de 20 ate 1 passo -1 faca
   escreval(v[i])
fimpara
escreval("-----------------------------------")
escreval




fimalgoritmo
