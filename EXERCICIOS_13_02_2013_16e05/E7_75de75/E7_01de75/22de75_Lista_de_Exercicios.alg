algoritmo "List_Ex_22de75"
//arquivo "C:\Users\WILLIAM\Desktop\22_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//22. Escreva um algoritmo que permita a leitura das notas
//de uma turma de 20 alunos. Calcular a m�dia da turma
//e contar quantos alunos obtiveram nota acima desta m�dia calculada.
// Escrever a m�dia da turma e o resultado da contagem.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Se��o de Declara��es
var
aluno:vetor[1..20] de real
media,acum:real
i,contaluno,contacima:inteiro

inicio
acum:=0
contaluno:=0
para i de 1 ate 20 faca
   escreva("informe a nota da turma do aluno[",i,"] .: ")
   leia(aluno[i])
   acum:=acum+aluno[i]
   contaluno:=contaluno+1
fimpara

media:=acum/contaluno

para i de 1 ate 20 faca
   se (aluno[i]>media) entao
      contacima:=contacima+1
   fimse

fimpara

escreval("A media da turma � ",media," e o numero de aluno acima da media � ",contacima)

fimalgoritmo
