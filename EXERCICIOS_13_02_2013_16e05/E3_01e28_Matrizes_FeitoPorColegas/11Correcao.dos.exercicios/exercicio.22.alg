//Escreva uma matriz com 5 linha e 5 colunas e diga o menor numero da diagonal secundaria.
algoritmo "semnome"
// Função :
// Autor :
// Data : 17/10/2012
// Seção de Declarações 
var
matriz: vetor [1..5,1..5] de real
linha,coluna: inteiro
menor : real
inicio
menor <- 100
para linha de 1 ate 5 faca
     para coluna de 1 ate 5 faca
escreval("Digite o valor da linha", linha, ",coluna", coluna, " da matriz: ")
leia(matriz[linha,coluna])

se(linha+coluna <6) entao
se(matriz[linha,coluna] < menor) entao
fimse
fimse
fimpara
fimpara
escreval


escreva("A matriz é: ")
escreval
para linha de 1 ate 5 faca
escreval
para coluna de 1 ate 5 faca
escreva (matriz[linha,coluna]," ")
fimpara
fimpara
escreval
escreval("O menor valor acima da diagonal secundaria é: ",menor)

fimalgoritmo
