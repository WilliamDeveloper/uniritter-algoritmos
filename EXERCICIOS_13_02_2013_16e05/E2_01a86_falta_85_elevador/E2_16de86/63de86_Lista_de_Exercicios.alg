algoritmo "List_Ex_63de86"
//arquivo "C:\Users\WILLIAM\Desktop\63_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//63. Escrever um algoritmo que l� 10 valores, um de cada vez,
// e conta quantos deles est�o no intervalo de [10..20]
// e quantos n�o est�o, escrevendo essas informa��es.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Se��o de Declara��es
var

c1,c2,valor,i:inteiro



inicio

c1:=0
c2:=0

para i de 1 ate 10 faca
   escreval
   escreval("--------------------")
   escreval("Informe um valor : ")
   leia (valor)

   se (valor>=10)E(valor<=20) entao
      c1:=c1+1
   senao
      c2:=c2+1
   fimse

fimpara

escreval
escreval("-------------------------------------------------------------------------------")
escreval("entre os numeros digitados foram encontrados ",c1," numeros no intervalo [10..20]")
escreval("entre os numeros digitados foram encontrados ",c2," numeros fora do intervalo")

fimalgoritmo
