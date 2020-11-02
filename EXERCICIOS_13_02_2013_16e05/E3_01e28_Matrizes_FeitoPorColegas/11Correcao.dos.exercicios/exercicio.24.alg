algoritmo "exerc2-Matrizes"
// Função das Matrizes:  Matrizes são arranjos ordenados que ao contrário dos vetores podem ter n dimensões,
// sendo que estas dimensões lhes dão o nome n-dimensional . Uma matriz de duas dimensões será chamada bi-dimensional,
// uma de três dimensões tri-dimensional e assim consecutivamente. Funciona praticamente da mesma forma que um vetor exceto
// que utilizaremos o número n de índices para acessar um dado que queremos. Para efeitos de estudo por enquanto nos limitaremos
// somente às matrizes bidimensionais (duas dimensões linha X colunas). Assim se possuimos uma matriz bidimensional de duas linhas e duas colunas


// Autor : Marco Antonio
// Data : 17/10/2012
// Seção de Declarações 

//EXERCICIO  2. Ler uma matriz 5X5 e gerar outra em que cada elemento é o cubo do elemento respectivo na matriz original.
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
