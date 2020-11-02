algoritmo "List_Ex_39de75"
//arquivo "C:\Users\WILLIAM\Desktop\39_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//39. Leia uma matriz 4 x 4 e troque os valores da 1ª.linha
// pelos da 4ª.coluna, vice-e-versa. Escrever ao final a matriz obtida.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Seção de Declarações
var
m:vetor[1..4,1..4] de inteiro
aux:vetor[1..4,1..4] de inteiro
i,j,n:inteiro
inicio

para i de 1 ate 4 faca
   para j de 1 ate 4 faca
      escreva("informe um numero para m[",i,",",j,"] .: ")
      leia(m[i,j])
   fimpara
fimpara

escreval
escreval("-------------------------------------------------")
escreval("  ANTES DA MODIFICACAO  ")
escreval("-------------------------------------------------")
escreval


para i de 1 ate 4 faca
   para j de 1 ate 4 faca
      escreva(m[i,j])
      se (j=4) entao
         escreval
      fimse
   fimpara
fimpara

n:=5
para i de 1 ate 4 faca
   n:=n-1
   para j de 1 ate 4 faca
      aux[j,n]:=m[i,j])
   fimpara
fimpara

para i de 1 ate 4 faca
   para j de 1 ate 4 faca
      m[i,j]:=aux[i,j]
   fimpara
fimpara


escreval
escreval("-------------------------------------------------")
escreval("  DEPOIS DA MODIFICACAO  ")
escreval("-------------------------------------------------")
escreval

para i de 1 ate 4 faca
   para j de 1 ate 4 faca
      escreva(m[i,j])
      se (j=4) entao
         escreval
      fimse
   fimpara
fimpara



fimalgoritmo
