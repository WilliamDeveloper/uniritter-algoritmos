Algoritmo "04_valorabsoluto"
// Fun��o :
// Autor : WILLIAM GOULART PACHECO
// Data : 07/11/2012
// Se��o de Declara��es
//04-Construa um m�dulo que apresente o valor absoluto de
//dado n�mero.
//==================================================
VAR //VARIAVEL GLOBAL
n:inteiro  // numero
//==================================================
PROCEDIMENTO Fabsoluto(numero:inteiro) //procedimento nao retorna
var
absoluto:inteiro
inicio
Se numero<0 entao
   absoluto:=numero*-1
Senao
   absoluto:=numero
Fimse
Escreval("==========================================")
Escreval("O valor absoluto de ", numero, " �: ", absoluto)
Escreval("==========================================")
FIMPROCEDIMENTO
//==================================================

INICIO
// Se��o de Comandos
Escreva("Informe um n�mero: ")
Leia(n)
Fabsoluto(n)

FIMALGORITMO
