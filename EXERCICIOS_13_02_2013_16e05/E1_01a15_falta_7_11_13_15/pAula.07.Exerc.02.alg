algoritmo "Exerc_02"
// Fun��o :
// Autor :
// Data : 18/09/2012
// Se��o de Declara��es 
var
  v : vetor [1..15] de inteiro
  i : inteiro
  neg : inteiro
inicio
// Se��o de Comandos 
  neg <- 0

  Para i de 1 ate 15 faca
    escreva("Informe um n�mero: ")
    leia(v[i])
  FimPara

  Para i de 1 ate 15 faca
    Se v[i] < 0 Entao
      neg <- neg + 1
    FimSe
  FimPara
  
  escreva ("Foram lidos ", neg, " n�meros negativos")
fimalgoritmo
