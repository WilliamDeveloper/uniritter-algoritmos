algoritmo "questao_1"
// Função :
// Autor :
// Data : 03/10/2012
// Seção de Declarações 
var
  letra : caracter
inicio
// Seção de Comandos 
  escreva("Informe uma letra: ")
  leia (letra)
  
  escolha (letra)
    caso "a"
      escreval(letra, " é uma vogal")
    caso "e"
      escreval(letra, " é uma vogal")
    caso "i"
      escreval(letra, " é uma vogal")
    caso "o"
      escreval(letra, " é uma vogal")
    caso "u"
      escreval(letra, " é uma vogal")
    outrocaso
      escreval(letra, " não é uma vogal")
  fimEscolha
  
  Se (letra = "a") OU (letra = "e") OU (letra = "i") OU (letra = "o") OU (letra = "u") Entao
    escreva(letra, " é uma vogal")
  Senao
    escreva(letra, " não é uma vogal")
  FimSe
fimalgoritmo
