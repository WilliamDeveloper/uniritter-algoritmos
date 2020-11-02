algoritmo "List_Ex_48de75"
//arquivo "C:\Users\WILLIAM\Desktop\48_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//48. Dados os seguintes campos de um registro: nome, dia e mês
// de aniversário, desenvolver um algoritmo que mostre em cada
//um dos meses do ano quem são as pessoas que fazem aniversário.
// Considere um conjunto de 40 pessoas.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Seção de Declarações
//=====
//tipo data=registro
//   dia:inteiro
//   mes:inteiro
//   ano:inteiro
//fimregistro;
//
//
//
//
//
var
vdia,vmes,vano:vetor[1..40] de inteiro
i,j,mes:inteiro

PROCEDIMENTO ANIVERSARIANTE(mesi:inteiro)
inicio
escreval
escreval("Aniversariantes do mes .:",mesi)
escreval
para i de 1 ate 40 faca
   se (vmes[i]=mesi) entao
      escreval(vdia[i],"/",vmes[i],"/",vano[i])
   fimse
fimpara
FIMPROCEDIMENTO


inicio

para i de 1 ate 40 faca
   escreva(" Informe o dia da data de nascimento para a pessoa[",i,"] .: ")
   leia(vdia[i])
   escreva(" Informe o mes da data de nascimento para a pessoa[",i,"].: ")
   leia(vmes[i])
   escreva(" Informe o ano da data de nascimento para a pessoa[",i,"].: ")
   leia(vano[i])
fimpara

para mes de 1 ate 12 faca

   escolha (mes)
   caso 1
      ANIVERSARIANTE(mes)
   caso 2
      ANIVERSARIANTE(mes)
   caso 3
      ANIVERSARIANTE(mes)
   caso 4
      ANIVERSARIANTE(mes)
   caso 5
      ANIVERSARIANTE(mes)
   caso 6
      ANIVERSARIANTE(mes)
   caso 7
      ANIVERSARIANTE(mes)
   caso 8
      ANIVERSARIANTE(mes)
   caso 9
      ANIVERSARIANTE(mes)
   caso 10
      ANIVERSARIANTE(mes)
   caso 11
      ANIVERSARIANTE(mes)
   caso 12
      ANIVERSARIANTE(mes)
   fimescolha

fimpara





fimalgoritmo
