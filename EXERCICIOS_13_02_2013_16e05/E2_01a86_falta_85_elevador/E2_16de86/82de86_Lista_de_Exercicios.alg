algoritmo "List_Ex_82de86"
//arquivo "C:\Users\WILLIAM\Desktop\82_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//82. Escrever um algoritmo que leia n�meros fornecidos
//pelo usu�rio e calcule a raiz quadrada do n�mero lido.
// Isto deve ser repetido at� que o usu�rio entre com um
//n�mero negativo
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Se��o de Declara��es
var

valor:inteiro
resultado:real


inicio

repita

   escreval
   escreval("----------------------------")
   escreva("Informe um valor : ")
   leia(valor)
   se (valor>=0) entao
      resultado:=exp(valor,1/2)
      escreval("A raiz quadrada de ",valor," � :",resultado)
   fimse

ate (valor<0)




fimalgoritmo
