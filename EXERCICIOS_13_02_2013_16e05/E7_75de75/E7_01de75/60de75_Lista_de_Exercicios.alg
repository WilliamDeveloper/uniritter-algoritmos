algoritmo "List_Ex_60de75"
//arquivo "C:\Users\WILLIAM\Desktop\60_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//60. Fazer um módulo que calcule o valor da
//expressão 4 * 5+ 5 *6 + ... + (n+3) * (n+4), sendo n um valor
//inteiro e menor que 100 (n > 100). Elabore um algoritmo principal
//que solicite ao usuário o valor de n e apresente o resultado
//do cálculo realizado pelo módulo.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Seção de Declarações
var
acum,a,b,n,i:inteiro

inicio

escreva("Informe o valor de N .: ")
leia(n)
para i de n ate 100-1 faca
   a:=i+3
   b:=i+4
   escreval(a,"*",b,"+")
   acum:=acum+a+b
fimpara
escreval
escreval("------------------------------")
escreval("=",acum)

fimalgoritmo
