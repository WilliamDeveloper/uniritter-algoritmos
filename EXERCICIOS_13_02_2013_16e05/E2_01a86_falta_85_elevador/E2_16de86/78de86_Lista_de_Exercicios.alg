algoritmo "List_Ex_78de86"
//arquivo "C:\Users\WILLIAM\Desktop\78_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//78. Escrever um algoritmo que l� um n�mero n�o determinado
// de valores positivos e, no final, imprima a m�dia aritm�tica
// desses valores
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Se��o de Declara��es
var

media:real
soma,cont,valor:inteiro


inicio

soma:=0
cont:=0

repita

   escreval
   escreval("---------------------------")
   escreval("Informe um valor : ")
   leia(valor)
   se (valor>=0) entao
      soma:=soma+valor
      cont:=cont+1

   fimse

ate (valor<0)

media:=soma/cont

escreval
escreval("----------------------------")
escreval("A m�dia aritmetica desses valores � : ",media)


fimalgoritmo
