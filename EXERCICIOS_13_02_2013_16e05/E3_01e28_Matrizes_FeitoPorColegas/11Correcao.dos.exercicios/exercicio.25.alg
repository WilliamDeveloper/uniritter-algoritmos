algoritmo "exerc3-Matrizes"
// Fun��o das Matrizes:  Matrizes s�o arranjos ordenados que ao contr�rio dos vetores podem ter n dimens�es,
// sendo que estas dimens�es lhes d�o o nome n-dimensional . Uma matriz de duas dimens�es ser� chamada bi-dimensional,
// uma de tr�s dimens�es tri-dimensional e assim consecutivamente. Funciona praticamente da mesma forma que um vetor exceto
// que utilizaremos o n�mero n de �ndices para acessar um dado que queremos. Para efeitos de estudo por enquanto nos limitaremos
// somente �s matrizes bidimensionais (duas dimens�es linha X colunas). Assim se possuimos uma matriz bidimensional de duas linhas e duas colunas


// Autor : Marco Antonio
// Data : 17/10/2012
// Se��o de Declara��es 

//EXERCICIO 3. Crie uma matriz 3X4 onde cada elemento � a soma dos �ndices de sua posi��o dentro da matriz;

var

vet3x4:vetor[1..3,1..4] de inteiro
i,j:inteiro

inicio



para i de 1 ate 3 faca
     para j de 1 ate 4 faca
          vet3x4[i,j]<-i+i
     fimpara
fimpara

para i de 1 ate 3 faca
     para j de 1 ate 4 faca
          escreva(vet3x4[i,j]," ")
     fimpara
          escreval(" ")
fimpara

fimalgoritmo

