algoritmo "List_Ex_47de86"
//arquivo "C:\Users\WILLIAM\Desktop\47_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//47. Dados 30 valores numéricos quaisquer, escrever um
// algoritmo para determinar o percentual de valores positivos,
// o número de valores negativos e o número de zeros.
// Imprimir os valores calculados.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var

i,cz,cp,cn,cg:inteiro
valor,pvp,pvn:real

inicio
cz:=0
cp:=0
cn:=0
cg:=0



para i de 1 ate 30 faca
   escreval("Informe uma Valor: ")
   leia(valor)

   se (valor=0) entao
      cz:=cz+1
   senao
      se (valor<0) entao
         cn:=cn+1
      senao
         cp:=cp+1
      fimse
   fimse
   cg:=cg+1

fimpara



pvp:=cp*100/cg
pvn:=cn*100/cg

escreval
escreval("O percentual dos Valores positivos ",pvp:3:2," %")
escreval("O numero dos Valores negativos ",cn)
escreval("O numero de zeros",cz)


fimalgoritmo
