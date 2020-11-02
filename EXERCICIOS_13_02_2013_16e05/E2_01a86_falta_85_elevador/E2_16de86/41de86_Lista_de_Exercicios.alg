algoritmo "List_Ex_41de86"
//arquivo "C:\Users\WILLIAM\Desktop\41_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//41. Escrever um algoritmo que leia dois números quaisquer
//e um caracter que representa a operação aritmética desejada (+ - * /).
// Escrever o resultado da operação solicitada
//(adaptado de Forbellone; Eberspächer, 2000).
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var
operacao:caracter
a,b:real
r:real

inicio

escreval("Informe o Valor de A : ")
leia(a)

Repita

escreval("Informe A operacao aritmetica desejada (+ - * /) : ")
leia(operacao)

ate (operacao="+") ou (operacao="-") ou (operacao="*") ou (operacao="/")

escreval("Informe o Valor de B : ")
leia(b)

escolha (operacao)

caso "+"
   r:=a+b
caso "-"
   r:=a-b
caso "*"
   r:=a*b
caso "/"
   r:=a/b

fimescolha

escreval
escreval("---------------------------------------------")
escreval("O resultado de",a," ",operacao,b," é = ",r)

fimalgoritmo
