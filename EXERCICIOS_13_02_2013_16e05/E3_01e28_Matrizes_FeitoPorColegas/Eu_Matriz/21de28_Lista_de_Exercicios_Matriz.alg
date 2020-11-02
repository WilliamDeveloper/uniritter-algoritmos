algoritmo "List_Ex_21de28"
//arquivo "C:\Users\WILLIAM\Desktop\21_28Exercicio.txt"
// Função :
// Autor : WILLIAM GOULART
// Data : 22/10/2012
// Seção de Declarações
//21. Escreva uma matriz com 3 linha e 3 colunas e some todos os elementos da
//matriz.
var
m: vetor [1..3,1..3] de inteiro
i,j,S: inteiro
inicio
para i de 1 ate 3 faca
   para j de 1 ate 3 faca
      escreva("Informe um numero para M[",i,",",j,"] : ")
      leia(m[i,j])
   fimpara
fimpara

Escreval
Escreval("-------------------------------------------------------")
Escreval

S<-0
para i de 1 ate 3 faca
   para j de 1 ate 3 faca
      escreva(m[i,j]:4)
      S<- S + m[i,j]
   fimpara
   escreval("")
fimpara
Escreval
Escreval("-------------------------------------------------------")
Escreval
escreval("A soma é:",S)

fimalgoritmo
