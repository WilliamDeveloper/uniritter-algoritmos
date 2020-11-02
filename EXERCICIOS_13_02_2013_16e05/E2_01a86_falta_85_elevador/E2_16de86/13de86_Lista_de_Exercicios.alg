algoritmo "List_Ex_13de86"
//arquivo "C:\Users\WILLIAM\Desktop\13_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//13. Escrever um algoritmo que lê 3 valores A, B e C
//e calcula e escreve a média ponderada com
//pesos 5 para o valor A e para B e C 2,5.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var
A,B,C:REAL
MEDIA:REAL
VA,VB,VC:REAL
inicio
VA:=5
VB:=2.5
VC:=2.5

ESCREVAL("INFORME VALORES PARA A B C : ")
LEIA(A,B,C)

MEDIA:=((A*VA)+(B*VB)+(C*VC))/(VA+VB+VC) //MEDIA PONDERADA

ESCREVAL("MEDIA PONDERADA",MEDIA)


fimalgoritmo
