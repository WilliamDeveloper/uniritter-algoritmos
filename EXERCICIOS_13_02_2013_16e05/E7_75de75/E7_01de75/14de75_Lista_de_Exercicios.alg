algoritmo "List_Ex_14de75"
//arquivo "C:\Users\WILLIAM\Desktop\14_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//14. Escrever um algoritmo que lê um vetor X(20) e o escreve.
// Escreva, a seguir, cada um dos valores distintos que aparecem
//em X dizendo quantas vezes cada valor aparece em X.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Seção de Declarações
var
x:vetor[1..20] de inteiro
vcont:vetor[1..20]de inteiro
i,j:inteiro
inicio

para i de 1 ate 20 faca
   escreva("Informe um numero . : ")
   leia(x[i])
fimpara

para i de 1 ate 20 faca
  vcont[i]:=0

   para j de 1 ate 20 faca
      se (x[i]=x[j])E(i<>j) entao
         vcont[i]:=vcont[i]+1
      fimse
   fimpara
fimpara

escreval
escreval("-------------------------------------------------------------------------------")
para i de 1 ate 20 faca
escreval(" O elemento ",x[i]," da posicao X[",i,"] , apareceu ",vcont[i]," Vezes .")
fimpara
escreval("-------------------------------------------------------------------------------")
escreval
fimalgoritmo
