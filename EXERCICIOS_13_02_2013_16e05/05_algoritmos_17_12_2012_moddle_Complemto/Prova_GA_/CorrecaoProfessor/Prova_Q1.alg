algoritmo "questao_1"
// Fun��o :
// Autor :
// Data : 03/10/2012
// Se��o de Declara��es 
var
  letra : caracter
inicio
// Se��o de Comandos 
  escreva("Informe uma letra: ")
  leia (letra)
  
  escolha (letra)
    caso "a"
      escreval(letra, " � uma vogal")
    caso "e"
      escreval(letra, " � uma vogal")
    caso "i"
      escreval(letra, " � uma vogal")
    caso "o"
      escreval(letra, " � uma vogal")
    caso "u"
      escreval(letra, " � uma vogal")
    outrocaso
      escreval(letra, " n�o � uma vogal")
  fimEscolha
  
  Se (letra = "a") OU (letra = "e") OU (letra = "i") OU (letra = "o") OU (letra = "u") Entao
    escreva(letra, " � uma vogal")
  Senao
    escreva(letra, " n�o � uma vogal")
  FimSe
fimalgoritmo
