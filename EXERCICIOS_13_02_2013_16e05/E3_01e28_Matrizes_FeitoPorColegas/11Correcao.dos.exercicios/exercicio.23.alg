algoritmo "exerc1-Matrizes"
// Fun��o das Matrizes:  Matrizes s�o arranjos ordenados que ao contr�rio dos vetores podem ter n dimens�es,
// sendo que estas dimens�es lhes d�o o nome n-dimensional . Uma matriz de duas dimens�es ser� chamada bi-dimensional,
// uma de tr�s dimens�es tri-dimensional e assim consecutivamente. Funciona praticamente da mesma forma que um vetor exceto
// que utilizaremos o n�mero n de �ndices para acessar um dado que queremos. Para efeitos de estudo por enquanto nos limitaremos
// somente �s matrizes bidimensionais (duas dimens�es linha X colunas). Assim se possuimos uma matriz bidimensional de duas linhas e duas colunas


// Autor : Marco Antonio
// Data : 17/10/2012
// Se��o de Declara��es 

//EXERCICIO 1)  Fa�a um algoritmo para ler uma matriz de 3�4 de n�meros reais
// e depois exibir o elemento do canto superior esquerdo e do canto inferior direito

var

matriz : vetor[1..3,1..4] de real
i,j: inteiro

inicio

para i de 1 ate 3 faca
     para j de 1 ate 4 faca
          escreva("Digite um n�mero inteiro: [", i, ",", j, "] ")
                leia(matriz[i,j])
     fimpara
fimpara

para i de 1 ate 3 faca
     para j de 1 ate 4 faca
          escreva(matriz[i,j]:3)
     fimpara
     escreval("")
fimpara
escreval("")
escreval("linha 1 e coluna 1", matriz[1,1])
escreval("linha 3 e coluna 4", matriz[3,4])

fimalgoritmo
