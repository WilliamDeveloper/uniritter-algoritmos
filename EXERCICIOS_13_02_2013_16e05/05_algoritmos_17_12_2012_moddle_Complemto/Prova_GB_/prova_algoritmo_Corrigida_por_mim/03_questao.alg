algoritmo "Questao_03"
// Fun��o :
// Autor :WILLIAM GOULART PACHECO
// Data : 28/11/2012
// Se��o de Declara��es
var
numero:inteiro
resultado:inteiro
//funcao recursiva
FUNCAO soma(numero:inteiro):inteiro
var
i,acum:inteiro
inicio
acum:=0
se (numero=1) entao
   acum:=acum+numero
senao
   acum:=acum+numero
   acum:=acum+soma(numero-1)
fimse

retorne (acum)
FIMFUNCAO

inicio
// Se��o de Comandos
repita
   escreva("Infome somente numeros positivos .: ")
   leia(numero)
ate (numero>=1)

resultado:=soma(numero)


escreval
escreval("----------------------------------------")
escreval("O resultado encontrado foi . : ",resultado)
escreval("----------------------------------------")
escreval



fimalgoritmo
