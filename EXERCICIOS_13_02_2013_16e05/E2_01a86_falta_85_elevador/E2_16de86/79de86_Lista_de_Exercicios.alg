algoritmo "List_Ex_79de86"
//arquivo "C:\Users\WILLIAM\Desktop\79_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//79. Escrever um algoritmo que l� um n�mero n�o determinado
//de valores e que conta e acumula esses valores; quando
//o valor lido for menor que zero, escrever o acumulador e o
//contador.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Se��o de Declara��es
var

valor:real
cont:inteiro
acumulador:real

inicio

cont:=0
valor:=0
acumulador:=0

escreval
escreval("-------------------------------------------------")

repita

   escreva("Informe um valor : ")
   leia(valor)

   se (valor>=0) entao
      acumulador:=acumulador+valor
      cont:=cont+1
   fimse

ate (valor<0)

escreval  //o numero negativo usado para sair do la�o nao conta nem acumula
escreval("-------------------------------------------------")
escreval("O acumulador �",acumulador," e o contador � ",cont)



fimalgoritmo
