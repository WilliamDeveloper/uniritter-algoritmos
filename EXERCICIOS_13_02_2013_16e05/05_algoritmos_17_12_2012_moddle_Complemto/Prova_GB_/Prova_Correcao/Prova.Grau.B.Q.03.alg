algoritmo "GrauB_Q03"
// Função :
// Autor :
// Data : 28/11/2012
// Seção de Declarações 

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
// Seção de Comandos 
  escreva("Informe um nro: ")
  leia(nro)
  escreva("A soma dos ", nro, " primeiros números é: ", somaN(nro))
fimalgoritmo
