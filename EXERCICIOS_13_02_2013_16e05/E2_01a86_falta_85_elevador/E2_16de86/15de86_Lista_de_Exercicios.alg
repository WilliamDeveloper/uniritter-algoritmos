algoritmo "List_Ex_15de86"
//arquivo "C:\Users\WILLIAM\Desktop\15_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//15. Um avi�o em linha reta, a uma altura A passa sobre um ponto P
//num instante T=0. Se a velocidade � V, calcular a dist�ncia D do avi�o
// ao ponto P no tempo T=30. Escrever um algoritmo que
//l� os valores de V e A e calcula a dist�ncia ao ponto P
//ap�s 30 segundos, atrav�s da f�rmula D= Raiz(A^2 * (V^2 * 30)).
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Se��o de Declara��es
var
A:REAL
P:REAL
T:REAL
V:REAL
D:REAL
inicio
T:=30
ESCREVAL("INFORME A VELOCIDADE : ")
LEIA(V)
ESCREVAL("INFORME A ALTURA : ")
LEIA(A)

D:= EXP((A^2*(V^2*T)),1/2))

ESCREVAL("A DISTANCIA AO PONTO P  APOS ",T," SEGUNDOS � : ",D)

fimalgoritmo
