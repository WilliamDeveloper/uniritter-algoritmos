algoritmo "List_Ex_07de75"
//arquivo "C:\Users\WILLIAM\Desktop\07_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//7. Escreva um algoritmo que leia um vetor de 7 elementos inteiros.
// Encontre e mostre o menor elemento e sua posição no vetor.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Seção de Declarações
var
v:vetor[1..7] de inteiro
i,menor,npos :inteiro
inicio

para i de 1 ate 7 faca
   escreva("Informe um numero .: ")
   leia(v[i])
   se (i=1) entao
      menor:=v[i]
      npos:=i
   fimse
   se (v[i]<menor) entao
      menor:=v[i]
      npos:=i
   fimse
fimpara

escreva("O menor elemento do vetor é ",menor," e esta na posicao",npos," do vetor")

fimalgoritmo
