//Exemplo 3 elabore uma matriz 3X3 que conte quantos valores maiores de 5 e menores que 10 ela recebeu.

algoritmo "semnome"
// Função :
// Autor :
// Data : 17/10/2012
// Seção de Declarações
var
i,j : inteiro
m: vetor [1..3,1..3] de inteiro
cont: inteiro


inicio

i:=0
j:=0
cont:=0

para i de 1 ate 3 faca
   para j de 1 ate 3 faca

      escreval("digite um numero")
      leia(m[i,j])
   fimpara
fimpara
para i de 1 ate 3 faca
   para j de 1 ate 3 faca
      se (m[i,j]>5) e (m[i,j]<10) entao
         cont:= cont + 1

      fimse
   fimpara
fimpara

escreval(" a quantidade de valores maiores de 5 e menores que 10 da matriz é ",cont)



// Seção de Comandos
fimalgoritmo
