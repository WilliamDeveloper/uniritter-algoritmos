algoritmo "List_Ex_69de75"
//arquivo "C:\Users\WILLIAM\Desktop\69_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//69. Escrever um módulo chamado troca que recebe dois
// parâmetros inteiros e troca o conteúdo entre eles.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Seção de Declarações
var
 a,b:inteiro
PROCEDIMENTO troca (var x,y:inteiro)  //x e y recebem a referencia de a e b
inicio
x:=x+y
y:=x-y
x:=x-y
FIMPROCEDIMENTO

inicio

escreval("Informe o valor de A e B ..: ")
leia(a,b)


escreval("!!! ANTES DA TROCA !!!")
escrevaL("----------------------")
escreval
escreval(a,b)
escreval
troca(a,b)
escreval("!!! DEPOIS DA TROCA !!")
escrevaL("----------------------")
escreval
escreval(a,b)
escreval


fimalgoritmo
