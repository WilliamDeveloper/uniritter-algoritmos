Algoritmo "01_Raiz_Inteira"
// Fun��o :
// Autor : WILLIAM GOULART PACHECO
// Data : 07/11/2012
// Se��o de Declara��es
//01-Construa um m�dulo que obtenha a raiz quadrada inteira
//de um n�mero inteiro qualquer.
//==================================================
VAR //VARIAVEL GLOBAL
r,n:inteiro  //resultado , numero
//==================================================
FUNCAO rqi(numero:inteiro):inteiro  //funcao raiz quadrada inteira
var
i,raiz:inteiro
inicio
raiz:=-1
Para i de 1 ate numero faca
   Se (i*i)=numero entao
      raiz:=i
   Fimse
Fimpara

RETORNE (raiz)
FIMFUNCAO
//==================================================

INICIO
// Se��o de Comandos
escreva("Informe um n�mero: ")
leia(n)

r := rqi(n) //armazenando retorno da funcao em R

escreval("========================================================")
Se (r <> -1) Entao
   escreval("A raiz quadrada de ", n, " �: ", r)
Senao
   escreval(n, " n�o possui raiz quadrada inteira!")
FimSe
escreval("========================================================")
FIMALGORITMO
