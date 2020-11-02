algoritmo "List_Ex_60de86"
//arquivo "C:\Users\WILLIAM\Desktop\60_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//60. Uma empresa deseja aumentar seus preços em 20%.
//Fazer um algoritmo que leia o código e o preço de custo
//de um grupo de 20 produtos e calcule o preço novo.
//Mostrar o código e o preço novo de cada produto.
//Se o preço do produto for maior do que R$1.000,00,
//aplicar um aumento de apenas 5%.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var

i,codigo:inteiro
custo,pn,tam:real

inicio

tam:=1000

para i de 1 ate 20 faca
   escreval
   escreval("------------------------------")
   escreval("Informe o codigo do produto : ")
   leia(codigo)
   escreval("Informe o custo do produto : ")
   leia(custo)

   se (custo>tam) entao
      pn:=custo+(custo*0.05)
   senao
      pn:=custo+(custo*0.20)
   fimse

   escreval("O produto de codigo ",codigo," agora custa R$: ",pn:3:2)

fimpara




fimalgoritmo
