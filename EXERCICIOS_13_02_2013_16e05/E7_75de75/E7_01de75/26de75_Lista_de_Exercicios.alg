algoritmo "List_Ex_26de75"
//arquivo "C:\Users\WILLIAM\Desktop\26_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//26. Faça um algoritmo para ler 20 números e armazenar em um vetor.
// Após a leitura total dos 20 números, o algoritmo deve
//escrever esses 20 números lidos na ordem inversa.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Seção de Declarações
var
v:vetor[1..20] de inteiro
i:inteiro
inicio

para i de 1 ate 20 faca
   escreva("Informe um numero para v[",i,"] .: ")
   leia(v[i])
fimpara

escreval
escreval("-----------------------------------")
para i de 20 ate 1 passo -1 faca
   escreval(v[i])
fimpara
escreval("-----------------------------------")
escreval




fimalgoritmo
