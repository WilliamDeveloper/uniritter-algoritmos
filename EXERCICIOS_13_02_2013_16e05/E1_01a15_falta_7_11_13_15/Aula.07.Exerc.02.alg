algoritmo "Valor_10"
// Fun��o :
// Autor :
// Data : 18/09/2012
// Se��o de Declara��es 
var
  i,cont : inteiro
  v : vetor [1..15] de inteiro
inicio
cont:=0
  Para i de 1 ate 15 faca
    escreva("Informe um n�mero: ")
    leia(v[i])
  FimPara

    para i de 1 ate 15 faca
         Se v[i] < 0 Entao
         cont:=cont+1
         fimse
    fimpara
  
  
  

escreval(cont)

  
fimalgoritmo
