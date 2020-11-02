algoritmo "List_Ex_47de75"
//arquivo "C:\Users\WILLIAM\Desktop\47_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//47. Leia uma matriz 100 x 10 que se refere a respostas
//de 10 questões de múltipla escolha, referentes a 100 alunos.
//Leia também um vetor de 10 posições contendo o gabarito d e
//respostas que podem ser a, b, c ou d. Seu programa deverá
//comparar as respostas de cada candidato com o gabarito e
//emitir um vetor Resultado, contendo a pontuação correspondente.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Seção de Declarações
var
m:vetor[1..25,1..10] de caracter
v:vetor[1..10] de caracter
vacerto:vetor[1..25] de inteiro
i,j,acerto:inteiro

//NAO FOI POSSIVEL FAZER 100X10 DEVIDO AS LIMITACOES DO VISUALG
inicio


para i de 1 ate 10 faca
   escreva(" Informe um Valor o GABARITO da questao[",i,"] .: ")
   leia(v[i])
fimpara

escreval
escreval("-----------------------------------------------")
escreval

para i de 1 ate 25 faca
   acerto:=0
   para j de 1 ate 10 faca
      escreva(" Informe um Valor para m[",i,",",j,"] .: ")
      leia(m[i,j])
      se (m[i,j]=v[j]) entao
         acerto:=acerto+1
      fimse
   fimpara
   vacerto[i]:=acerto
fimpara

escreval
escreval("-----------------------------------------------")
escreval(" GERANDO VETOR COM TOTAL DE ACERTOS DOS ALUNOS ")
escreval("-----------------------------------------------")
escreval

para i de 1 ate 25 faca
   escreval(" ALUNO[",i:2,"] ACERTOU .: ",vacerto[i]:2," QUESTOES")
fimpara




fimalgoritmo
