algoritmo "questao_4"
// Fun��o :
// Autor :
// Data : 03/10/2012
// Se��o de Declara��es 
var
  idade: inteiro
  ano, mes, dia : inteiro
inicio
// Se��o de Comandos 
  escreva("Informe sua idade em dias: ")
  leia(idade)
  
  ano <- idade div 365
  idade <- idade mod 365
  mes <- idade div 30
  dia <- idade mod 30
  
  escreva("Voc� tem ", ano, " ano(s), ", mes, " mes(es) e ", dia, " dia(s)")
fimalgoritmo
