algoritmo "List_Ex_36de86"
//arquivo "C:\Users\WILLIAM\Desktop\36_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//36. Uma empresa de eletrodom�sticos gratifica seus vendedores
//com uma comiss�o proporcional �s vendas efetuadas no m�s.
//A comiss�o � de 2,5% se o total de vendas for de at� X reais
//e de 4% se as vendas forem maiores que esse valor.
//Fazer o algoritmo para ler o c�digo do vendedor, seu sal�rio b�sico,
// o total de vendas no m�s e calcular o sal�rio a ser recebido.
// Imprimir o c�digo, o sal�rio b�sico e o sal�rio a ser recebido.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Se��o de Declara��es
var
codigo:inteiro
salario,tvnm:real
comisao:real
salcom:real
x:real

inicio

X:=2000

escreval("Informe o c�digo do vendedor : ")
leia(codigo)
escreval("Informe o sal�rio b�sico : ")
leia(salario)
escreval("Informe o Total de vendas no m�s :")
leia(tvnm)

se (tvnm<=x) entao
   comisao:=tvnm*0.025
senao
   comisao:=tvnm*0.04
fimse

salcom:=salario+comisao


escreval
escreval("---------------------------------------------------------------")
escreval("O vendedor de c�digo[",codigo,"] e sal�rio [R$",salario:3:2,"] receber� no total [R$",salcom:3:2,"]")





fimalgoritmo
