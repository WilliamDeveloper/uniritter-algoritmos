algoritmo "List_Ex_36de86"
//arquivo "C:\Users\WILLIAM\Desktop\36_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//36. Uma empresa de eletrodomésticos gratifica seus vendedores
//com uma comissão proporcional às vendas efetuadas no mês.
//A comissão é de 2,5% se o total de vendas for de até X reais
//e de 4% se as vendas forem maiores que esse valor.
//Fazer o algoritmo para ler o código do vendedor, seu salário básico,
// o total de vendas no mês e calcular o salário a ser recebido.
// Imprimir o código, o salário básico e o salário a ser recebido.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var
codigo:inteiro
salario,tvnm:real
comisao:real
salcom:real
x:real

inicio

X:=2000

escreval("Informe o código do vendedor : ")
leia(codigo)
escreval("Informe o salário básico : ")
leia(salario)
escreval("Informe o Total de vendas no mês :")
leia(tvnm)

se (tvnm<=x) entao
   comisao:=tvnm*0.025
senao
   comisao:=tvnm*0.04
fimse

salcom:=salario+comisao


escreval
escreval("---------------------------------------------------------------")
escreval("O vendedor de código[",codigo,"] e salário [R$",salario:3:2,"] receberá no total [R$",salcom:3:2,"]")





fimalgoritmo
