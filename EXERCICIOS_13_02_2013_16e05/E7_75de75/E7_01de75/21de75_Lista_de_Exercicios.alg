algoritmo "List_Ex_21de75"
//arquivo "C:\Users\WILLIAM\Desktop\21_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//21. Escreva um algoritmo que permita a leitura dos nomes
//de 10 pessoas e armazene os nomes lidos em um vetor.
//Após isto, o algoritmo deve permitir a leitura de mais 1 nome
//qualquer de pessoa e depois escrever a mensagem ACHEI,
//se o nome estiver entre os 10 nomes lidos anteriormente
//(guardados no vetor), ou NÃO ACHEI caso contrário.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Seção de Declarações
var
nome:vetor[1..10] de caracter
i:inteiro
busca:caracter
achei:inteiro
inicio

para i de 1 ate 10 faca
   escreva(" Informe um nome .: ")
   leia(nome[i])
fimpara

escreva("Qual nome você procura ?  ")
leia(busca)

achei:=0
para i de 1 ate 10 faca
   se (busca=nome[i]) entao
      achei:=1
   fimse
fimpara

se (achei=1) entao
   escreval
   escreval("-----------------------------------")
   escreval("           ACHEI                   ")
   escreval("-----------------------------------")
   escreval
senao
   escreval
   escreval("-----------------------------------")
   escreval("          NÃO ACHEI                ")
   escreval("-----------------------------------")
   escreval
fimse



fimalgoritmo
