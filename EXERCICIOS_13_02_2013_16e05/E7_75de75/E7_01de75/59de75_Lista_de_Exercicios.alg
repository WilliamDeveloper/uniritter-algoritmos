algoritmo "List_Ex_59de75"
//arquivo "C:\Users\WILLIAM\Desktop\59_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//59. Escreva um módulo que receba como parâmetro o ano corrente
//e a data de aniversário de uma pessoa e exiba qual é a sua idade.
// (Verificar se a data de nascimento informada é menor que o
// ano corrente).
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Seção de Declarações
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
