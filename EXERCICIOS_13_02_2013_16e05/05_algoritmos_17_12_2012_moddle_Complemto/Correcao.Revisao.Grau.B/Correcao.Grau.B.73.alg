algoritmo "rev_73"
// Função :
// Autor :
// Data : 26/11/2012
// Seção de Declarações 
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
// Seção de Comandos 
  Escreva("Digite a base: ")
  Leia(base)
  Escreva("Digite o expoente: ")
  Leia(expo)
  
  Escreva(base, " elevado na ", expo, " a. potencia: ", potencia(base, expo))
fimalgoritmo
