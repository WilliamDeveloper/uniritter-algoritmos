algoritmo "List_Ex_49de75"
//arquivo "C:\Users\WILLIAM\Desktop\49_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//49. Uma pessoa cadastrou um conjunto de 15 registros contendo
//o nome da loje, telefone e pre�o de um eletrodom�stico.
//Desenvolver um algoritmo que permita exibir qual foi a m�dia
//dos pre�os cadastrados e uma rela��o contendo o nome e o
//telefone das lojas cujo pre�o estava abaixo da m�dia.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Se��o de Declara��es
//
//TIPO PRODUTO=registro
//    loja:caracter
//    telefone:caracter
//    preco:real
//
//fimregistro
//
var
i,j,cont:inteiro
loja:vetor[1..15] de caracter
telefone:vetor[1..15] de caracter
preco:vetor[1..15] de real
acum,media:real

inicio
cont:=0
acum:=0
para i de 1 ate 15 faca
   escreva("Informe o nome da Loja .: ")
   leia(loja[i])
   escreva("Informe o telefone da Loja .: ")
   leia(telefone[i])
   escreva("Informe o preco do eletrodomestico da Loja .: ")
   leia(preco[i])
   escreval("----------------------------------------------------")

   acum:=acum+preco[i]
   cont:=cont+1
fimpara

media:=acum/cont

escreval
escreval("----------------------------------------------------")
escreval("      LOJAS COM PRE�O ABAIXO DA MEDIA")
escreval("----------------------------------------------------")
escreval


para i de 1 ate 15 faca
   se (preco[i]<media) entao
      escreval("Nome da loja .: ",loja[i])
      escreval("Telefone da loja .: ",telefone[i])
      escreval("Preco do eletrodomestico da loja .: ",preco[i])
      escreval("----------------------------------------------------")
   fimse
fimpara


fimalgoritmo
