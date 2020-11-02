algoritmo "List_Ex_46de86"
//arquivo "C:\Users\WILLIAM\Desktop\46_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//46. Escrever um algoritmo que leia 20 valores numéricos,
// um de cada vez, e calcule o produto de todos os valores
// positivos e menores do que um valor K qualquer (que também deve
//ser lido). Imprimir o produto calculado no final do algoritmo.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var

i:inteiro
valor,k:real
produto:real



inicio

produto:=1

escreval
escreval("Informe um valor para calcular o produto dos numeros positivos menor que este : ")
leia(k)

para i de 1 ate 20 faca
   escreval
   escreva("Informe um valor : ")
   leia(valor)
   se (valor>0)E(valor<k) entao
      produto:=produto*valor
   fimse

fimpara

escreval("O produto dos numeros positivos é : ",produto)


fimalgoritmo
