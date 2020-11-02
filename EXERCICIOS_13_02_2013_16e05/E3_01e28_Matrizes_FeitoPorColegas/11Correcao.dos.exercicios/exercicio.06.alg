// 1. Faça uma Matriz 3x3 que compare e mostre no final os valores MAIORES que 10.


algoritmo "Contador>10"
// Função : Contar os numeros > 10 na matriz
// Autor :  Carlos e Marlon
// Data : 17/10/2012
// Seção de Declarações
var

     m: vetor [1..3,1..3] de inteiro              // Matriz de 3x3
     linha, coluna, numeros: inteiro
     


inicio

    numeros <- 0             // Contadores Zerados
    linha <- 0
    coluna <- 0

   //INICIALIZAÇÃO PARA PREENCHIMENTO DA MATRIZ

   para linha <- 1 ate 3 faca
   para coluna <- 1 ate 3 faca
   
   escreva ("Digite o valor para a MATRIZ:")
   leia (m[linha,coluna])
   
   fimpara
   fimpara

   // FINALIZAÇÃO DA MATRIZ
   
   
   // INICIO DOS CALCULOS DA MATRIZ
   
   
   para linha <- 1 ate 3 faca
   para coluna <- 1 ate 3 faca



   se (m[linha,coluna]>10) entao                      // INICIAÇÃO DA COMPARAÇÃO
                                numeros<- numeros+1
   fimse                                              // FIM DA COMPARAÇÃO
   
   fimpara
   fimpara
   
   escreva ("A quantidade  maior que 10 é:", numeros)    // Impressão do Resultado


fimalgoritmo
