algoritmo "List_Ex_71de75"
//arquivo "C:\Users\WILLIAM\Desktop\71_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//71. Escrever um algoritmo que receber� do usu�rio 2 n�meros
// e uma opera��o (soma, multiplica��o, subtra��o ou divis�o).
//Depois disto, exibir o resultado da opera��o entre os 2 n�meros dados.
// Tal algoritmo dever� usar as fun��es soma, multiplica��o,
//subtra��o e divis�o que recebem 2 n�meros reais como par�metros
//e retornam o resultado da opera��o.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Se��o de Declara��es
var
a,b,result:real
oper:caracter
FUNCAO calculadora(x,y:real;operador:caracter):real
var
r:real
inicio
escolha (operador)
caso "*"
   r:=x*y
caso "/"
   r:=x/y
caso "+"
   r:=x+y
caso "-"
   r:=x-y
fimescolha
retorne(r)

FIMFUNCAO

inicio
escreval("Informe um numero .: ")
leia(a)
escreval("Informe um numero .: ")
leia(b)
escreval("Informe uma operacao / * + - .: ")
leia(oper)
result:=calculadora(a,b,oper)
escreval
escreval("---------------------------")
escreval(a," ",oper,b," = ",result)

fimalgoritmo
