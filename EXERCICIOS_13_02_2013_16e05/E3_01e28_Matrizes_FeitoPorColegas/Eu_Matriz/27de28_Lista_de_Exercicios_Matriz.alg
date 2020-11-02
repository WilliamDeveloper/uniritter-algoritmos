algoritmo "List_Ex_27de28"
//arquivo "C:\Users\WILLIAM\Desktop\27_28Exercicio.txt"
// Função :
// Autor : WILLIAM GOULART
// Data : 22/10/2012
// Seção de Declarações
//27. Declare e leia uma matriz 2x2 onde os valores da linha 1 recebem +2 e os da
//linha 2 recebem +3 sobre o valor inserido.
var
m: vetor[1..2,1..2] de inteiro
i,j: inteiro

inicio
// Seção de Comandos

para i de 1 ate 2 faca
   para j de 1 ate 2 faca
      escreva("Informe um valor para M[",i,",",j,"] : ")
      leia(m[i,j])
   fimPara
fimPara
para i de 1 ate 2 faca
   para j de 1 ate 2 faca
      se(i=1) entao
         m[i,j] <- m[i,j]+2
      senao
         m[i,j] <- m[i,j]+3
      fimSe
   fimPara
fimPara
escreval
escreval("------------------------------------------------------")
escreval("!!!!!!!!!!!!!!!! GERANDO MATRIZ M !!!!!!!!!!!!!!!!!!!!")
escreval("------------------------------------------------------")
escreval
para i de 1 ate 2 faca
   para j de 1 ate 2 faca
      escreva(m[i,j]:4)
   fimPara
   escreval("")
fimPara
fimalgoritmo
