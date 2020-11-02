algoritmo "List_Ex_42de75"
//arquivo "C:\Users\WILLIAM\Desktop\42_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//42. Leia duas matrizes 10 x 10 e faça uma substituição entre a
//diagonal inferior da primeira coma diagonal superior da segunda.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Seção de Declarações
var
m1:vetor[1..10,1..10] de inteiro
m2:vetor[1..10,1..10] de inteiro
i,j,aux,a,b:inteiro
inicio

para i de 1 ate 10 faca
   para j de 1 ate 10 faca
      escreva("Informe um numero para M2[",i,",",j,"] .: ")
      leia(m1[i,j])
   fimpara
fimpara
escreval
para i de 1 ate 10 faca
   para j de 1 ate 10 faca
      escreva("Informe um numero para M2[",i,",",j,"] .: ")
      leia(m2[i,j])
   fimpara
fimpara
escreval
escreval("----------------------------------------------------------")
escreval("                   ANTES DA TROCA ")
escreval("----------------------------------------------------------")
escreval
escreval
escreval("----------------------------------------------------------")
escreval("                   GERANDO MATRIZ M1 ")
escreval("----------------------------------------------------------")
escreval
para i de 1 ate 10 faca
   para j de 1 ate 10 faca
      escreva(m1[i,j]:5)
   fimpara
   escreval
fimpara
escreval
escreval("--------------------------------------------------------")
escreval("                  GERANDO MATRIZ M2 ")
escreval("--------------------------------------------------------")
escreval
para i de 1 ate 10 faca
   para j de 1 ate 10 faca
      escreva(m2[i,j]:5)
   fimpara
   escreval
fimpara


//troca
para i de 1 ate 10 faca
   se (i<=5) entao
      a:=11-i
      b:=i
   senao
      a:=i
      b:=11-i
   fimse
   para j de 1 ate 10 faca
      se (i=j) entao
         aux:=m1[a,j]
         m1[a,j]:=m2[b,j]
         m2[b,j]:=aux
      fimse
   fimpara
fimpara



//
escreval("----------------------------------------------------------")
escreval("                   DEPOIS DA TROCA ")
escreval("----------------------------------------------------------")
escreval
escreval
escreval("----------------------------------------------------------")
escreval("                   GERANDO MATRIZ M1 ")
escreval("----------------------------------------------------------")
escreval
para i de 1 ate 10 faca
   para j de 1 ate 10 faca
      escreva(m1[i,j]:5)
   fimpara
   escreval
fimpara
escreval
escreval("--------------------------------------------------------")
escreval("                  GERANDO MATRIZ M2 ")
escreval("--------------------------------------------------------")
escreval
para i de 1 ate 10 faca
   para j de 1 ate 10 faca
      escreva(m2[i,j]:5)
   fimpara
   escreval
fimpara





fimalgoritmo
