algoritmo "exerc1-Matrizes"
// Função das Matrizes:  Matrizes são arranjos ordenados que ao contrário dos vetores podem ter n dimensões,
// sendo que estas dimensões lhes dão o nome n-dimensional . Uma matriz de duas dimensões será chamada bi-dimensional,
// uma de três dimensões tri-dimensional e assim consecutivamente. Funciona praticamente da mesma forma que um vetor exceto
// que utilizaremos o número n de índices para acessar um dado que queremos. Para efeitos de estudo por enquanto nos limitaremos
// somente às matrizes bidimensionais (duas dimensões linha X colunas). Assim se possuimos uma matriz bidimensional de duas linhas e duas colunas


// Autor : Marco Antonio
// Data : 17/10/2012
// Seção de Declarações 

//EXERCICIO 1)  Faça um algoritmo para ler uma matriz de 3×4 de números reais
// e depois exibir o elemento do canto superior esquerdo e do canto inferior direito

var

matriz : vetor[1..3,1..4] de real
i,j: inteiro

inicio

para i de 1 ate 3 faca
     para j de 1 ate 4 faca
          escreva("Digite um número inteiro: [", i, ",", j, "] ")
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
