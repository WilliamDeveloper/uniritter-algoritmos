algoritmo "Valor_10"
// Fun��o :
// Autor :
// Data : 18/09/2012
// Se��o de Declara��es 
var
  i : inteiro
  v : vetor [1..10] de inteiro
inicio
  Para i de 1 ate 10 faca
    escreva("Informe um n�mero: ")
    leia(v[i])
  FimPara
  
  Para i de 1 ate 10 faca
    Se v[i] = 10 Entao
      escreval("A posi��o ", i, " do vetor tem o valor 10.")
    FimSe
  FimPara
  
fimalgoritmo
