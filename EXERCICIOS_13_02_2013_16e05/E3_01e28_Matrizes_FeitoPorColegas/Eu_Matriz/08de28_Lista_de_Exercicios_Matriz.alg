algoritmo "List_Ex_08de28"
//arquivo "C:\Users\WILLIAM\Desktop\08_28Exercicio.txt"
// Fun��o :
// Autor : WILLIAM GOULART
// Data : 22/10/2012
// Se��o de Declara��es
//8. Leia uma matriz 3x3 e ap�s leia uma posi��o na qual ser� informada a
//localiza��o do valor na matriz.
var

m: vetor [1..3,1..3] de real
i,j,flag,a,b,x:inteiro

inicio

flag:=0

para i de 1 ate 3 faca
   para j de 1 ate 3 faca
      escreva("Informe um numero para  M[", i, ",", j, "] : ")
      leia(m[i,j])
   fimpara
fimpara

escreval
escreval("---------------------------")
escreval("!!! INFORME UM VALOR !!!")
escreval("---------------------------")
escreval
leia(x)

para i de 1 ate 3 faca
   para j de 1 ate 3 faca
      Se (m[i,j]=x) entao
         flag:=1
         a:=i
         b:=j
      fimse
   fimpara
fimpara
escreval
escreval("---------------------------")
escreval("!!! RESULTADO !!!")
escreval("---------------------------")
escreval
escolha (flag)
caso 1
   escreva ("O valor ",x, " esta na linha ",a, " e na coluna ",b)
outrocaso
   escreva("Valor nao encontrado")
   escreval
fimescolha

escreval

fimalgoritmo
