algoritmo "List_Ex_10de15"
//arquivo "C:\Users\WILLIAM\Desktop\ex10.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
// 10) (Adaptado de Lopes & Garcia, 2002) Escrever um algoritmo
// que leia dois vetores de 25 posições cada um. A seguir, criar
// um terceiro vetor, intercalando os dados dos dois vetores.
// Este terceiro vetor deve ser impresso no final.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var
v1:vetor[1..25] de inteiro
v2:vetor[1..25] de inteiro
v3:vetor[1..50] de inteiro
i,cont1,cont2:inteiro

inicio
cont1:=1
cont2:=2
//leitura do primeiro vetor
para i de 1 ate 25 faca
   escreva("Informe um valor para v1: ")
   leia(v1[i])
fimpara
//leitura do segundo vetor
para i de 1 ate 25 faca
   escreva("Informe um valor para v2: ")
   leia(v2[i])
fimpara
//criando terceiro vetor...
para i de 1  ate 25 faca
   v3[cont1]:=v1[i]
   v3[cont2]:=v2[i]
   cont1:=cont1+2
   cont2:=cont2+2
fimpara

para i de 1 ate 50 faca
   se(i=1)entao
      escreval("---------------------------------------")
      escreval("!!!!!!!!!!!!GERANDO VETOR 3!!!!!!!!!!!!")
      escreval("---------------------------------------")
   fimse
   escreval("v3[",i,"]= ",v3[i])
fimpara
fimalgoritmo
