algoritmo "List_Ex_84de86"
//arquivo "C:\Users\WILLIAM\Desktop\84_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//84. Escrever um algoritmo que calcule a soma dos n�meros
// fornecidos pelo usu�rio. O algoritmo deve encerrar quando
// o usu�rio entrar com o valor zero.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Se��o de Declara��es
var

valor,soma:real

inicio

soma:=0

repita

   escreval
   escreval("---------------------------------")
   escreva("Informe  um valor : ")
   leia(valor)

   soma:=soma+valor
   escreval("At� o momento a soma corresponde a : ",soma)

ate (valor=0)

escreval
escreval("---------------------------------")
escreval("A soma dos numeros digitados � igual a : ",soma)



fimalgoritmo
