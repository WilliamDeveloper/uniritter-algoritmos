algoritmo "List_Ex_26de28"
//arquivo "C:\Users\WILLIAM\Desktop\26_28Exercicio.txt"
// Função :
// Autor : WILLIAM GOULART
// Data : 22/10/2012
// Seção de Declarações
//26. Crie uma matriz 3x3 onde os valores da diagonal principal são 0 e os
//restantes são 1.
var
m: vetor[1..3,1..3] de inteiro
i,j: inteiro
inicio
// Seção de Comandos

para i de 1 ate 3 faca
   para j de 1 ate 3 faca
      se (i = j) entao
         m[i,j] <- 0
      senao
         m[i,j] <- 1
      fimSe
   fimPara
fimPara
escreval
escreval ("---------------------------------------")
escreval ("!!!!!!!!!!! GERANDO MATRIZ M !!!!!!!!!!")
escreval ("---------------------------------------")
escreval
para i de 1 ate 3 faca
   para j de 1 ate 3 faca
      escreva (m[i,j]:4)
   fimPara
   escreval("")
fimPara
fimalgoritmo
