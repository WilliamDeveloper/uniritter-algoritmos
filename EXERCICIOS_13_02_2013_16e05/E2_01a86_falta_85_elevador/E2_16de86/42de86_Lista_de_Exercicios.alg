algoritmo "List_Ex_42de86"
//arquivo "C:\Users\WILLIAM\Desktop\42_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//42. (Adaptado de Lopes & Garcia, 2002). A prefeitura de uma
// determinada cidade abriu uma linha de cr�dito para os
//seus funcion�rios. O valor m�ximo da presta��o n�o poder�
//ultrapassar 30% do sal�rio bruto. Escrever um algoritmo
// que leia o valor do sal�rio bruto e o valor da presta��o
//e informe se o empr�stimo pode ou n�o ser concedido.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Se��o de Declara��es
var

vb:real   //valor do salario bruto
vp:real   //valor da prestacao
pvp:real   //percentual do valor da presta�ao sobre o salario bruto
tam:real //limite de credito

inicio

tam:=30.00
escreval("Informe o valor do salario bruto")
leia(vb)
escreval("Informe o valor da prestacao")
leia(vp)


pvp:=vp*100/vb

se (pvp<=tam) entao


   escreval("Emprestimo concedido, seu percentual nao ultrapassou os ",tam:3:2," %")

senao
   escreval("Emprestimo NAO concedido, O percentual da prestacao excedeu o limite de ",tam:3:2," %")
   
fimse






fimalgoritmo
