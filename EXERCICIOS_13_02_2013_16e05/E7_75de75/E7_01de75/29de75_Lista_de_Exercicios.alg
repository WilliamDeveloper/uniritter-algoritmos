algoritmo "List_Ex_29de75"
//arquivo "C:\Users\WILLIAM\Desktop\29_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//29. O mesmo exercício anterior, mas depois de ordenar
//os elementos do vetor em ordem crescente, deve ser lido
//mais um número qualquer e inserir esse novo número na posição correta,
//ou seja, mantendo a ordem crescente do vetor.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Seção de Declarações
var
v:vetor[1..11] de inteiro
i,j,n,aux:inteiro

inicio

n:=0
para i de 1 ate 10 faca
   escreva("Informe um valor para v[",i,"] .: ")
   leia(v[i])
   n:=n+1
fimpara



para i de 1 ate n-1 faca
   para j de i+1 ate n faca
      se (v[i]>v[j]) entao
         aux:=v[i]
         v[i]:=v[j]
         v[j]:=aux
      fimse
   fimpara
fimpara

escreval("-------------------------------------")
escreval("  GERANDO VETOR ORDENADO CRESCENTE ")
escreval("-------------------------------------")

para i de 1 ate n faca
   escreval("v[",i,"] = ",v[i])
fimpara

n:=n+1
escreva("escreva um numero .: ")
leia(v[n])

para i de 1 ate n-1 faca
   para j de i+1 ate n faca
      se (v[i]>v[j]) entao
         aux:=v[i]
         v[i]:=v[j]
         v[j]:=aux
      fimse
   fimpara
fimpara

escreval("-------------------------------------")
escreval("  GERANDO VETOR ORDENADO CRESCENTE ")
escreval("-------------------------------------")

para i de 1 ate n faca
   escreval("v[",i,"] = ",v[i])
fimpara

fimalgoritmo
