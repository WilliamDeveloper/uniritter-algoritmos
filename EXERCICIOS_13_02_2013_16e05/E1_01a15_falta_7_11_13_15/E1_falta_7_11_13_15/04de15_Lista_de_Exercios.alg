algoritmo "List_Ex_04de15"
// usando leitura apartir do txt
//arquivo "C:\Users\WILLIAM\Desktop\ex04.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
// 4) Escrever um algoritmo que lê um vetor C de 50 posições.
// Encontrar o maior e o menor elemento do vetor C
// e imprimi-los, juntamente com suas posições no vetor.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var
i,maior,menor,pmaior,pmenor:inteiro
c:vetor[1..50] de inteiro
inicio
para i de 1 ate 50 faca
   escreva("Informe um valor : ")
   leia(c[i])
   se(i=1)entao
      maior:=c[i]
      menor:=c[i]
      pmaior:=i
      pmenor:=i
   fimse
   se(c[i]>maior)entao
      maior:=c[i]
      pmaior:=i
   fimse
   se(c[i]<menor)entao
      menor:=c[i]
      pmenor:=i
   fimse
fimpara
escreval("O maior elemento do Vetor c é ",maior," e esta na posicao :",pmaior)
escreval("O menor elemento do Vetor c é ",menor," e esta na posicao :",pmenor)

fimalgoritmo
