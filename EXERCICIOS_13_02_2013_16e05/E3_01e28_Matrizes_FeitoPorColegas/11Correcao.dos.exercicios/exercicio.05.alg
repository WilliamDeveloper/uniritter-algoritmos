algoritmo "LOCALIZAR"
// Função :
// Autor : André / Rubens
// Data : 17/10/2012
// Seção de Declarações
var

  m : vetor [1..2, 1..2] de inteiro
  num : inteiro
  posl : inteiro
  posc : inteiro
  l : inteiro
  c : inteiro



inicio
posl:=0
posc:=0
  Para l de 1 ate 2 faca
    Para c de 1 ate 2 faca
    escreva("Digite codigo de usuario da matriz: ")
    leia(m[l,c])
    FimPara
  FimPara
    escreva("Digite codigo do usuario a ser localizado: ")
    leia(num)

  Para l de 1 ate 2 faca
    Para c de 1 ate 2 faca
      Se m[l,c] = num Entao
       posl:= l;
         posc:= c;
      fimse
    FimPara
  FimPara

   escreval("O codigo foi localizado na poisicao Linha", posl ," coluna ", posc)


fimalgoritmo
