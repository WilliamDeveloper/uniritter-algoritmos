algoritmo "List_Ex_65de86"
//arquivo "C:\Users\WILLIAM\Desktop\65_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//65. Escrever um algoritmo que l� 10 n�meros quaisquer
//e conte quantos n�meros s�o negativos e quantos s�o positivos,
// escrevendo estas informa��es no final.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Se��o de Declara��es
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
