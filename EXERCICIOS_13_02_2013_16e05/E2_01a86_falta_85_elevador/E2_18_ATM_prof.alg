algoritmo "ATM"
// Função :
// Autor :
// Data : 01/10/2012
// Seção de Declarações 
var
  valor, valorIni : inteiro
  n100, n50, n10, n5, n1 : inteiro
inicio
// Seção de Comandos
  escreva ("Informe o valor a ser sacado: R$")
  leia (valor)
  valorIni <- valor
  
  n100 := valor div 100
  valor <- valor mod 100
  
  n50 <- valor div 50
  valor <- valor mod 50
  
  n10 <- valor div 10
  valor <- valor mod 10
  
  n5 <- valor div 5
  valor <- valor mod 5
  
  n1 <- valor div 1
  
  escreval("Valor solicitado: R$", valorIni)
  escreval("Notas de R$100: ", n100)
  escreval("Notas de R$50: ", n50)
  escreval("Notas de R$10: ", n10)
  escreval("Notas de R$5: ", n5)
  escreval("Notas de R$1: ", n1)
fimalgoritmo
