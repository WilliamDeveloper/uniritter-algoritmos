algoritmo "List_Ex_16de75"
//arquivo "C:\Users\WILLIAM\Desktop\16_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//16. Faça um algoritmo que leia um vetor (A) de 100 posições.
// Em seguida, compacte o vetor, retirando os valores nulos e negativos.
//Coloque o resultado no vetor B.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Seção de Declarações
var
a:vetor[1..100] de inteiro
b:vetor[1..100] de inteiro
i,j:inteiro

inicio
j:=1
para i de 1 ate 100 faca
   escreva("Informe um valor para a[",i,"] ..: ")
   leia(a[i])
   se (a[i]<>0)E(a[i]>0) entao
      b[j]:=a[i]
      j:=j+1
   fimse
fimpara

escreval
escreval("------------------------------------------------------")
escreval("                  GERANDO VETOR A")
escreval("------------------------------------------------------")
escreval

para i de 1 ate 100 faca
   escreval(a[i])
fimpara

escreval
escreval("------------------------------------------------------")
escreval("                  GERANDO VETOR B")
escreval("------------------------------------------------------")
escreval


para i de 1 ate j-1 faca
   escreval(b[i])
fimpara

fimalgoritmo
