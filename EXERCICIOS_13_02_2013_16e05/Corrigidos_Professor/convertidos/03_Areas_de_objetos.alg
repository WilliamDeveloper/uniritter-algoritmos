algoritmo "Areas_de_Objetos"
// Fun��o :
// Autor :
// Data : 13/10/2012
// Se��o de Declara��es 
var

    A, B, C: real
  aT, aQ, aC, aR,PPI: real

inicio

  PPI := 3.1415


  escreval("Informe o valor de A: ")
  leia(A)
  escreval("Informe o valor de B: ")
  leia(B)
  escreval("Informe o valor de C: ")
  leia(C)
  aT <- A * B / 2
  aC <- PPI * exp(C,2)
  aQ <- exp(B, 2)
  aR <- A * B
  escreval("A �rea do tri�ngulo de lado ", A, " e altura ", B," �: ", aT)
  escreval("A �rea do c�rculo de raio ", C, " �: ", aC)
  escreval("A �rea do quadrado de lado ", B, " �: ", aQ)
  escreval("A �rea do ret�ngulo de base ", A, " e altura", B," �: ", aR)


fimalgoritmo
