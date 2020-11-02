algoritmo "List_Ex_10de28"
//arquivo "C:\Users\WILLIAM\Desktop\10_28Exercicio.txt"
// Função :
// Autor : WILLIAM GOULART
// Data : 22/10/2012
// Seção de Declarações
//10. Elabore um algoritmo que leia uma matriz 3X3, some as linhas e conte
//quantos números maiores que 10 o usuário digitou.
var
i,j,cont : inteiro
m: vetor [1..3,1..3] de inteiro
acum:inteiro

inicio

cont:=0
acum:=0

para i de 1 ate 3 faca
   para j de 1 ate 3 faca

      escreva("Informe um numero : ")
      leia(m[i,j])
      se (m[i,j]>10) entao
         cont:= cont + 1
      fimse
   fimpara
fimpara

para i de 1 ate 3 faca
   para j de 1 ate 3 faca

      acum:= acum + m[i,j]

   fimpara
fimpara

escreval(" a soma das linhas",acum)
escreval("O usuario digitou ",cont," maiores que 10")

fimalgoritmo
