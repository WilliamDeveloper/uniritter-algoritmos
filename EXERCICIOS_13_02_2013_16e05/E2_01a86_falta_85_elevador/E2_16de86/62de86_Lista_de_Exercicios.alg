algoritmo "List_Ex_62de86"
//arquivo "C:\Users\WILLIAM\Desktop\62_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//62. Escrever um algoritmo que calcula e escreve o produto
// dos n�meros �mpares entre 5 e 40.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Se��o de Declara��es
var

i:inteiro
produto:real


inicio

produto:=1

para i de 5 ate 40 faca
   se (i mod 2 <>0 ) entao
      escreval(i)
      produto:=produto*i
   fimse
fimpara

escreval
escreval("-------------------------------------------------------")
escreval("O produto dos numeros impares entre 5 e 40 � : ",produto)



fimalgoritmo
