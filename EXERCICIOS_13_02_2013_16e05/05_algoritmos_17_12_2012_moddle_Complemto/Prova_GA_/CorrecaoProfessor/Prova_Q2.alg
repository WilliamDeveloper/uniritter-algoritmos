algoritmo "questao_2"
// Fun��o :
// Autor :
// Data : 03/10/2012
// Se��o de Declara��es 
var
  acum, cont, nro : inteiro
inicio
// Se��o de Comandos
  acum := 0
  cont := 0
  
  Repita
    Escreva("Informe um valor: ")
    Leia(nro)
    
    cont <- cont + 1
    acum <- acum + nro
  Ate nro < 0
  
  Escreval("A soma dos valores lido foi: ", acum)
  Escreval("Foram digitados ", cont, " valores")

fimalgoritmo
