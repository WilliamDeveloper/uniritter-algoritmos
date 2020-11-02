algoritmo "ex_02"
//02-declare e leia uma matriz 2x2 onde os valores da linha 1 recebem +2 e os da linha 2 recem +3 sobre o valor inserido.
var
    m: vetor[1..2,1..2] de inteiro
    linha,coluna: inteiro
    
inicio
// Seção de Comandos

para linha de 1 ate 2 faca
     para coluna de 1 ate 2 faca
                                escreval("Insira o valor:")
                                leia(m[linha,coluna])
                                fimPara
                                fimPara
para linha de 1 ate 2 faca
     para coluna de 1 ate 2 faca
                                se(linha=1) entao
                                            m[linha,coluna] <- m[linha,coluna]+2
                                senao
                                     m[linha,coluna] <- m[linha,coluna]+3
                                fimSe
                                fimPara
                                fimPara
escreval("_____________Matriz 2x2________")
para linha de 1 ate 2 faca
     para coluna de 1 ate 2 faca
                                escreva(m[linha,coluna]:4)
                                fimPara
                                escreval("")
                                fimPara
fimalgoritmo
