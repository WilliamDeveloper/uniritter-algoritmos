algoritmo "List_Ex_13de28"
//arquivo "C:\Users\WILLIAM\Desktop\13_28Exercicio.txt"
// Função :
// Autor : WILLIAM GOULART
// Data : 22/10/2012
// Seção de Declarações 
//13. Elabore um algoritmo que receba uma matriz Z 2x8 e escreva quantos
//números são negativos.
var
m: vetor[1..2,1..8] de inteiro
i, j, men: inteiro

inicio

men := 0

escreval("NÚMEROS MENORES QUE 0")

para i de 1 ate 2 passo 1 faca
     para j de 1 ate 8 passo 1 faca
     escreva("Informe um valor: ")
     leia(m[i,j])
     se m[i,j] < 0 entao
           men := men + 1;
           fimse
     fimpara
fimpara


 escreval("Foi encontrado ",men," valor(es) menor(es) que 0.")
fimalgoritmo
