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

escreval(perc*100,"% do valor ",global1," é " , global2)


fimalgoritmo
