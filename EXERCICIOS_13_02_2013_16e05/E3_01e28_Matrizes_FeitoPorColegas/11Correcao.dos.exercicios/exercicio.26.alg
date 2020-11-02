algoritmo "01"
//01-Declare uma matriz 3x3 onde os valores da diagonal principal são 0 e os restantes são 1;
var
   m: vetor[1..3,1..3] de inteiro
   linha,coluna: inteiro
inicio
// Seção de Comandos

para linha de 1 ate 3 faca
     para coluna de 1 ate 3 faca
                                se (linha = coluna) entao
                                            m[linha,coluna] <- 0
                                            senao
                                                 m[linha,coluna] <- 1
                                            fimSe
                                            fimPara
                                            fimPara
escreval ("__________Matriz 3x3__________")
para linha de 1 ate 3 faca
     para coluna de 1 ate 3 faca
                                 escreva (m[linha,coluna]:4)
                                 fimPara
                                 escreval("")
                                 fimPara

fimalgoritmo
