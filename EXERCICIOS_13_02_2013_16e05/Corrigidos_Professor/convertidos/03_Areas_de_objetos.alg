algoritmo "Areas_de_Objetos"
// Função :
// Autor :
// Data : 13/10/2012
// Seção de Declarações 
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
  escreval("A área do triângulo de lado ", A, " e altura ", B," é: ", aT)
  escreval("A área do círculo de raio ", C, " é: ", aC)
  escreval("A área do quadrado de lado ", B, " é: ", aQ)
  escreval("A área do retângulo de base ", A, " e altura", B," é: ", aR)


fimalgoritmo
