algoritmo "List_Ex_43de86"
//arquivo "C:\Users\WILLIAM\Desktop\43_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//43. (Adaptado de Lopes & Garcia, 2002). Um comerciante
//comprou um determinado produto e quer vend�-lo com um
//lucro de 45% se o valor da compra for menor do que R$20,00;
//caso contr�rio o lucro ser� de 30%. Escrever um algoritmo que
//leia o valor de compra de um produto e escreva o valor de venda.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Se��o de Declara��es
var

plucro:real
vcompra:real
vvenda:real
tam:real

inicio

tam:=20.00

escreval("Informe o valor de compra")
leia(vcompra)


se (vcompra<tam) entao
   plucro:=0.45
senao
   plucro:=0.30
fimse

vvenda:=vcompra+(vcompra*plucro)

escreval("O valor da venda � : R$",vvenda:3:2)





fimalgoritmo
