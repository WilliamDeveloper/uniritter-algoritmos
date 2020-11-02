algoritmo "List_Ex_82de86"
//arquivo "C:\Users\WILLIAM\Desktop\82_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//82. Escrever um algoritmo que leia números fornecidos
//pelo usuário e calcule a raiz quadrada do número lido.
// Isto deve ser repetido até que o usuário entre com um
//número negativo
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
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
      escreval("A raiz quadrada de ",valor," é :",resultado)
   fimse

ate (valor<0)




fimalgoritmo
