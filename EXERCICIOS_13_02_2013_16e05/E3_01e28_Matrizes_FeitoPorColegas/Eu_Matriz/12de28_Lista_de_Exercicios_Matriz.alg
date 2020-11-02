algoritmo "List_Ex_12de28"
//arquivo "C:\Users\WILLIAM\Desktop\12_28Exercicio.txt"
// Função :
// Autor : WILLIAM GOULART
// Data : 22/10/2012
// Seção de Declarações
//12. Elabore um algoritmo que receba uma matriz M 3x6 e escreva quantos
//números são maiores que 100.
var
m: vetor[1..3,1..6] de inteiro
i, j, calc: inteiro

inicio

calc := 0

escreval("NÚMEROS MAIORES QUE 100 : ")

para i de 1 ate 3 passo 1 faca
   para j de 1 ate 6 passo 1 faca
      escreva("Informe um valor: ")
      leia(m[i,j])
   fimpara
fimpara


para i de 1 ate 3 passo 1 faca
   para j de 1 ate 6 passo 1 faca

      se m[i,j] > 100 entao
         calc := calc + 1
      fimse

   fimpara
fimpara

escreval("Foi encontrado ",calc," valor(es) maior(es) que 100.")

fimalgoritmo
