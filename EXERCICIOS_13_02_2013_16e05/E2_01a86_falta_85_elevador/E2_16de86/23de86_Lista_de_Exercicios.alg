algoritmo "List_Ex_23de86"
//arquivo "C:\Users\WILLIAM\Desktop\23_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//23. Escrever um algoritmo que l� 2 valores A e B
//e os escreve com a mensagem "s�o m�ltiplos"
//ou "n�o s�o m�ltiplos".
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Se��o de Declara��es
var
a,b:inteiro

inicio

escreval("Informe o valor de A: ")
leia(a)
escreval("Informe o valor de B: ")
leia(b)

se (a mod b = 0) ou (b mod a = 0) entao
   escreval("SAO MULTIPLOS!!!")
senao
Escreval ("NAO SAO MULTIPLOS")
fimse


fimalgoritmo
