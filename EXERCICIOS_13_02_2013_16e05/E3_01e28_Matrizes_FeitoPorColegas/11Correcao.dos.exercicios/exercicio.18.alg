algoritmo "Fat_MULTIPLICA"
// Fun��o :
// Autor : WILLIAM , IURI
// Data : 17/10/2012
// Se��o de Declara��es


//[1]- crie uma matriz cuja primeira linha deve representar o
//fatorial 5 na sequencia de multiplicacao e a segunda linha deve
//ser o resultado obtido na primeira linha multiplicado por 3


// GABARITO FATORIAL    DE 5
//FATORIAL NA SEQUENCIA DE CALCULO              1	2	6	24	120
//MULTIPLICANDO POR 3 A PRIMEIRA LINHA DA MATRIZ 3	6	18	72	360


var

i,j,k,valor,acum,acum2,valor2 :inteiro
m:vetor[1..2,1..5] de inteiro

inicio
valor:=5
valor2:=3
acum:=1
acum2:=1
k:=1

para i de 1 ate 2 faca
   para j de 1 ate valor faca
      se (i=1) entao
         acum:=acum*j
         m[i,j]:=acum
      senao
         acum:=acum*valor2
         m[i,j]:=m[k,j]*valor2
      fimse

   fimpara
fimpara

para i de 1 ate 2 faca
   para j de 1 ate 5 faca
      se (j=1) entao
         escreval
      fimse
      escreva(m[i,j])

   fimpara
fimpara



fimalgoritmo
