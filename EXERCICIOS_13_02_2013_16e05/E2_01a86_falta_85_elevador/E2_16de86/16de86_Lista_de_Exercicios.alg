algoritmo "List_Ex_16de86"
//arquivo "C:\Users\WILLIAM\Desktop\16_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//16. Escrever um algoritmo que leia dois valores (A e B)
//e troque os valores, de forma que a variável A fique com
//o valor da variável B e vice-versa.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var
A,B,AUX:REAL

inicio
ESCREVAL("INFORME UM VALOR PARA A : ")
LEIA(A)
ESCREVAL("INFORME UM VALOR PARA B : ")
LEIA(B)

AUX:=A
A:=B
B:=AUX

ESCREVAL
ESCREVAL("A= ",A)
ESCREVAL("B= ",B)


fimalgoritmo
