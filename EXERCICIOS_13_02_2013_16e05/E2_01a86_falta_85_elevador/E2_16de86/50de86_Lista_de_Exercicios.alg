algoritmo "List_Ex_50de86"
//arquivo "C:\Users\WILLIAM\Desktop\50_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//50. Dados os valores de M e N, com N>M fazer um algoritmo
//para determinar a soma de todos os valores entre M e N.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var

m,n:inteiro
i:inteiro
acumulador:inteiro

inicio

acumulador:=0

escreval("Informe o Valor de M : ")
leia(m)
escreval("Informe o Valor de N : ")
leia(n)

para i de m ate n faca

acumulador:=acumulador+i

fimpara

escreval("A soma dos valores entre M e N é : ",Acumulador)

fimalgoritmo
