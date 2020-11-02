algoritmo "List_Ex_13de15"
// Função :
// ===================================================
// 13) Escrever um algoritmo que permita o gerenciamento de
// reservas numa casa de espetáculos. Existem 30 mesas, cada
// uma com 5 lugares disponíveis. O algoritmo deve permitir
// que o usuário escolha a mesa desejada (de 1 a 30) e indique
// a quantidade de lugares necessários. O algoritmo deve informar
// se a reserva foi ou não realizada. O algoritmo deve ser
// encerrado quando o usuário digitar o número da mesa igual
// a zero (Adaptado de Lopes & Garcia, 2002).
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var
mesa:vetor[1..30] de inteiro
//lugar:vetor[1..30] de inteiro
i,j,n,lugar,tam:inteiro
menu:caracter

inicio
tam:=5
para i de 1 ate 30 faca
   mesa[i]:=tam
fimpara

repita
   escreval("Deseja ver a lista de mesas disponiveis [S/N] ?..")
   leia (menu)

   escolha (menu)
   caso "s"
      escreval("=======================================")
      para i de 1 ate 30 faca
         se (mesa[i]<>0) entao
            escreval("mesa[",i,"] possui ",mesa[i]," lugares")
         fimse
      fimpara

   fimescolha
   escreval("=======================================")
   escreval("Informe qual mesa deseja de 1 a 30: ")
   leia(n)

   se(n<>0) entao
      escreval("Quantos lugares Precisa? ")
      leia(lugar)

      se (lugar>tam) entao
         escreval("=======================================")
         escreval("As mesas possuem apenas 5 lugares cada.")
         escreval("Reserva nao realizada.")
         escreval("=======================================")
      fimse

      se (mesa[n]>= lugar) E (lugar>0) entao
         mesa[n]:=mesa[n]-lugar
         escreval("=======================================")
         escreval("Reserva realizada..")
         escreval("=======================================")
      senao
         escreval("=======================================")
         escreval("Nenhum Lugar foi reservado..")
         escreval("=======================================")
      fimse

   fimse

ate (n=0)

escreval

fimalgoritmo
