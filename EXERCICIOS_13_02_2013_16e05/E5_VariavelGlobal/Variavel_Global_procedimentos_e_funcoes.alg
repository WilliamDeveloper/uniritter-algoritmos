algoritmo "PercentualGlobal"
// Fun��o :
// Autor : WILLIAM GOULART PACHECO
// Data : 16/11/2012
// Se��o de Declara��es 

//Fa�a um programa que tem duas vari�veis globais inicializadas com 0:
// n�mero e seu percentual (21% do valor do n�mero).
//O programa dever� ler este n�mero, enviar como par�metros o n�mero
//e seu percentual e atrav�s de um procedimento,
//calcular o novo percentual e retorn�-lo ao programa principal
// para depois imprim�-lo.
var
global1,global2:real
numero,perc:real
//============================================================
PROCEDIMENTO ZERARGLOBAL()
inicio
global1:=0
global2:=0
FIMPROCEDIMENTO
//============================================================
PROCEDIMENTO PERCENTUAL(v1,v2:real)
inicio
global1:=v1
global2:= global1*v2
FIMPROCEDIMENTO
//============================================================
inicio
ZERARGLOBAL()
perc:= 0.21

escreva("Informe um numero : ")
leia(numero)
//escreva("Informe o percentual desejado para o  numero : ")
//leia(perc)
//perc:=perc/100
PERCENTUAL(numero,perc)

escreval(perc*100,"% do valor ",global1," � " , global2)


fimalgoritmo
