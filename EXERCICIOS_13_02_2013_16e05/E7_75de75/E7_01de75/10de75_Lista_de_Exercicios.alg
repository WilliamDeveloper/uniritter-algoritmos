algoritmo "List_Ex_10de75"
//arquivo "C:\Users\WILLIAM\Desktop\10_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//10. Escreva um algoritmo que leia um vetor G de 10 posições
//do tipo caracter, que representa o gabarito de uma prova.
//A seguir, para cada um dos 20 alunos da turma, leia o vetor de
//respostas (R) do aluno de 10 posições do tipo caracter
//e conte o número de acertos. Mostre o nº de acertos do aluno
//e uma mensagem APROVADO, se a nota for maior ou igual a 6;
// e mostre uma mensagem de REPROVADO, caso contrário.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Seção de Declarações
var
g:vetor[1..10] de caracter
r:vetor[1..10] de caracter
i,j,acerto:inteiro
situacao:caracter

inicio
para i de 1 ate 10 faca
   repita
      escreva("Informe [A,B,C,D,E] para o gabarito da questao [",i,"] .: ")
      leia(g[i])
   ate (g[i]="a")ou(g[i]="b")ou(g[i]="c")ou(g[i]="d")ou(g[i]="e")
fimpara
acerto:=0
para i de 1 ate 20 faca
   para j de 1 ate 10 faca
      repita
         escreva("O aluno[",i,"] resposta [",j,"] .: ")
         leia(r[j])
      ate (r[j]="a")ou(r[j]="b")ou(r[j]="c")ou(r[j]="d")ou(r[j]="e")

      se (r[j]=g[j]) entao
         acerto:=acerto+1
      fimse


      se (j=10) entao
         se (acerto>=6) entao
            situacao:="APROVADO"
         senao
            situacao:="REPROVADO"
         fimse

         escreval
         escreval("---------------------------------------------------------")
         escreval("O aluno[",i,"] teve ",acerto," a certos e foi ",situacao)
         escreval("---------------------------------------------------------")
         escreval

         acerto:=0
      fimse
   fimpara
fimpara


fimalgoritmo
