algoritmo "List_Ex_03de86"
//arquivo "C:\Users\WILLIAM\Desktop\03_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//Considerando X=2, Y=4 , Z=3 , LIVRO="ficção" e
//MATERIAL="lapis" e LOG=verdadeiro determinar
//o valor de cada expressao abaixo:
//a) NAO(LIVRO="técnico" E MATERIAL="caderno")
//b)X*Y<Z+Y OU LIVRO="ficção" E MATERIAL<>"lápis"
//c)X=1 E LOG
//d)Y<Z OU LOG E LIVRO="romance"
//e)X=2*Z-Y E MATERIAL<>"lápis"
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
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
LIVRO:="ficção"
MATERIAL:="lápis"
LOGG:=VERDADEIRO


RA:= NAO((LIVRO="técnico") E (MATERIAL="caderno"))
RB:= (X*Y<Z+Y) OU (LIVRO="ficção") E (MATERIAL<>"lápis")
RC:= (X=1) E (LOGG)
RD:= (Y<Z) OU (LOGG) E (LIVRO="romance")
RE:= (X=2*Z-Y) E (MATERIAL<>"lápis")

ESCREVAL("O VALOR LOGICO PARA A EXPRESSAO A é : ",RA)
ESCREVAL("O VALOR LOGICO PARA A EXPRESSAO B é : ",RB)
ESCREVAL("O VALOR LOGICO PARA A EXPRESSAO C é : ",RC)
ESCREVAL("O VALOR LOGICO PARA A EXPRESSAO D é : ",RD)
ESCREVAL("O VALOR LOGICO PARA A EXPRESSAO E é : ",RE)


fimalgoritmo
