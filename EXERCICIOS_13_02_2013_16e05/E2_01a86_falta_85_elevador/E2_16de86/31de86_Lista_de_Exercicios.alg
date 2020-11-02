algoritmo "List_Ex_31de86"
//arquivo "C:\Users\WILLIAM\Desktop\31_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//31. Escrever um algoritmo que lê 4 valores: I, A, B e C.
//Se I for igual a 1 então calcular a média aritmética
//de A, B e C e escrever esta média; se I for igual a 2
// somar os 3 valores atribuindo este valor a uma variável
//qualquer e escrevendo esta soma; se I for igual
// a 3 fazer um teste para saber se B é par, se é par
//escrever a mensagem e o valor, caso contrário escrever
// que é ímpar.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var
i,a,b,c:inteiro
media:real
soma:inteiro

par:inteiro

inicio

escreval("Informe o Valor de I de 1 a 3: ")
leia(i)

escreval("Informe o Valor de A: ")
leia(a)

escreval("Informe o Valor de B: ")
leia(b)

escreval("Informe o Valor de C: ")
leia(c)

escreval
escreval("----------------------------------------")

escolha (i)

caso 1
   media:= (a+b+c)/3
   escreval(" A Media de A B C = ",media)
caso 2
   soma:= a+b+c
   escreval(" A SOMA DE  A+B+C= ",soma)
caso 3
   se (b mod 2 = 0) entao
      escreval("O NUMERO É PAR")
      escreval("O VALOR de B É ",b)
   senao
      escreval("O NUMERO É IMPAR")
   fimse
fimescolha


fimalgoritmo
