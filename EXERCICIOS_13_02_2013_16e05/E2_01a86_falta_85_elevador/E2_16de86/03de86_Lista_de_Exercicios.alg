algoritmo "List_Ex_03de86"
//arquivo "C:\Users\WILLIAM\Desktop\03_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//Considerando X=2, Y=4 , Z=3 , LIVRO="fic��o" e
//MATERIAL="lapis" e LOG=verdadeiro determinar
//o valor de cada expressao abaixo:
//a) NAO(LIVRO="t�cnico" E MATERIAL="caderno")
//b)X*Y<Z+Y OU LIVRO="fic��o" E MATERIAL<>"l�pis"
//c)X=1 E LOG
//d)Y<Z OU LOG E LIVRO="romance"
//e)X=2*Z-Y E MATERIAL<>"l�pis"
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Se��o de Declara��es
var
X,Y,Z:INTEIRO
LIVRO,MATERIAL:CARACTER
LOGG:LOGICO
RA,RB,RC,RD,RE:LOGICO
R:INTEIRO

inicio

X:=2
Y:=4
Z:=3
LIVRO:="fic��o"
MATERIAL:="l�pis"
LOGG:=VERDADEIRO


RA:= NAO((LIVRO="t�cnico") E (MATERIAL="caderno"))
RB:= (X*Y<Z+Y) OU (LIVRO="fic��o") E (MATERIAL<>"l�pis")
RC:= (X=1) E (LOGG)
RD:= (Y<Z) OU (LOGG) E (LIVRO="romance")
RE:= (X=2*Z-Y) E (MATERIAL<>"l�pis")

ESCREVAL("O VALOR LOGICO PARA A EXPRESSAO A � : ",RA)
ESCREVAL("O VALOR LOGICO PARA A EXPRESSAO B � : ",RB)
ESCREVAL("O VALOR LOGICO PARA A EXPRESSAO C � : ",RC)
ESCREVAL("O VALOR LOGICO PARA A EXPRESSAO D � : ",RD)
ESCREVAL("O VALOR LOGICO PARA A EXPRESSAO E � : ",RE)


fimalgoritmo
