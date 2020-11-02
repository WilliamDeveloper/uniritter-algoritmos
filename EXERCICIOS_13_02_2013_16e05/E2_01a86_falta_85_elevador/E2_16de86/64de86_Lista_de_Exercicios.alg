algoritmo "List_Ex_64de86"
//arquivo "C:\Users\WILLIAM\Desktop\64_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//64. Escrever um algoritmo que leia 15 números e calcule
//o produto dos números lidos.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var

numero,i:inteiro
produto:real

inicio

produto:=1

para i de 1 ate 15 faca

   escreval("Informe um numero : ")
   leia(numero)
   produto:=produto*numero

fimpara

escreval
escreval("---------------------------------------------")
escreval("O produto dos 15 numeros lidos é : ",produto)


fimalgoritmo
