algoritmo "List_Ex_83de86"
//arquivo "C:\Users\WILLIAM\Desktop\83_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//83. (Adaptado de Lopes & Garcia, 2002). Uma pousada estipulou
// sua di�ria em R$30,00, acrescida de uma taxa de servi�os
//di�rios que pode ser: 1) R$15,00 se o n�mero de dias da
//estadia for menor que 10; 2) R$8,00 se o n�mero de dias
// de estadia for maior ou igual a 10. Escrever um algoritmo
// que leia o nome do cliente e o n�mero de dias da estadia e
//escreva o valor total da conta a ser paga para cada cliente.
// O algoritmo deve ser repetido at� que o n�mero de dias de
// estadia seja igual a zero.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Se��o de Declara��es
var

diaria:real
servicos:real
dias:inteiro
nome:caracter
conta:real

inicio

repita

   escreval
   escreval("===================================================")
   escreva("Informe o nome do cliente : ")
   leia(nome)
   escreva("Informe o numero de dias da estadia : ")
   leia(dias)

   diaria:=30.00

   se (dias<10) entao
      servicos:=15.00
   senao
      servicos:=8.00
   fimse

   conta:=(diaria+servicos)*dias
   
   escreval
   escreval("---------------------------------------------------")
   escreval("  ",nome," pagar� pela estadia R$ ",conta:5:2)

ate (dias=0)


fimalgoritmo
