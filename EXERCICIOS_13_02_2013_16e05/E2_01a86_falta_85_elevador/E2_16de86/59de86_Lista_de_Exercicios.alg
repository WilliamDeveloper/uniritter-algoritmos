algoritmo "List_Ex_59de86"
//arquivo "C:\Users\WILLIAM\Desktop\59_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//59. Escrever um algoritmo que escreve os n�meros pares
//entre 100 e 200, bem como a soma desses n�meros.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Se��o de Declara��es
var

soma,i:inteiro

inicio

soma:=0

para i de 100 ate 200 faca

   se (i mod 2 = 0) entao
      soma:=soma+i
      escreval(i)
   fimse

fimpara

escreval
escreval("-----------------------------------------")
escreval("A soma dos numeros pares entre � :",soma)

fimalgoritmo
