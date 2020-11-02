algoritmo "List_Ex_28de28"
//arquivo "C:\Users\WILLIAM\Desktop\28_28Exercicio.txt"
// Função :
// Autor : WILLIAM GOULART
// Data : 22/10/2012
// Seção de Declarações
//28. Declare e leia uma matriz 4x4 e diga quantos números são menores do que
//10.
var
m: vetor[1..4,1..4] de inteiro
i,j,MD: inteiro
inicio
// Seção de Comandos

MD:=0

para i de 1 ate 4 faca
   para j de 1 ate 4 faca
      escreva("Informe um valor para M[",i,",",j,"] : ")
      leia(m[i,j])
      se (m[i,j]<10) entao
         MD <- MD + 1
      fimSe
   fimPara
fimPara
escreval
escreval("------------------------------------------------")
escreval("Foi encontrado ",MD," numeros menores que 10")
escreval("------------------------------------------------")
escreval
fimalgoritmo
