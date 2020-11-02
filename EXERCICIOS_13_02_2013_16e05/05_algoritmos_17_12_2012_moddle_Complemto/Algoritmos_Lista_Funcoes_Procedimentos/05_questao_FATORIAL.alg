Algoritmo "05_fatorial"
// Função :
// Autor : WILLIAM GOULART PACHECO
// Data : 07/11/2012
// Seção de Declarações
//05-Construa um módulo capaz de calcular o fatorial de um
//número.
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
// Seção de Comandos
escreva("Informe um número: ")
leia(n)

r := Fatorial(n)
escreval("======================================")
escreval("O fatorial de ", n, " é: ", r)
escreval("======================================")

FIMALGORITMO
