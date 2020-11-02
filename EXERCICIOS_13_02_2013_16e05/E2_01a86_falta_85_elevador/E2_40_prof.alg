algoritmo "ex_40"
// Função :
// Autor :
// Data : 01/10/2012
// Seção de Declarações 
var
  op, ida : inteiro
  valor : real
inicio
// Seção de Comandos 
  escreval("Destinos: ")
  escreval("1 - Norte")
  escreval("2 - Nordeste ")
  escreval("3 - Centro-Oeste ")
  escreval("4 - Sul ")
  repita
    escreva("Informe o nro correspondente a região desejada: ")
    leia(op)
  ate (op >= 1) && (op <= 4)
  
  repita
    escreval("Digite 1 para ida e 2 para ida e volta")
    leia(ida)
  ate (ida = 1) OU (ida = 2)
  
  Escolha (op)
    Caso 1
      Se (ida = 1) Entao
        valor <- 500
      Senao
        valor <- 900
      FimSe
    Caso 2
      Se (ida = 1) Entao
        valor <- 350
      Senao
        valor <- 650
    Caso 3
      Se (ida = 1) Entao
        valor <- 350
      Senao
        valor <- 600
    Caso 4
      Se (ida = 1) Entao
        valor <- 300
      Senao
        valor <- 550
  FimEscolha
  
  escreva("Valor da passagem: ", valor)
  
fimalgoritmo
