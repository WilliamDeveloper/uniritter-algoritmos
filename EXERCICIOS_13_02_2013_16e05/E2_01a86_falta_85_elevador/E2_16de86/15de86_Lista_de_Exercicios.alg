algoritmo "List_Ex_15de86"
//arquivo "C:\Users\WILLIAM\Desktop\15_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//15. Um avião em linha reta, a uma altura A passa sobre um ponto P
//num instante T=0. Se a velocidade é V, calcular a distância D do avião
// ao ponto P no tempo T=30. Escrever um algoritmo que
//lê os valores de V e A e calcula a distância ao ponto P
//após 30 segundos, através da fórmula D= Raiz(A^2 * (V^2 * 30)).
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
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

ESCREVAL("A DISTANCIA AO PONTO P  APOS ",T," SEGUNDOS É : ",D)

fimalgoritmo
