algoritmo "questao_3"
// Fun��o :
// Autor :
// Data : 03/10/2012
// Se��o de Declara��es 
var
  equacao : inteiro
  x, y, z : inteiro
inicio
// Se��o de Comandos 
  Para x de 0 ate 100 faca
    Para y de 0 ate 100 faca
      Para z de 0 ate 100 faca
        equacao <- 3 * x + 2 * y + 7 * z
        
        Se (equacao = 5) Entao
          Escreva(x, ", ", y, ", ", z, " � uma solu��o para a equa��o.")
        FimSe
      FimPara
    FimPara
  FimPara
fimalgoritmo
