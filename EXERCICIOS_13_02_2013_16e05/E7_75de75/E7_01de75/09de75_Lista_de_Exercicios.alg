algoritmo "List_Ex_09de75"
//arquivo "C:\Users\WILLIAM\Desktop\09_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//9. Escreva um algoritmo que leia um vetor inteiro de 12 posições
//e crie um segundo vetor, substituindo os valores nulos por 1.
//Mostre os 2 vetores.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Seção de Declarações
var
v1:vetor[1..12] de inteiro
v2:vetor[1..12] de inteiro
i:inteiro
inicio
para i de 1 ate 12 faca
   escreva("Informe um numero .: ")
   leia(v1[i])
   se (v1[i]=0) entao
      v2[i]:=1
   senao
      v2[i]:=v1[i]
   fimse
fimpara

escreval
escreval("-----------------------------")
escreval("       GERANDO VETOR V1")
escreval("-----------------------------")
escreval
para i de 1 ate 12 faca
   escreval(v1[i])
fimpara

escreval
escreval("-----------------------------")
escreval("       GERANDO VETOR V2")
escreval("-----------------------------")
escreval

para i de 1 ate 12 faca
   escreval(v2[i])
fimpara

fimalgoritmo
