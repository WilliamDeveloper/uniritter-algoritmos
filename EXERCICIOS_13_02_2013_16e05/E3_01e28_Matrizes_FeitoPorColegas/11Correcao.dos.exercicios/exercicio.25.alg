algoritmo "exerc3-Matrizes"
// Função das Matrizes:  Matrizes são arranjos ordenados que ao contrário dos vetores podem ter n dimensões,
// sendo que estas dimensões lhes dão o nome n-dimensional . Uma matriz de duas dimensões será chamada bi-dimensional,
// uma de três dimensões tri-dimensional e assim consecutivamente. Funciona praticamente da mesma forma que um vetor exceto
// que utilizaremos o número n de índices para acessar um dado que queremos. Para efeitos de estudo por enquanto nos limitaremos
// somente às matrizes bidimensionais (duas dimensões linha X colunas). Assim se possuimos uma matriz bidimensional de duas linhas e duas colunas


// Autor : Marco Antonio
// Data : 17/10/2012
// Seção de Declarações 

//EXERCICIO 3. Crie uma matriz 3X4 onde cada elemento é a soma dos índices de sua posição dentro da matriz;

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

