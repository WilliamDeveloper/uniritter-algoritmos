algoritmo "RaizAproximada"
// Fun��o :
// Autor :
// Data : 13/10/2012
// Se��o de Declara��es
var

numero : inteiro
i : inteiro
ultimo : inteiro

inicio


Escreval("Informe um n�mero: ")
Leia(numero)

Para i de 1 ate numero passo 1 faca
   Se (i * i <= numero) entao
      ultimo := i
   FimSe
FimPara

Escreval("O n�mero inteiro que mais se aproxima da raiz de ",numero, " �: ", ultimo)


fimalgoritmo
