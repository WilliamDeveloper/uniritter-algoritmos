algoritmo "List_Ex_78de86"
//arquivo "C:\Users\WILLIAM\Desktop\78_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//78. Escrever um algoritmo que lê um número não determinado
// de valores positivos e, no final, imprima a média aritmética
// desses valores
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var

media:real
soma,cont,valor:inteiro


inicio

soma:=0
cont:=0

repita

   escreval
   escreval("---------------------------")
   escreval("Informe um valor : ")
   leia(valor)
   se (valor>=0) entao
      soma:=soma+valor
      cont:=cont+1

   fimse

ate (valor<0)

media:=soma/cont

escreval
escreval("----------------------------")
escreval("A média aritmetica desses valores é : ",media)


fimalgoritmo
