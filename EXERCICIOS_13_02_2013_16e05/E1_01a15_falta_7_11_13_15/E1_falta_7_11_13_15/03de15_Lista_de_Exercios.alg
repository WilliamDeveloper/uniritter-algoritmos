algoritmo "List_Ex_03de15"
// usando leitura apartir do txt
//arquivo "C:\Users\WILLIAM\Desktop\ex03.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
// 3) Escrever um algoritmo que lê um vetor X de 20 posições.
// Substitua a seguir todos os valores nulos (iguais a zero)
// de X por 1. No final, imprima o vetor X modificado.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var
i:inteiro
v:vetor [1..20] de inteiro
inicio
para i de 1 ate 20 faca
   escreva("Informe um valor: ")
   leia(v[i])
   se (v[i]=0) entao
      v[i]:=1
   fimse
fimpara
para i de 1 ate 20 faca
   escreval("Vetor V[",i,"]=",v[i])
fimpara
fimalgoritmo
