algoritmo "questao_4"
// Função :
// Autor :
// Data : 03/10/2012
// Seção de Declarações 
var
  idade: inteiro
  ano, mes, dia : inteiro
inicio
// Seção de Comandos 
  escreva("Informe sua idade em dias: ")
  leia(idade)
  
  ano <- idade div 365
  idade <- idade mod 365
  mes <- idade div 30
  dia <- idade mod 30
  
  escreva("Você tem ", ano, " ano(s), ", mes, " mes(es) e ", dia, " dia(s)")
fimalgoritmo
