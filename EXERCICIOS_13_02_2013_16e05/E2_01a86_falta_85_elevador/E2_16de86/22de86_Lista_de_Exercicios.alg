algoritmo "List_Ex_22de86"
//arquivo "C:\Users\WILLIAM\Desktop\22_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//22. Escrever um algoritmo que leia o tempo necessário para
// fabricação de um produto expresso em segundos e mostre-o
// expressos em horas, minutos e segundos
//(adaptado de Berg; Figueiró, 1998).
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
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
escreval("Tempo de fabricao do produto expresso em segundos é : ",tempoi)
escreval("o tempo necessario para fabricao do produto de é : ")
escreval(hora," HORAS,",minuto," MINUTOS,",segundo," SEGUNDOS.")
escreval
fimalgoritmo
