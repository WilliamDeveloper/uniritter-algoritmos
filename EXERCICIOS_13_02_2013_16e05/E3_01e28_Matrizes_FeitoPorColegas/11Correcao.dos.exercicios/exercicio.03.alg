algoritmo "Matriz: TRANSPORTA"
// Fun��o :
// Autor :
// Data : 17/10/2012
// Se��o de Declara��es
//Fa�a um algoritmo para ler uma matriz 2X3 real e depois gerar e imprimir sua transposta (matriz 3X2 equivalente);
var
matrizA : vetor[1..2,1..3] de real
matrizB : vetor[1..3,1..2] de real
i,j:inteiro
inicio
// Se��o de Comandos 
para i de 1 ate 2 faca
     para j de 1 ate 3 faca
          escreva("Digite um n�mero inteiro: [", i, ",", j, "] ")
                leia(matrizA[i,j])
     fimpara
fimpara

escreval(" ���-  MATRIZ A ���-")
para i de 1 ate 2 faca
     para j de 1 ate 3 faca
          escreva(matrizA[i,j]," ")
     fimpara
          escreval(" ")
fimpara

para i de 1 ate 3 faca
     para j de 1 ate 2 faca
          matrizB[i,j]<-(matrizA[j,i])
     fimpara
fimpara

escreval(" ���-  MATRIZ B ���-")
para j de 1 ate 3 faca
     para i de 1 ate 2 faca
          escreva(matrizB[j,i]," ")
     fimpara
          escreval(" ")
fimpara
escreval(" �������")
fimalgoritmo
