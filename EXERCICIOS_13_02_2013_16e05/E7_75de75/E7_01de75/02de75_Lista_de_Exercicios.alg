algoritmo "List_Ex_02de75"
//arquivo "C:\Users\WILLIAM\Desktop\02_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//2. Escreva um algoritmo que leia dois vetores de 10 posi��es
//e fa�a a multiplica��o dos elementos de mesmo �ndice,
//colocando o resultado em um terceiro vetor. Mostre o vetor resultante.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Se��o de Declara��es
var
v1:vetor[1..10] de inteiro
v2:vetor[1..10] de inteiro
v3:vetor[1..10] de inteiro
i:inteiro
inicio

para i de 1 ate 10 faca
   escreva("Informe um valor para V1[",i,"] .: ")
   leia(v1[i])
   escreva("Informe um valor para V2[",i,"] .: ")
   leia(v2[i])
   v3[i]:=v1[i]*v2[i]
fimpara
escreval
escreval("-------------------------------------------")
escreval("                GERANDO V3")
escreval("-------------------------------------------")
escreval

para i de 1 ate 10 faca
   escreval("V3[",i,"]=",v3[i])
fimpara


fimalgoritmo
