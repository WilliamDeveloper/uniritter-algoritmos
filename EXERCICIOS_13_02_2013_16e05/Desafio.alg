algoritmo "desafio"
// Fun��o : Troca de valores sem variavel auxiliar
// Autor : WILLIAM GOULART PACHECO
// Data : 08/10/2012
// Se��o de Declara��es
//Tendo duas vari�veis inteiras A e B, fazer com que A receba o valor de B
//e B receba o valor de A sem utilizar vari�vel auxiliar para isto.
var
a,b:inteiro
inicio
escreval("Informe um valor para A: ")
leia(a)
escreval("Informe um valor para B: ")
leia(b)

a:=a+b
b:=a-b
a:=a-b


escreval //da uma quebra quando so usado o nome da funcao
escreval("=====================================")
escreval("O Valor de A agora Vale: ",a)
escreval("O Valor de B agora Vale: ",b)

fimalgoritmo
