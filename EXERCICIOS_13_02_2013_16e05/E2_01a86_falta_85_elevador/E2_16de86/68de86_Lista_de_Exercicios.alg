algoritmo "List_Ex_68de86"
//arquivo "C:\Users\WILLIAM\Desktop\68_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//68. Sendo H=1+1/2+1/3+1/4+...+1/N, escreva um algoritmo que
// gere o n�mero H. O n�mero N � fornecido pelo usu�rio
// (Adaptado de Berg; Figueir�, 1998).
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Se��o de Declara��es
var

h:real
i,n:inteiro

inicio

escreval("Informe um valor para N e veja o resultado : ")
leia(n)

para i de 1 ate n faca

h:=h+1/i
  escreval("N=",i,"=",h)

fimpara

escreval
escreval("----------------------------")
escreval("O valor final de H � : ",h)


fimalgoritmo
