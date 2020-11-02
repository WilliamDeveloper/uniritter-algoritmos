algoritmo "Criar Matriz 5×5 e elevar ao cubo"
// Função :
// Autor :
// Data : 17/10/2012
// Seção de Declarações 
//2. Escrever uma matriz 5X5 e gerar um nova onde os elementos serão o valor elevado ao cubo da primeira matriz informada:

var
vetA:vetor[1..5,1..5] de real
vetB:vetor[1..5,1..5] de real
i,j:inteiro
inicio
// Seção de Comandos 
para i de 1 ate 5 faca
     para j de 1 ate 5 faca
          escreva("Digite os numeros: [",i, " | ", j, " ] ")
          leia(vetA[i,j])
     fimpara
fimpara

para i de 1 ate 5 faca
     para j de 1 ate 5 faca
          escreva(vetA[i,j])
     fimpara
     escreval("")
fimpara

para i de 1 ate 5 faca
     para j de 1 ate 5 faca
          vetB[i,j]<- (vetA[i,j]^3)//calculo do cubo
     fimpara
fimpara

para i de 1 ate 5 faca
     para j de 1 ate 5 faca

          escreva(vetB[i,j])

     fimpara
     escreval("")
fimpara
fimalgoritmo
