algoritmo "List_Ex_59de86"
//arquivo "C:\Users\WILLIAM\Desktop\59_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//59. Escrever um algoritmo que escreve os números pares
//entre 100 e 200, bem como a soma desses números.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var

soma,i:inteiro

inicio

soma:=0

para i de 100 ate 200 faca

   se (i mod 2 = 0) entao
      soma:=soma+i
      escreval(i)
   fimse

fimpara

escreval
escreval("-----------------------------------------")
escreval("A soma dos numeros pares entre é :",soma)

fimalgoritmo
