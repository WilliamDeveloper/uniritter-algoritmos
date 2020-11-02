algoritmo "questao_3"
// Função :
// Autor :
// Data : 03/10/2012
// Seção de Declarações 
var
  equacao : inteiro
  x, y, z : inteiro
inicio
// Seção de Comandos 
  Para x de 0 ate 100 faca
    Para y de 0 ate 100 faca
      Para z de 0 ate 100 faca
        equacao <- 3 * x + 2 * y + 7 * z
        
        Se (equacao = 5) Entao
          Escreva(x, ", ", y, ", ", z, " é uma solução para a equação.")
        FimSe
      FimPara
    FimPara
  FimPara
fimalgoritmo
