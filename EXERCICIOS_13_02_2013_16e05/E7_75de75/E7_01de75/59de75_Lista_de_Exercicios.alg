algoritmo "List_Ex_59de75"
//arquivo "C:\Users\WILLIAM\Desktop\59_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//59. Escreva um m�dulo que receba como par�metro o ano corrente
//e a data de anivers�rio de uma pessoa e exiba qual � a sua idade.
// (Verificar se a data de nascimento informada � menor que o
// ano corrente).
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Se��o de Declara��es
var
anoatual,nascimento:inteiro

PROCEDIMENTO IDADE(ANOATUAL,NASCIMENTO:INTEIRO)
var
idadei:inteiro
INICIO
SE ( nascimento>anoatual) entao
   escreval("data invalida")
senao
   idadei:=anoatual-nascimento
   escreval("IDADE . : ",idadei)
fimse
FIMPROCEDIMENTO

inicio
leia(anoatual)
leia(nascimento)
idade(anoatual,nascimento)


fimalgoritmo
