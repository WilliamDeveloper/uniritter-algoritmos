algoritmo "List_Ex_45de75"
//arquivo "C:\Users\WILLIAM\Desktop\45_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//45. Leia uma matriz 50 x 2, onde cada coluna corresponde
//a um lado de um triangulo retângulo. Declare um vetor que
//contenha a área dos respectivos triângulos e o escreva.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Seção de Declarações
var
m:vetor[1..50,1..2] de inteiro
v:vetor[1..50] de real
i,j:inteiro

inicio

para i de 1 ate 50 faca
   para j de 1 ate 2 faca
      se (j=1) entao
         escreva("Informe um Valor para a base do Triangulo Retângulo[",i,"] .: ")
      senao
         escreva("Informe um Valor para a altura do Triangulo Retângulo[",i,"] .: ")
      fimse
      leia(m[i,j])
   fimpara
   v[i]:=(m[i,1]*m[i,2])/2
fimpara

escreval
escreval("---------------------------------------------------------")
escreval("       !!! GERANDO AREA DO TRIANGULO RETANGULO !!!! ")
escreval("---------------------------------------------------------")
escreval
para i de 1 ate 50 faca

   escreval("BASE .:",m[i,1]:5,"  ALTURA .:",m[i,2]:5,"  Tem área .:",v[i]:5)

fimpara

fimalgoritmo
