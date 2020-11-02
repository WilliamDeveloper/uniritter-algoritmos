algoritmo "PercentualGlobal"
// Função :
// Autor : WILLIAM GOULART PACHECO
// Data : 16/11/2012
// Seção de Declarações 

//Faça um programa que tem duas variáveis globais inicializadas com 0:
// número e seu percentual (21% do valor do número).
//O programa deverá ler este número, enviar como parâmetros o número
//e seu percentual e através de um procedimento,
//calcular o novo percentual e retorná-lo ao programa principal
// para depois imprimí-lo.
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

escreval(fperc,"% do valor ",numero," é " , perc)


fimalgoritmo
