algoritmo "List_Ex_49de86"
//arquivo "C:\Users\WILLIAM\Desktop\49_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//49. Fazer um algoritmo para ler o n�mero de dias do m�s vigente,
// as respectivas temperaturas m�dias di�rias desse m�s e imprimir
//  o dia de maior temperatura ocorrida no m�s.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Se��o de Declara��es
var

d,dias,i:inteiro
maior,temperatura:real

inicio


escreval("Informe o numero de dias do mes Vigente : ")
leia(dias)

para i de 1 ate dias faca
   escreval("informe a temperatura para o dia [",i,"]")
   leia(temperatura)

   se (i=1) entao
      maior:=temperatura
      d:=i
   fimse
   se (temperatura>maior) entao
      maior:=temperatura
      d:=i
   fimse
fimpara

escreval("O dia de maior temperatura do mes foi [",d,"] e a temperatura foi [",maior,"] graus.")





fimalgoritmo
