algoritmo "Questao_03"
// Fun��o :
// Autor :WILLIAM GOULART PACHECO
// Data : 28/11/2012
// Se��o de Declara��es
var
numero:inteiro
resultado:inteiro

FUNCAO soma(numero:inteiro):inteiro
var
i,acum:inteiro
inicio
acum:=0
se (numero=1) entao
   //acum:=acum+numero
senao
   acum:=acum+soma(numero-1)
fimse

retorne (acum)
FIMFUNCAO

inicio
// Se��o de Comandos
leia(numero)
resultado:=soma(numero)
escreval
escreval("----------------------------------------")
escreval("O resultado encontrado foi . : ",resultado)
escreval("----------------------------------------")
escreval



fimalgoritmo
