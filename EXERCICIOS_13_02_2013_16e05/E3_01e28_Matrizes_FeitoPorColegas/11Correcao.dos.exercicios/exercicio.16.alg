algoritmo "semnome"
// Fun��o :
// Autor :
// Data : 17/10/2012
// Se��o de Declara��es
// Escreva uma matriz 2x2 de numeros inteiro e acumule a soma de todos os seus elementos
// e ao final testar se o resultado � par ou impar.
var
i,j, valor, soma : inteiro
M: vetor [1..3,1..3] de inteiro
inicio
soma <- 0
para i de 1 ate 3 faca
   para j de 1 ate 3 faca
      escreval("Digite um numero para a posicao de linha ",i," e coluna ",j)
      leia(M[i,j])
      soma <- soma+M[i,j]
   fimpara
fimpara
se ((soma mod 2)=0) entao
      escreval("O valor da soma dos elementos da matriz � ",soma," e este n�mero � par")

senao
      escreval("O valor da soma dos elementos da matriz � ",soma," e este n�mero � par")
fimse
fimalgoritmo
