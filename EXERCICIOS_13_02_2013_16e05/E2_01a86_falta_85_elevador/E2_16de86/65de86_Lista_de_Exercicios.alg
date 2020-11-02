algoritmo "List_Ex_65de86"
//arquivo "C:\Users\WILLIAM\Desktop\65_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//65. Escrever um algoritmo que lê 10 números quaisquer
//e conte quantos números são negativos e quantos são positivos,
// escrevendo estas informações no final.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var

cp,cn,i:inteiro
acumula,numero:real

inicio

cp:=0
cn:=0

para i de 1 ate 10 faca

   escreval("Informe um valor : ")
   leia(numero)
   
   se (numero>=0) entao
      cp:=cp+1
   senao
      cn:=cn+1
   fimse


fimpara

escreval
escreval("-----------------------------------------")
escreval("Foram encontrado",cp," numeros positivos.")
escreval("Foram encontrado",cn," numeros negativos.")


fimalgoritmo
