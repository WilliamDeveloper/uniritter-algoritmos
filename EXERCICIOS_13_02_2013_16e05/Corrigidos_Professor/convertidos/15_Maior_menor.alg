algoritmo "MaiorMenor"
// Fun��o :
// Autor :
// Data : 13/10/2012
// Se��o de Declara��es
var

maior, menor, numero, i : inteiro

inicio


Para i de 1 ate 20 passo 1 faca
   escreval("Informe um n�mero: ")
   Leia(numero)

   Se (i = 1) Entao

      maior := numero
      menor := numero

   Senao
      Se (numero > maior) Entao
         maior := numero
      Senao
         Se (numero < menor) Entao
            menor := numero
         FimSe
      FimSe
   FimSe
FimPara

escreval("O maior valor digitado foi: ", maior)
escreval("O menor valor digitado foi: ", menor)


fimalgoritmo
