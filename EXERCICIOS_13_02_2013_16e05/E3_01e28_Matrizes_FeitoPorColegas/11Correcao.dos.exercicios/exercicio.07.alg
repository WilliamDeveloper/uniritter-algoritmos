//2. Faça uma Matriz de nome F de 3 linhas e 3 colunas, que multiplique cada valor inserido na primeira linha por dois,
// na segunda linha faça a substração por um e na terceira linha faça a soma por dez. Ao final imprima a MATRIZ.


algoritmo "MultSubSomadasLinas"
// Função : Somar, Subtrair e Multiplicar os valores das linhas
// Autor :  Carlos e Marlon
// Data : 17/10/2012
// Seção de Declarações 
var

   f: vetor [1..3,1..3] de real
   linha, coluna: inteiro
   multi, soma, sub : real

inicio
// Seção de Comandos 

    para linha <- 1 ate 3 faca
    para coluna <- 1 ate 3 faca

         escreva ("Digite os valores para serem calculados:")
         leia (f[linha,coluna])


    fimpara
    fimpara



    para linha <- 1 ate 3 faca
    para coluna <- 1 ate 3 faca

   escolha linha
   caso 1
   f[linha,coluna] <- f[linha,coluna] * 2
   caso 2
   f[linha,coluna] <- f[linha,coluna]-1
   caso 3
   f[linha,coluna] <- f[linha,coluna]+10
   fimescolha

     fimpara
     fimpara

    para linha <- 1 ate 3 faca
    para coluna <- 1 ate 3 faca

    escreva (" ", f[linha,coluna])
    escreva (" ")

    fimpara
    fimpara




fimalgoritmo
fimalgoritmo
