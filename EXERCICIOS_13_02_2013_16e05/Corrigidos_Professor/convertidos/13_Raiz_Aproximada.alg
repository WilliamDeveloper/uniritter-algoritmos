algoritmo "RaizAproximada"
// Função :
// Autor :
// Data : 13/10/2012
// Seção de Declarações
var

numero : inteiro
i : inteiro
ultimo : inteiro

inicio


Escreval("Informe um número: ")
Leia(numero)

Para i de 1 ate numero passo 1 faca
   Se (i * i <= numero) entao
      ultimo := i
   FimSe
FimPara

Escreval("O número inteiro que mais se aproxima da raiz de ",numero, " é: ", ultimo)


fimalgoritmo
