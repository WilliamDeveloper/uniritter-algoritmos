Algoritmo "02_segundos"
// Fun��o :
// Autor : WILLIAM GOULART PACHECO
// Data : 07/11/2012
// Se��o de Declara��es
//02-Construa um m�dulo que informe a quantidade de horas,
//minutos e segundos de um quantidade de segundos
//==================================================
VAR //VARIAVEL GLOBAL
r,n,isegundo,hora,minuto,segundo :inteiro  //resultado , numero
//==================================================
FUNCAO Fhoras(segundos : inteiro) : inteiro
var
hh:inteiro
inicio
hh:=segundos DIV 3600
RETORNE (hh)
FIMFUNCAO
//==================================================
FUNCAO Fminutos(segundos,horas : inteiro) : inteiro
var
mm:inteiro
inicio
mm:=(segundos-(3600*horas))DIV 60
RETORNE (mm)
FIMFUNCAO
//==================================================

FUNCAO Fsegundos(segundos,horas,minutos : inteiro) : inteiro
var
ss:inteiro
inicio
ss:=(segundos-(3600*horas)-(minutos*60))
RETORNE (ss)
FIMFUNCAO
//==================================================


inicio
// Se��o de Comandos

escreva("Informe uma quantidade de segundos: ")
leia(isegundo)
hora:=Fhoras(isegundo)
minuto:= Fminutos(isegundo,hora)
segundo := Fsegundos(isegundo,hora,minuto)
escreval("=======================================================================================================")
escreval(isegundo, " segundo(S) equivale(m) a ", hora, " hora(s), ", minuto, " minuto(s) e ", segundo, " segundos.")
escreval("=======================================================================================================")
FIMALGORITMO
