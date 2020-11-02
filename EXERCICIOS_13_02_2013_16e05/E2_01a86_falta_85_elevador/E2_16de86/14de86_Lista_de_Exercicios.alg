algoritmo "List_Ex_14de86"
//arquivo "C:\Users\WILLIAM\Desktop\14_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//14. Escrever um algoritmo que lê 4 valores (A, B, C, D)
//e calcule a média aritmética, harmônica e geométrica.
//Escrever as médias no final.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var
A,B,C,D:REAL
MA,MH,MG:REAL
inicio

ESCREVAL("INFORME VALORES PARA A B C D : ")
LEIA(A,B,C,D)

MA:=(A+B+C+D)/4//MEDIA ARITMETICA
MH:=((1/A)+(1/B)+(1/C)+(1/D))/4 //MEDIA HARMONICA
MG:=EXP(A*B*C*D,1/4)//MEDIA GEOMETRICA, RAIZ DA QUANTIDADE DE NUMEROS

ESCREVAL("A MEDIA ARITMETICA É : ",MA)
ESCREVAL("A MEDIA HARMONICA É : ",MH)
ESCREVAL("A MEDIA GEOMETRICA É : ",MG)
fimalgoritmo
