algoritmo "List_Ex_72de86"
//arquivo "C:\Users\WILLIAM\Desktop\72_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//72. Escrever um algoritmo que imprima todas as possibilidades
//de que, no lan�amento de dois dados, a soma dos valores de cada
// dado seja igual a 7 (adaptado de Forbellone; Ebersp�cher, 2000).
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Se��o de Declara��es
var

A,B,tam:inteiro

inicio

tam:=50

para a de -tam ate tam faca
   para b de -tam ate tam faca
       se (a+b=7) entao
       escreval("A=",a," B=",b)
       fimse

   fimpara
fimpara


fimalgoritmo
