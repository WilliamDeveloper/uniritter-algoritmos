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
numero,perc,fperc:real
//============================================================
PROCEDIMENTO ZERARGLOBAL()
inicio
numero:=0
perc:=0
FIMPROCEDIMENTO
//============================================================
PROCEDIMENTO PERCENTUAL(num:real;var pperc:real)
inicio

pperc:=num*fperc/100
FIMPROCEDIMENTO
//============================================================
inicio
ZERARGLOBAL()
fperc:= 21

escreva("Informe um numero : ")
leia(numero)
//escreva("Informe o percentual desejado para o  numero : ")
//leia(fperc)
PERCENTUAL(numero,perc)

escreval(fperc,"% do valor ",numero," � " , perc)


fimalgoritmo
