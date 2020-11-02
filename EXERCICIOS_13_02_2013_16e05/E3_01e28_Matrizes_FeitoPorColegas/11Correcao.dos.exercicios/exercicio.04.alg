algoritmo "BRINQUEDOS"
// Função :
// Autor : André / Rubens
// Data : 17/10/2012
// Seção de Declarações 
var

  m : vetor [1..2, 1..2] de inteiro
  rodag : inteiro
  carrocel : inteiro
  pedalinho : inteiro
  l : inteiro
  c : inteiro

  
inicio

rodag:=0
carrocel:=0
pedalinho:=0

  Para l de 1 ate 2 faca
    Para c de 1 ate 2 faca
    escreva("Digite sua idade: ")
    leia(m[l,c])
    FimPara
  FimPara
  
  
  Para l de 1 ate 2 faca
    Para c de 1 ate 2 faca
      Se m[l,c] >= 10 Entao
      rodag:= rodag + 1
       senao
       se (m[l,c] >= 6) e (m[l,c] < 8) Entao
       carrocel:= carrocel + 1
        senao
        se (m[l,c] >= 8) e (m[l,c] < 10) Entao
        pedalinho:= pedalinho + 1
        fimse
       fimse
      FimSe
    FimPara
  FimPara
  
  
   escreval("O numero de usuarios que tem idade para andar na roda gigante: ", rodag)
   escreval("O numero de usuarios que tem idade para andar no carrocel: ", carrocel)
   escreval("O numero de usuarios que tem idade para andar no pedalinho: ", pedalinho)
  
  
fimalgoritmo
