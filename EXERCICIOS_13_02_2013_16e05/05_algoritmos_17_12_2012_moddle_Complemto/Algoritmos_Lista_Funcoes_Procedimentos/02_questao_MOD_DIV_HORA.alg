Algoritmo "02_segundos"
// Fun��o :
// Autor : WILLIAM GOULART PACHECO
// Data : 07/11/2012
// Se��o de Declara��es
//02-Construa um m�dulo que informe a quantidade de horas,
//minutos e segundos de um quantidade de segundos
//==================================================
VAR //VARIAVEL GLOBAL
r,n:inteiro  //resultado , numero
//==================================================
PROCEDIMENTO cvtStoHMS(segundo : inteiro)  //convert segundo para hora minuto segundo
var
hora, min, seg : inteiro
Inicio
seg := segundo
hora := segundo div 3600
segundo := segundo mod 3600  //o que sobrou da divisao da hora
min := segundo div 60
segundo := segundo mod 60 // o que sobrou da divisao do minuto

escreval("======================================================================================")
escreval(seg, " s equivale(m) a ", hora, " hora(s), ", min, " minuto(s) e ", segundo, " segundos.")
escreval("======================================================================================")
FIMPROCEDIMENTO
//==================================================

inicio
// Se��o de Comandos

escreva("Informe uma quantidade de segundos: ")
leia(n)
cvtStoHMS(n);
FIMALGORITMO
