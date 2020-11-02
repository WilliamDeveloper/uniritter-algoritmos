algoritmo "List_Ex_07de28"
//arquivo "C:\Users\WILLIAM\Desktop\07_28Exercicio.txt"
// Função :
// Autor : WILLIAM GOULART
// Data : 22/10/2012
// Seção de Declarações
//7. Faça uma Matriz de nome F de 3 linhas e 3 colunas, que multiplique cada
//valor inserido na primeira linha por dois, na segunda linha faça a subtração
//por um e na terceira linha faça a soma por dez. Ao final imprima a MATRIZ.
var
f: vetor [1..3,1..3] de real
i,j: inteiro

inicio

para i de 1 ate 3 faca
   para j de 1 ate 3 faca

      escreva ("Informe os valores para serem calculados : ")
      leia (f[i,j])

   fimpara
fimpara

para i de 1 ate 3 faca
   para j de 1 ate 3 faca

      escolha i
      caso 1
         f[i,j] := f[i,j] * 2
      caso 2
         f[i,j] := f[i,j]-1
      caso 3
         f[i,j] := f[i,j]+10
      fimescolha

   fimpara
fimpara

para i de 1 ate 3 faca
   para j de 1 ate 3 faca

      escreva (" ", f[i,j])
   fimpara
   escreval
fimpara

fimalgoritmo
