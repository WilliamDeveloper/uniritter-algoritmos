algoritmo "List_Ex_06de28"
//arquivo "C:\Users\WILLIAM\Desktop\06_28Exercicio.txt"
// Função :
// Autor : WILLIAM GOULART
// Data : 22/10/2012
// Seção de Declarações
//6. Faça uma Matriz 3x3 que compare e mostre no final os valores MAIORES que
//10.
var
m : vetor[1..3,1..3] de real
i,j,c:inteiro
inicio

c:=0

para i de 1 ate 3 faca
   para j de 1 ate 3 faca

      escreva ("Digite o valor para a MATRIZ:")
      leia (m[i,j])

   fimpara
fimpara

para i de 1 ate 3 faca
   para j de 1 ate 3 faca
      se (m[i,j]>10) entao
         c:=c+1
      fimse
   fimpara
fimpara

escreva ("A quantidade  maior que 10 é:", c)    // Impressão do Resultado

fimalgoritmo
