algoritmo "List_Ex_44de75"
arquivo "C:\Users\WILLIAM\Desktop\44_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//44. Leia uma matriz 6 x 6 e atribuir o valor 0 para os valores negativos
// encontrados fora das diagonais principal e secundaria.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Seção de Declarações
var
m:vetor[1..6,1..6] de inteiro
i,j:inteiro

inicio
para i de 1 ate 6 faca
   para j de 1 ate 6 faca
      escreva("Informe um numero para m[",i,",",j,"] .: ")
      leia(m[i,j])
   fimpara
fimpara

para i de 1 ate 6 faca
   para j de 1 ate 6 faca
      se (i/j=1) entao //i e j iguais i=j
         m[i,j]:=m[i,j]
      senao
         se (i+j=7) entao  //matriz secundaria i+j= 1 numero a mais que o para
            m[i,j]:=m[i,j]
         senao
            se (m[i,j]<0) entao
               m[i,j]:=0
            fimse
         fimse
      fimse
   fimpara
fimpara


para i de 1 ate 6 faca
   para j de 1 ate 6 faca
      escreva(m[i,j]:5)
   fimpara
   escreval
fimpara

fimalgoritmo
