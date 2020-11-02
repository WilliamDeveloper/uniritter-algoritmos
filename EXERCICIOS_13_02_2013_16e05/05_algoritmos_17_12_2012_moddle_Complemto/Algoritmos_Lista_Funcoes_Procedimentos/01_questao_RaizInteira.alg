Algoritmo "01_Raiz_Inteira"
// Função :
// Autor : WILLIAM GOULART PACHECO
// Data : 07/11/2012
// Seção de Declarações
//01-Construa um módulo que obtenha a raiz quadrada inteira
//de um número inteiro qualquer.
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
// Seção de Comandos
escreva("Informe um número: ")
leia(n)

r := rqi(n) //armazenando retorno da funcao em R

escreval("========================================================")
Se (r <> -1) Entao
   escreval("A raiz quadrada de ", n, " é: ", r)
Senao
   escreval(n, " não possui raiz quadrada inteira!")
FimSe
escreval("========================================================")
FIMALGORITMO
