algoritmo "List_Ex_36de75"
//arquivo "C:\Users\WILLIAM\Desktop\36_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//36. Leia duas matrizes 4 x 4 e escreva uma terceira com
//os maiores elementos entre as primeiras.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Seção de Declarações
var
m1:vetor[1..4,1..4] de inteiro
m2:vetor[1..4,1..4] de inteiro
v:vetor[1..32] de inteiro
m3:vetor[1..4,1..4] de inteiro
i,j,k,aux:inteiro

inicio
k:=1
para i de 1 ate 4 faca
   para j de 1 ate 4 faca
      escreva("informe um numero para m1[",i,",",j,"] .: ")
      leia(m1[i,j])
      v[k]:=m1[i,j]
      k:=k+1
   fimpara
fimpara
escreval
escreval("---------------------------------------")
escreval
para i de 1 ate 4 faca
   para j de 1 ate 4 faca
      escreva("informe um numero para m2[",i,",",j,"] .: ")
      leia(m2[i,j])
      v[k]:=m2[i,j]
      k:=k+1
   fimpara
fimpara

para i de 1 ate 32-1 faca
   para j de i+1 ate 32 faca
      se (v[i]<v[j]) entao
         aux:=v[i]
         v[i]:=v[j]
         v[j]:=aux
      fimse
   fimpara
fimpara

k:=1
para i de 1 ate 4 faca
   para j de 1 ate 4 faca
      m3[i,j]:=v[k]
      k:=k+1
   fimpara
fimpara
escreval
escreval("---------------------------------------")
escreval("  GERANDO TERCEIRA MATRIZ  ")
escreval("---------------------------------------")
escreval
para i de 1 ate 4 faca
   para j de 1 ate 4 faca
      escreva(m3[i,j])
      se (j=4) entao
         escreval
      fimse

   fimpara
fimpara




fimalgoritmo
