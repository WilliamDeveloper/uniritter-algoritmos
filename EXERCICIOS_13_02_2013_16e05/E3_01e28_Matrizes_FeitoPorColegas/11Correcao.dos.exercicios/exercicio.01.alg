algoritmo "Estudando Matriz"
// Função :
// Autor :
// Data : 17/10/2012
// Seção de Declarações 
// Fazer um algorimto que leia uma matriz de 3×4 de números reais e depois exibir o primeiro e o último valor:
var
matriz : vetor[1..3,1..4] de real
i,j:inteiro

inicio
// Seção de Comandos 

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
