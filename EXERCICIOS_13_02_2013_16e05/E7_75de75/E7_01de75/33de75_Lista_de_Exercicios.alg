algoritmo "List_Ex_33de75"
//arquivo "C:\Users\WILLIAM\Desktop\33_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//33. Fa�a um algoritmo para ler 50 n�meros e armazenar
// em um vetor VET, verificar e escrever se existem n�meros
//repetidos no vetor VET e em que posi��es se encontram.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Se��o de Declara��es
var
vet:vetor[1..50] de inteiro
i,j,flag:inteiro
inicio


para i de 1 ate 50 faca
   escreva("Informe um numero para VET[",i,"] .: ")
   leia(vet[i])
fimpara
escreval
escreval("--------------------------------------------------------------------")
escreval
para i de 1 ate 50 faca
   para j de 1 ate 50 faca
      se (vet[i]=vet[j])E(i<>j) entao
         escreval("Existe numeros igual a ",vet[i]," da posicao vet[",i,"] , na posicao vet[",j,"] .")
      fimse

   fimpara
fimpara


fimalgoritmo
