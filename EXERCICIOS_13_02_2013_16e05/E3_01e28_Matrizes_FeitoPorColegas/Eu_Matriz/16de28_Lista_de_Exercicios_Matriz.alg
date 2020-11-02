algoritmo "List_Ex_16de28"
//arquivo "C:\Users\WILLIAM\Desktop\16_28Exercicio.txt"
// Função :
// Autor : WILLIAM GOULART
// Data : 22/10/2012
// Seção de Declarações
//16. Escreva uma matriz 2x2 de números inteiro e acumule a soma de todos os
//seus elementos e ao final testar se o resultado é par ou impar.
var
i,j, valor, acum : inteiro
M: vetor [1..2,1..2] de inteiro
r:caracter
inicio
acum <- 0
para i de 1 ate 2 faca
   para j de 1 ate 2 faca
      escreva("Informe um numero para M[",i,",",j,"] : ")
      leia(M[i,j])
      acum <- acum+M[i,j]
   fimpara
fimpara
se (acum mod 2=0) entao
   r:="PAR"

senao
   r:="IMPAR"

fimse
escreval
escreval("--------------------------------------------------------------------")
escreval("O valor da soma dos elementos da matriz é ",acum," e este número é ",r)
escreval("--------------------------------------------------------------------")
escreval

fimalgoritmo
