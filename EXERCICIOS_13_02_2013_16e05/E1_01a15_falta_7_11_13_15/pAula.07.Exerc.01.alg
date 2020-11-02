algoritmo "Valor_10"
// Função :
// Autor :
// Data : 18/09/2012
// Seção de Declarações 
var
  i : inteiro
  v : vetor [1..10] de inteiro
inicio
  Para i de 1 ate 10 faca
    escreva("Informe um número: ")
    leia(v[i])
  FimPara
  
  Para i de 1 ate 10 faca
    Se v[i] = 10 Entao
      escreval("A posição ", i, " do vetor tem o valor 10.")
    FimSe
  FimPara
  
fimalgoritmo
