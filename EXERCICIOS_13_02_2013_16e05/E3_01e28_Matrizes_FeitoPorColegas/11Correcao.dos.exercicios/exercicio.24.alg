algoritmo "exerc2-Matrizes"
// Fun��o das Matrizes:  Matrizes s�o arranjos ordenados que ao contr�rio dos vetores podem ter n dimens�es,
// sendo que estas dimens�es lhes d�o o nome n-dimensional . Uma matriz de duas dimens�es ser� chamada bi-dimensional,
// uma de tr�s dimens�es tri-dimensional e assim consecutivamente. Funciona praticamente da mesma forma que um vetor exceto
// que utilizaremos o n�mero n de �ndices para acessar um dado que queremos. Para efeitos de estudo por enquanto nos limitaremos
// somente �s matrizes bidimensionais (duas dimens�es linha X colunas). Assim se possuimos uma matriz bidimensional de duas linhas e duas colunas


// Autor : Marco Antonio
// Data : 17/10/2012
// Se��o de Declara��es 

//EXERCICIO  2. Ler uma matriz 5X5 e gerar outra em que cada elemento � o cubo do elemento respectivo na matriz original.
// Imprima depois o elemento do meio desta nova matriz;

var

vetA:vetor[1..5,1..5] de real
vetB:vetor[1..5,1..5] de real
i,j:inteiro

inicio

para i de 1 ate 5 faca
     para j de 1 ate 5 faca
          escreva("Digite os numeros: [",i, " + ", j, " ] ")
          leia(vetA[i,j])
     fimpara
fimpara

para i de 1 ate 5 faca
     para j de 1 ate 5 faca
          escreva(vetA[i,j]:7)
     fimpara
     escreval("")
fimpara

para i de 1 ate 5 faca
     para j de 1 ate 5 faca
          vetB[i,j]<- (vetA[i,j]^3)
     fimpara
fimpara

para i de 1 ate 5 faca
     para j de 1 ate 5 faca

          escreva(vetB[i,j]:7)

     fimpara
     escreval("")
fimpara


fimalgoritmo
