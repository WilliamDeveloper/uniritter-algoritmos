algoritmo "List_Ex_32de86"
//arquivo "C:\Users\WILLIAM\Desktop\32_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//32. Dado um n�mero inteiro, fazer o algoritmo para imprimir
//a raiz quadrada desse n�mero se ele for positivo,
//se ele for negativo imprimir o seu quadrado.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Se��o de Declara��es
var

numero:inteiro
q:real
r:real

inicio

escreval("Informe um numero Inteiro: ")
leia(numero)

Se (numero>=0) entao
   r:=exp(numero,1/2)
   escreval("Foi encontrado um numero POSITIVO , a sua raiz � igual a : ",r)

senao
   q:=exp(numero,2)
   escreval("Foi encontrado um numero NEGATIVO , o seu quadrado � igual a : ",q)

fimse

fimalgoritmo
