algoritmo "List_Ex_32de75"
//arquivo "C:\Users\WILLIAM\Desktop\32_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//32. Faça um algoritmo para ler um vetor de 30 números.
// Após isto, ler mais um número qualquer, calcular e
// escrever quantas vezes esse número aparece no vetor.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Seção de Declarações
var
v:vetor[1..30] de inteiro
i,j,busca:inteiro
inicio

para i de 1 ate 30 faca
   escreva("Informe um numero para v[",i,"] .: ")
   leia(v[i])
fimpara

escreva("Informe um numero que deseja buscar no vetor .: ")
leia(busca)
j:=0
para i de 1 ate 30 faca
   se (v[i]=busca) entao
      j:=j+1
   fimse
fimpara
escreval
escreval("------------------------------------------------------")
escreval(" O numero ",busca," apareceu ",j," vezes no vetor. ")
escreval("------------------------------------------------------")
escreval
fimalgoritmo
