algoritmo "param.ref"
// Função :
// Autor :
// Data : 13/11/2012
// Seção de Declarações 
var
  nro, perc : real
  
procedimento calculaPerc(num: real; var p: real)
inicio
  p := num * 21 / 100
fimProcedimento
  
inicio
// Seção de Comandos 
  nro := 0
  perc := 0
  
  escreva("Informe um nro: ")
  leia(nro)
  
  calculaPerc(nro, perc)
  
  escreva(perc)

fimalgoritmo
