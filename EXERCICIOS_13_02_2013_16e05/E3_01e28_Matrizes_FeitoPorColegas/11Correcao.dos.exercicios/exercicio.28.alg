algoritmo "semnome"
//03-Declare e leia uma matriz 4x4 e diga quantos numeros são menores do que 10.
var
    m: vetor[1..4,1..4] de inteiro
    linha,coluna,contM10: inteiro
inicio
// Seção de Comandos

para linha de 1 ate 4 faca
     para coluna de 1 ate 4 faca
                                escreval("Insira o valor:")
                                leia(m[linha,coluna])
                                se (m[linha,coluna]<10) entao
                                   contM10 <- contM10 + 1
                                fimSe
                                fimPara
                                fimPara
escreval("Quantidade de numeros menores que 10:",contM10)
fimalgoritmo
