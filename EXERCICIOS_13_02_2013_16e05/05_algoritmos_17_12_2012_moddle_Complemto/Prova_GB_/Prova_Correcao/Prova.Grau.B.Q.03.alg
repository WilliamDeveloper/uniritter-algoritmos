algoritmo "GrauB_Q03"
// Fun��o :
// Autor :
// Data : 28/11/2012
// Se��o de Declara��es 

funcao somaN(n : inteiro) : inteiro
var
  result : inteiro
inicio
  Se (n = 1) Entao
    result := 1
  Senao
    result := n + somaN(n-1)
  FimSe
  
  retorne result
fimFuncao

var
  nro : inteiro

inicio
// Se��o de Comandos 
  escreva("Informe um nro: ")
  leia(nro)
  escreva("A soma dos ", nro, " primeiros n�meros �: ", somaN(nro))
fimalgoritmo
