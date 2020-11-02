//Exemplo 1 crie um algaritmo que ler 10 numeros e os coloque numa matriz ordenando sua linha e coluna

algoritmo "semnome"
// Função :
// Autor :
// Data : 17/10/2012
// Seção de Declarações
var
i,j : inteiro
m: vetor [1..5,1..2] de inteiro



inicio

i:=0
j:=0

para i de 1 ate 5 faca
   para j de 1 ate 2 faca

      escreval("digite um numero")
      leia(m[i,j])
   fimpara
fimpara
para i de 1 ate 5 faca
   para j de 1 ate 2 faca
      escreval("o numero ",m[i,j],"  está na linha ",i,"  coluna  ",j)
   fimpara
fimpara


// Seção de Comandos
fimalgoritmo
