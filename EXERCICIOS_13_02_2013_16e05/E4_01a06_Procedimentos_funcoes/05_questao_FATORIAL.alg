Algoritmo "05_fatorial"
// Fun��o :
// Autor : WILLIAM GOULART PACHECO
// Data : 07/11/2012
// Se��o de Declara��es
//05-Construa um m�dulo capaz de calcular o fatorial de um
//n�mero.
//==================================================
VAR //VARIAVEL GLOBAL
r,n :inteiro  //resultado , numero
//==================================================
FUNCAO Fatorial (numero:inteiro):inteiro
var
fat,i:inteiro
inicio
fat:=1
Se (numero = 0) Entao
   fat := 1
Senao
   Para i de 1 ate numero faca
      fat := fat * i
   FimPara
FimSe

RETORNE (fat)
FIMFUNCAO
//==================================================
INICIO
// Se��o de Comandos
escreva("Informe um n�mero: ")
leia(n)

r := Fatorial(n)
escreval("======================================")
escreval("O fatorial de ", n, " �: ", r)
escreval("======================================")

FIMALGORITMO
