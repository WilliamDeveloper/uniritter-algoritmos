algoritmo "List_Ex_41de86"
//arquivo "C:\Users\WILLIAM\Desktop\41_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//41. Escrever um algoritmo que leia dois n�meros quaisquer
//e um caracter que representa a opera��o aritm�tica desejada (+ - * /).
// Escrever o resultado da opera��o solicitada
//(adaptado de Forbellone; Ebersp�cher, 2000).
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Se��o de Declara��es
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
escreval("O resultado de",a," ",operacao,b," � = ",r)

fimalgoritmo
