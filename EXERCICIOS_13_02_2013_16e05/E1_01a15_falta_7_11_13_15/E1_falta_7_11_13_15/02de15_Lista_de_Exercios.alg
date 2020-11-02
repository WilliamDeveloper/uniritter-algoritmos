algoritmo "List_Ex_02de15"
// usando leitura apartir do txt
//arquivo "C:\Users\WILLIAM\Desktop\ex02.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
// 2) Escrever um algoritmo que lê um vetor V, de 15 posições,
// e conte quantos valores de V são  negativos.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var
i,cont:inteiro
v:vetor[1..15] de inteiro
inicio
cont:=0
para i de 1 ate 15 faca
   escreva("Informe um numero: ")
   leia(v[i])
fimpara

para i de 1 ate 15 faca
   se v[i]<0 entao
      cont:=cont+1
   fimse
fimpara
escreval ("Foram lidos ", cont, " números negativos")
fimalgoritmo
