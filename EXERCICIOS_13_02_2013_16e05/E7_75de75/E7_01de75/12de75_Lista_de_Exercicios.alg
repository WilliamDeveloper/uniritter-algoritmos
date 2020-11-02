algoritmo "List_Ex_12de75"
//arquivo "C:\Users\WILLIAM\Desktop\12_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//12. Escrever um algoritmo que lê 2 vetores de tamanho 10 e os escreve.
//Crie, a seguir, um vetor de 20 posições que contenha os elementos
//dos outros 2 vetores em ordem crescente.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Seção de Declarações
var
v1:vetor[1..10] de inteiro
v2:vetor[1..10] de inteiro
v3:vetor[1..20] de inteiro
i,j,aux:inteiro
inicio

para i de 1 ate 10 faca
   escreva("Informe um Numero v1[",i,"].: ")
   leia(v1[i])
   v3[i]:=v1[i]
fimpara
para i de 1 ate 10 faca
   escreva("Informe um Numero v2[",i,"].: ")
   leia(v2[i])
   v3[10+i]:=v2[i]
fimpara

para i de 1 ate 20-1 faca
   para j de i+1 ate 20 faca
      se (v3[i]>v3[j]) entao
         aux:=v3[i]
         v3[i]:=v3[j]
         v3[j]:=aux
      fimse
   fimpara
fimpara


escreval
escreval("-------------------------------------")
escreval("  GERANDO O TERCEIRO VETOR ORDENADO")
escreval("-------------------------------------")
escreval

para i de 1 ate 20 faca
   escreval(v3[i])
fimpara


fimalgoritmo
