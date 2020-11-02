algoritmo "List_Ex_46de75"
//arquivo "C:\Users\WILLIAM\Desktop\46_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//46. Leia duas matrizes 20 x 20 e escreva os valores da
//primeira que ocorrem em qualquer posição da segunda.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Seção de Declarações
//visualg deu problemas ao tentar 20x20
var
m1:vetor[1..15,1..15] de inteiro
m2:vetor[1..15,1..15] de inteiro
i,j,k,m,flag:inteiro

inicio

para i de 1 ate 15 faca
   para j de 1 ate 15 faca
      escreva("Informe um valor para m1[",i,",",j,"] .: ")
      leia(m1[i,j])
   fimpara
fimpara
para i de 1 ate 15 faca
   para j de 1 ate 15 faca
      escreva("Informe um valor para m2[",i,",",j,"] .: ")
      leia(m2[i,j])
   fimpara
fimpara

escreval
escreval("---------------------------------------------------------------")
escreval("!!! GERANDO NUMEROS DA MATRIZ 1 QUE APARECEM na MATRIZ 2 !!!")
escreval("---------------------------------------------------------------")
escreval

para i de 1 ate 15 faca
   para j de 1 ate 15 faca
      flag:=0

      para k de 1 ate 15 faca
         para m de 1 ate 15 faca
            se (m1[i,j]=m2[k,m]) entao
               flag:=1
               interrompa
            fimse
         fimpara
      fimpara

      se (flag=1) entao
         escreval(".: ",m1[i,j])
      fimse

   fimpara
fimpara




fimalgoritmo
