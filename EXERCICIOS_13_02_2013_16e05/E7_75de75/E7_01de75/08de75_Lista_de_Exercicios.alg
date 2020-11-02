algoritmo "List_Ex_08de75"
//arquivo "C:\Users\WILLIAM\Desktop\08_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//8. Escreva um algoritmo que leia um vetor de 10 posições
//e mostre-o ordenado em ordem crescente.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Seção de Declarações
var
v:vetor[1..10] de inteiro
i,j,aux:inteiro
inicio

para i de 1 ate 10 faca
   escreva("Informe um numero .: ")
   leia(v[i])
fimpara
para i de 1 ate 10-1 faca
   para j de i+1 ate 10 faca
      se (v[i]>v[j]) entao
         aux:=v[i]
         v[i]:=v[j]
         v[j]:=aux
      fimse
   fimpara
fimpara

escreval
escreval("--------------------------")
escreval(" GERANDO VETOR CRESCENTE  ")
escreval("--------------------------")
escreval
para i de 1 ate 10 faca
   escreval(v[i])
fimpara

fimalgoritmo
