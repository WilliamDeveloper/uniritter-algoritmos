algoritmo "List_Ex_03de75"
//arquivo "C:\Users\WILLIAM\Desktop\03_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//3. Elaborar um algoritmo que lê um conjunto de 30 valores
//e os coloca em 2 vetores conforme os valores forem pares ou ímpares.
//O tamanho do vetor é de 5 posições.
//Se algum vetor estiver cheio, escrevê-lo.
//Terminada a leitura escrever o conteúdo dos dois vetores.
// Cada vetor pode ser preenchido tantas vezes quantas forem necessárias.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Seção de Declarações
var
par:vetor[1..5] de inteiro
impar:vetor[1..5] de inteiro
i,j,k,numero:inteiro

inicio
j:=1
k:=1
para i de 1 ate 30 faca
   escreva("Informe um numero .: ")
   leia(numero)
   se (numero mod 2 =0) entao
      se (j>5) entao
         escreval("Vetor PAR esta CHEIO")

         escreval
         escreval("------------------------------")
         escreval("        GERANDO VETOR PAR")
         escreval("------------------------------")
         escreval

         para j de 1 ate 5 faca
            escreval(" par[", j, "] = ", par[j])
            par[j] := 0
         fimPara
         j:=1

      fimse
      par[j]:=numero
      j:=j+1

   senao
      se (k>5) entao
         escreval("Vetor IMPAR esta CHEIO")

         escreval
         escreval("------------------------------")
         escreval("        GERANDO VETOR IMPAR")
         escreval("------------------------------")
         escreval


         para k de 1 ate 5 faca
            escreval(" Impar[", k, "] = ", impar[k])
            impar[k] := 0
         fimPara
         k:=1

      fimse
      impar[k]:=numero
      k:=k+1
   fimse
fimpara

escreval
escreval("------------------------------")
escreval("        GERANDO VETOR PAR")
escreval("------------------------------")
escreval
para i de 1 ate j-1 faca
   escreval(par[i])
fimpara

escreval
escreval("------------------------------")
escreval("        GERANDO VETOR IMPAR")
escreval("------------------------------")
escreval

para i de 1 ate k-1 faca
   escreval(impar[i])
fimpara


fimalgoritmo
