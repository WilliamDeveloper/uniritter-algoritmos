algoritmo "rev_73"
// Fun��o :
// Autor :
// Data : 26/11/2012
// Se��o de Declara��es 
var
  base, expo : inteiro

funcao potencia(base, expoente: inteiro) : inteiro
var
  result : inteiro
inicio
  Se (Expoente = 0) Entao
    result := 1
  Senao
    result := base * potencia(base, expoente-1)
  FimSe
  
  retorne result
fimFuncao

inicio
// Se��o de Comandos 
  Escreva("Digite a base: ")
  Leia(base)
  Escreva("Digite o expoente: ")
  Leia(expo)
  
  Escreva(base, " elevado na ", expo, " a. potencia: ", potencia(base, expo))
fimalgoritmo
