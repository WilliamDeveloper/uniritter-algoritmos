Algoritmo "03_exponenciacao"
// Fun��o :
// Autor : WILLIAM GOULART PACHECO
// Data : 07/11/2012
// Se��o de Declara��es
//03-Construa um m�dulo capaz de calcular a exponencia��o
//para quaisquer base e expoentes inteiros.
//==================================================
VAR //VARIAVEL GLOBAL
r,n,expo :inteiro  //resultado , numero
//==================================================
FUNCAO Fexpoenciacao(base,expoente : inteiro ):inteiro
var
i,Result:inteiro
inicio
Result:=base
Para i de 1 ate expoente-1 faca
   Result:=Result*base
Fimpara

RETORNE (Result)
FIMFUNCAO
//==================================================

INICIO
// Se��o de Comandos
escreva("Informe um n�mero: ")
leia(n)
escreva("Informe um expoente: ")
leia(expo)

r := Fexpoenciacao(n, expo)

escreval("==============================================")
escreval(n, " elevado na ", expo, "a. potencia e: ", r)
escreval("==============================================")
FIMALGORITMO
