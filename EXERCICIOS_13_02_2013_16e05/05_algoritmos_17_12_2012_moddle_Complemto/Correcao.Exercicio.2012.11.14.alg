algoritmo "param.ref"
// Fun��o :
// Autor :
// Data : 13/11/2012
// Se��o de Declara��es 
var
  nro, perc : real
  
procedimento calculaPerc(num: real; var p: real)
inicio
  p := num * 21 / 100
fimProcedimento
  
inicio
// Se��o de Comandos 
  nro := 0
  perc := 0
  
  escreva("Informe um nro: ")
  leia(nro)
  
  calculaPerc(nro, perc)
  
  escreva(perc)

fimalgoritmo
