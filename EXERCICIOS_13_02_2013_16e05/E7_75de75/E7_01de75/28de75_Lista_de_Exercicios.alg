algoritmo "List_Ex_28de75"
//arquivo "C:\Users\WILLIAM\Desktop\28_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//28. Faça um algoritmo para ler 10 números e armazenar em um vetor.
// Após isto, o algoritmo deve ordenar os números no vetor em ordem crescente.
// Escrever o vetor ordenado.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Seção de Declarações
var
v:vetor[1..10] de inteiro
i,j,aux:inteiro

inicio

para i de 1 ate 10 faca
   escreva("Informe um valor para v[",i,"] .: ")
   leia(v[i])
fimpara



para i de 1 ate 10-1 faca
   para j de i+1 ate 10 faca
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

para i de 1 ate 10 faca
   escreval("v[",i,"] = ",v[i])
fimpara

fimalgoritmo
