Algoritmo "03_exponenciacao"
// Função :
// Autor : WILLIAM GOULART PACHECO
// Data : 07/11/2012
// Seção de Declarações
//03-Construa um módulo capaz de calcular a exponenciação
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
// Seção de Comandos
escreva("Informe um número: ")
leia(n)
escreva("Informe um expoente: ")
leia(expo)

r := Fexpoenciacao(n, expo)

escreval("==============================================")
escreval(n, " elevado na ", expo, "a. potencia e: ", r)
escreval("==============================================")
FIMALGORITMO
