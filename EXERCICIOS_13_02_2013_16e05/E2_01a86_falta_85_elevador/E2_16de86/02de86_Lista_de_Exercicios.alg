algoritmo "List_Ex_02de86"
//arquivo "C:\Users\WILLIAM\Desktop\02_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//2. Determine os resultados obtidos na avalia��o das
//express�es l�gicas seguintes, sabendo
//que A=2, B=7, C=3.5 e que a vari�vel l�gica L=falso:
//a) B=A*C e (L ou n�o(L))
//b) B>A ou B=A^A
//c) L e Inteiro(B,A)>=C ou n�o(A<=C)
//d) B/A=C ou B/A <> C
//e) L ou B^A <=C*10+A*B
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 28/09/2012
// Se��o de Declara��es
var
A,B:INTEIRO
C:REAL
L:LOGICO
RA,RB,RC,RD,RE:LOGICO

inicio
A:=2
B:=7
C:=3.5
L:=FALSO

RA:= (B=A*C) e (L ou nao(L))
RB:= (B>A) ou (B=A^A)
RC:= (L) e (Int(B/A)>=C) ou (nao(A<=C))
RD:= (B/A=C) ou (B/A <> C)
RE:= (L) ou (B^A <=C*10+A*B)

ESCREVAL("O RESULTADO LOGICO PARA A EXPRESSAO A � :",RA)
ESCREVAL("O RESULTADO LOGICO PARA A EXPRESSAO B � :",RB)
ESCREVAL("O RESULTADO LOGICO PARA A EXPRESSAO C � :",RC)
ESCREVAL("O RESULTADO LOGICO PARA A EXPRESSAO D � :",RD)
ESCREVAL("O RESULTADO LOGICO PARA A EXPRESSAO E � :",RE)



fimalgoritmo
