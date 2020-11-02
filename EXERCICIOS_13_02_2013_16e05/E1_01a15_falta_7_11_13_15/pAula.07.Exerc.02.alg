algoritmo "Exerc_02"
// Função :
// Autor :
// Data : 18/09/2012
// Seção de Declarações 
var
  v : vetor [1..15] de inteiro
  i : inteiro
  neg : inteiro
inicio
// Seção de Comandos 
  neg <- 0

  Para i de 1 ate 15 faca
    escreva("Informe um número: ")
    leia(v[i])
  FimPara

  Para i de 1 ate 15 faca
    Se v[i] < 0 Entao
      neg <- neg + 1
    FimSe
  FimPara
  
  escreva ("Foram lidos ", neg, " números negativos")
fimalgoritmo
