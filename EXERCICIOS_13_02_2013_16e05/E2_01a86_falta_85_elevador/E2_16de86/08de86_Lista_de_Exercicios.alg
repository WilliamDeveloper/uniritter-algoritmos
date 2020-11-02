algoritmo "List_Ex_08de86"
//arquivo "C:\Users\WILLIAM\Desktop\08_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//8. Dadas as medidas de um trapézio, escrever o algoritmo que calcule
//e imprima sua área.
//Lembrar que a área de um trapézio é calculada através da fórmula:
//((base maior + base menor ) X altura )/ 2
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var
BMA,BME,ALTURA,AT:REAL
inicio
ESCREVAL("INFORME UM VALOR PARA BASE MAIOR: ")
LEIA(BMA)
ESCREVAL("INFORME UM VALOR PARA BASE MENOR: ")
LEIA(BME)
ESCREVAL("INFORME UM VALOR PARA ALTURA: ")
LEIA(ALTURA)

SE(BMA>BME)ENTAO
   AT:=((BMA+BME)*ALTURA)/2
   ESCREVAL("AREA DO TRAPEZIO é: ",AT)
SENAO
   ESCREVAL("BASE MAIOR DEVE SER MAIOR QUE BASE MENOR!!")
FIMSE


fimalgoritmo
