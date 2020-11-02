algoritmo "List_Ex_51de86"
//arquivo "C:\Users\WILLIAM\Desktop\51_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//51. Um banco concederá um crédito especial aos seus N clientes
//preferenciais a partir do saldo médio no último ano. Fazer um
//algoritmo que leia o nome do cliente, seu saldo médio em unidades
//e calcule o valor do crédito de acordo com o seguinte critério:
//se o saldo médio for menor que 200 unidades o percentual será
//de 20% do valor do saldo médio, se o saldo médio for de 200
//a 400 unidades o percentual será de 30% do valor do saldo médio
//e se o saldo médio for maior que 400 unidades o percentual será
//de 40% do valor do saldo médio. Imprimir o nome do cliente,
//seu saldo médio e o valor do crédito.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
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
