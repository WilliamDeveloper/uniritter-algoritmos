algoritmo "List_Ex_22de86"
//arquivo "C:\Users\WILLIAM\Desktop\22_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//22. Escrever um algoritmo que leia o tempo necess�rio para
// fabrica��o de um produto expresso em segundos e mostre-o
// expressos em horas, minutos e segundos
//(adaptado de Berg; Figueir�, 1998).
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Se��o de Declara��es
var
hora:inteiro
minuto:inteiro
segundo:inteiro
tempo:inteiro
hs:inteiro
ms:inteiro
tempoi:inteiro
inicio

escreval("Informe o tempo necessario para fabricacao do produto em SEGUNDOS: ")
leia(tempo)
tempoi:=tempo

hs:=3600
ms:=60

hora:=tempo div hs
tempo:=tempo mod hs

minuto:=tempo div ms

segundo:= tempo mod ms

escreval
escreval("----------------------------------------")
escreval("Tempo de fabricao do produto expresso em segundos � : ",tempoi)
escreval("o tempo necessario para fabricao do produto de � : ")
escreval(hora," HORAS,",minuto," MINUTOS,",segundo," SEGUNDOS.")
escreval
fimalgoritmo
