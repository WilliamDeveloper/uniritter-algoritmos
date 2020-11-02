algoritmo "List_Ex_06de75"
//arquivo "C:\Users\WILLIAM\Desktop\06_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//6. Escreva um algoritmo que leia um vetor de 10 posições
//de números inteiros e imprimir, logo após, gerar 2 vetores
//a partir dele, um contendo os elementos de posições ímpares
// do vetor e o outro os elementos de posições pares.
//Imprimi-los no final.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Seção de Declarações
var
v:vetor[1..10] de inteiro
posimpar:vetor[1..10] de inteiro
pospar:vetor[1..10] de inteiro
i,j,k:inteiro

inicio
j:=1
k:=1

para i de 1 ate 10 faca
   escreva("Informe um numero para v[",i,"] .: ")
   leia(v[i])
   se (i mod 2 = 0) entao
      pospar[j]:=v[i]
      j:=j+1
   senao
      posimpar[k]:=v[i]
      k:=k+1
   fimse
fimpara

escreval
escreval("---------------------------------")
escreval("          GERANDO VETOR ")
escreval("---------------------------------")
escreval
para i de 1 ate 10 faca
   escreval(v[i])
fimpara


escreval
escreval("---------------------------------")
escreval("   GERANDO VETOR DA POSICAO PAR  ")
escreval("---------------------------------")
escreval

para i de 1 ate j-1 faca
   escreval(pospar[i])
fimpara

escreval
escreval("---------------------------------")
escreval(" GERANDO VETOR DA POSICAO IMPAR  ")
escreval("---------------------------------")
escreval

para i de 1 ate k-1 faca
   escreval(posimpar[i])
fimpara


fimalgoritmo
