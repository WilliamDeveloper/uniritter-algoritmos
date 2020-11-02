algoritmo "List_Ex_20de75"
//arquivo "C:\Users\WILLIAM\Desktop\20_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//20. Uma locadora de vídeos tem guardada, em um vetor de 50 posições,
//a quantidade de filmes retirados por seus clientes durante o ano de 2004.
// Agora, esta locadora está fazendo uma promoção e,
//para cada 10 filmes retirados, o cliente tem direito a uma locação grátis.
//Faça um algoritmo que crie outro vetor contendo a quantidade de
//locações gratuitas a que cada cliente tem direito.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Seção de Declarações
var
v1:vetor[1..50] de inteiro
v2:vetor[1..50] de inteiro
i:inteiro

inicio

para i de 1 ate 50 faca
   escreva("Informe quantos filmes foram retirados  pelo cliente [",i,"] .: ")
   leia(v1[i])
   se (v1[i]>=10) entao
      v2[i]:=v1[i] div 10
   senao
      v2[i]:=0
   fimse
fimpara

para i de 1 ate 50 faca
   escreval("O cliente retirou",v1[i]," filmes e tem direito a ",v2[i]," locações grátis.")
fimpara



fimalgoritmo
