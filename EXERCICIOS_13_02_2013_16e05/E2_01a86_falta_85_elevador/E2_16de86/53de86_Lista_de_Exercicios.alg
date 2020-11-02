algoritmo "List_Ex_53de86"
//arquivo "C:\Users\WILLIAM\Desktop\53_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//53. Escrever um algoritmo que leia 2 valores quaisquer
//e escreva a soma dos valores compreendidos entre os 2 números
//lidos, a média aritmética dos valores compreendidos entre os
//números lidos e a quantidade de valores compreendidos entre
//os dois números lidos.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var

i,va,vb,a,b,soma,cont:inteiro
media:real

inicio
soma:=0
cont:=0

escreval("Informe o valor de A: ")
leia(a)
escreval("Informe o valor de B: ")
leia(b)
va:=a+1
vb:=b-1

para i de va ate vb faca
   soma:=soma+i
   cont:=cont+1
fimpara

media:=soma/cont


escreval
escreval("-------------------------")
escreval("A soma dos valores entre ",a," e",b," é = :",soma)
escreval("A media dos valores entre ",a," e",b," é = :",media)
escreval("A quantidade de valores compreendidos entre ",a," e",b," é = :",cont)


fimalgoritmo
