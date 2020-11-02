algoritmo "List_Ex_41de75"
//arquivo "C:\Users\WILLIAM\Desktop\41_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//41. Leia uma matriz 5 x 5 e faça uma troca entre as diagonais
// superior e inferior. Escreva-a ao final.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Seção de Declarações
var
m:vetor[1..5,1..5] de inteiro
i,j,k,aux:inteiro

inicio
para i de 1 ate 5 faca
   para j de 1 ate 5 faca
      escreva("Informe um numero para M[",i,",",j,"] .: ")
      leia(m[i,j])
   fimpara
fimpara

k:=6
para i de 1 ate 5 faca
   para j de 1 ate 5 faca
      se (i=j) entao
         k:=k-1
         aux:=m[i,j]
         m[i,j]:=m[i,k]
         m[i,k]:=aux
      fimse
   fimpara
fimpara

para i de 1 ate 5 faca
   para j de 1 ate 5 faca
      escreva(m[i,j]:5)
   fimpara
   escreval
fimpara

fimalgoritmo
