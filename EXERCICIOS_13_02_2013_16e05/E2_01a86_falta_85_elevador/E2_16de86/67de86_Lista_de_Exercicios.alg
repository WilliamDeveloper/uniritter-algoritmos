algoritmo "List_Ex_67de86"
//arquivo "C:\Users\WILLIAM\Desktop\67_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//67. Escrever um algoritmo que l� 10 n�meros, conte quantos
// s�o positivos, quantos s�o negativos e acumule os valores
//positivos e negativos separadamente. Imprimir os contadores
//e acumuladores no final.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Se��o de Declara��es
var

numero,i:inteiro
cn,cp,an,ap:inteiro

inicio

cn:=0
cp:=0
an:=0
ap:=0

para i de 1 ate 10 faca

   escreval("Informe um valor : ")
   leia(numero)
   se (numero>=0) entao
      cp:=cp+1
      ap:=ap+numero
   senao
      cn:=cn+1
      an:=an+numero
   fimse


fimpara

escreval
escreval("-----------------------------------------------------------------")
escreval("Contador de numeros negativos ",cn," acumululado de negativo ",an)
escreval("Contador de numeros positivos ",cp," acumululado de positivo ",ap)


fimalgoritmo
