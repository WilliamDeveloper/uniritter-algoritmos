algoritmo "List_Ex_51de86"
//arquivo "C:\Users\WILLIAM\Desktop\51_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//51. Um banco conceder� um cr�dito especial aos seus N clientes
//preferenciais a partir do saldo m�dio no �ltimo ano. Fazer um
//algoritmo que leia o nome do cliente, seu saldo m�dio em unidades
//e calcule o valor do cr�dito de acordo com o seguinte crit�rio:
//se o saldo m�dio for menor que 200 unidades o percentual ser�
//de 20% do valor do saldo m�dio, se o saldo m�dio for de 200
//a 400 unidades o percentual ser� de 30% do valor do saldo m�dio
//e se o saldo m�dio for maior que 400 unidades o percentual ser�
//de 40% do valor do saldo m�dio. Imprimir o nome do cliente,
//seu saldo m�dio e o valor do cr�dito.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Se��o de Declara��es
var

nome:caracter
n,i,saldo:inteiro
credito:real

inicio


repita

   escreval("Informe o nome do cliente : ")
   leia(nome)
   escreval("Informe o saldo do cliente : ")
   leia(saldo)


   se (saldo<200) entao
      credito:=saldo*0.20
   senao
      se (saldo>=200)E(saldo<=400) entao
         credito:=saldo*0.30
      senao
         se (saldo>400) entao
            credito:=saldo*0.40
         fimse
      fimse
   fimse

   escreval
   escreval("-------------------------------")
   escreval("O Cliente chamado ,",nome," ,")
   escreval("tem saldo medio de R$ ",saldo:3:2," ,")
   escreval("e o banco concedera R$ ",credito:3:2," de credito")
   escreval("-------------------------------")
   escreval
   n:=n+1
ate (n=0)





fimalgoritmo
