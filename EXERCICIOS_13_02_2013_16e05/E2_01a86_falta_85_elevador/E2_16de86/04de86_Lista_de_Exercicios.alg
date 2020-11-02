algoritmo "List_Ex_04de86"
//arquivo "C:\Users\WILLIAM\Desktop\04_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//4. Dados os valores de X = 9, Y = 3, Z = 2, W = 5 inteiros,
// determinar o resultado das seguintes expressões:
//a) (X + Y) / Z + W
//b) X + Y / Z + W
//c) (X + Y) / ( Z + W)
//d) X + Y / ( Z + W)
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var
X,Y,Z,W:INTEIRO
RA,RB,RC,RD:REAL
inicio
X:=9
Y:=3
Z:=2
W:=5

RA:= (X + Y) / Z + W
RB:=  X + Y / Z + W
RC:= (X + Y) / ( Z + W)
RD:= X + Y / ( Z + W)

ESCREVAL("O RESULTADO PARA EXPRESSAO (X+Y)/Z+W é: ",RA)
ESCREVAL("O RESULTADO PARA EXPRESSAO X+Y/Z+W é: ",RB)
ESCREVAL("O RESULTADO PARA EXPRESSAO (X+Y)/(Z+W) é: ",RC)
ESCREVAL("O RESULTADO PARA EXPRESSAO X+Y/(Z+W) é: ",RD)


fimalgoritmo
