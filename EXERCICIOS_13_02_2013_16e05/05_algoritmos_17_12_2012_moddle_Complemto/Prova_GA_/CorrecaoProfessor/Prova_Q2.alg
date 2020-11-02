algoritmo "questao_2"
// Função :
// Autor :
// Data : 03/10/2012
// Seção de Declarações 
var
  acum, cont, nro : inteiro
inicio
// Seção de Comandos
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
