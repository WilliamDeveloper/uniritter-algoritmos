algoritmo "List_Ex_61de86"
//arquivo "C:\Users\WILLIAM\Desktop\61_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//61. Escrever um algoritmo que calcula e escreve a m�dia
// aritm�tica dos n�meros pares entre 13 e 73
// (Adaptado de Berg; Figueir�, 1998).
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Se��o de Declara��es
var

i,cm,soma:inteiro
media:real

inicio

cm:=0

para i de 13 ate 73 faca
   se (i mod 2 = 0) entao
      soma:=soma+i
      cm:=cm+1
      escreval(i)
   fimse
fimpara

media:=soma/cm

escreval
escreval("----------------------------------------------------")
escreval("A media dos numeros pares entre 13 e 73 � : ",media)


fimalgoritmo
