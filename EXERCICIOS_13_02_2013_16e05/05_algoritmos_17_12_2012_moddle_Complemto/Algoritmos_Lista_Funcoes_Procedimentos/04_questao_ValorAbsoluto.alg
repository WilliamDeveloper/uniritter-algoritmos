Algoritmo "04_valorabsoluto"
// Função :
// Autor : WILLIAM GOULART PACHECO
// Data : 07/11/2012
// Seção de Declarações
//04-Construa um módulo que apresente o valor absoluto de
//dado número.
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
Escreval("O valor absoluto de ", numero, " é: ", absoluto)
Escreval("==========================================")
FIMPROCEDIMENTO
//==================================================

INICIO
// Seção de Comandos
Escreva("Informe um número: ")
Leia(n)
Fabsoluto(n)

FIMALGORITMO
