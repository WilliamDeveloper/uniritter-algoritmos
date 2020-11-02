algoritmo "List_Ex_43de75"
//arquivo "C:\Users\WILLIAM\Desktop\43_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//43. Leia uma matriz 8x 8 e escreva o maior elemento da
//diagonal principal e a soma dos elementos da diagonal secundaria.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Seção de Declarações
var
m:vetor[1..8,1..8] de inteiro
soma,maior,i,j:inteiro

inicio

para i de 1 ate 8 faca
   para j de 1 ate 8 faca
      escreva("Informe um numero para m[",i,",",j,"] .: ")
      leia(m[i,j])
   fimpara
fimpara

escreval
escreval("-----------------------------------------------------")
escreval("         MOSTRANDO DIAGONAL PRINCIPAL")
escreval("-----------------------------------------------------")
escreval
para i de 1 ate 8 faca
   para j de 1 ate 8 faca
      se (i=j) entao
         se (i=1) entao
            maior:=m[i,j]
         fimse
         se (m[i,j]>maior) entao
            maior:=m[i,j]
         fimse
         escreva(m[i,j]:5)
      fimse
   fimpara
fimpara


soma:=0
i:=0
j:=9
escreval
escreval("-----------------------------------------------------")
escreval("         MOSTRANDO DIAGONAL SECUNDARIA")
escreval("-----------------------------------------------------")
escreval
repita
   i:=i+1
   j:=j-1
   escreva(m[i,j]:5)
   soma:=soma+m[i,j]
ate i=8

escreval
escreval
escreval("-----------------------------------------------------")
escreval("         MOSTRANDO A MATRIZ")
escreval("-----------------------------------------------------")
escreval


para i de 1 ate 8 faca
   para j de 1 ate 8 faca
      escreva(m[i,j]:5)
   fimpara
   escreval
fimpara



escreval
escreval

escreval("o maior elemento da diagonal principal é .: ",maior)
escreval("A soma dos elementos da diagonal secundaria é .: ",soma)


fimalgoritmo
