algoritmo "List_Ex_71de75"
//arquivo "C:\Users\WILLIAM\Desktop\71_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//71. Escrever um algoritmo que receberá do usuário 2 números
// e uma operação (soma, multiplicação, subtração ou divisão).
//Depois disto, exibir o resultado da operação entre os 2 números dados.
// Tal algoritmo deverá usar as funções soma, multiplicação,
//subtração e divisão que recebem 2 números reais como parâmetros
//e retornam o resultado da operação.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Seção de Declarações
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
