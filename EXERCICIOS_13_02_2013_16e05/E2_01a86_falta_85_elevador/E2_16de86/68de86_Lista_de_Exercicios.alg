algoritmo "List_Ex_68de86"
//arquivo "C:\Users\WILLIAM\Desktop\68_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//68. Sendo H=1+1/2+1/3+1/4+...+1/N, escreva um algoritmo que
// gere o número H. O número N é fornecido pelo usuário
// (Adaptado de Berg; Figueiró, 1998).
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
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
escreval("O valor final de H é : ",h)


fimalgoritmo
