algoritmo "GrauB_Q02"
// Função :
// Autor :
// Data : 28/11/2012
// Seção de Declarações 
var
  mat : vetor [1..3, 1..3] de inteiro
  i, j : inteiro
  media : real
inicio
// Seção de Comandos 
  media := 0
  
  para i de 1 ate 3 faca
    para j de 1 ate 3 faca
      escreva("Mat[",i,",",j,"] = ")
      leia(mat[i,j])
      media :=  media + mat[i,j]
    fimPara
  fimPara
  
  media := media / 9
  
  para i de 1 ate 3 faca
    para j de 1 ate 3 faca
      
      Se mat[i,j] > media Entao
        escreva(" 1 ")
      Senao
        Se mat[i,j] < media Entao
          escreva("-1 ")
        Senao
          escreva(" 0 ")
        FimSe
      FimSe
    fimPara
    escreval("")
  fimPara
fimalgoritmo
