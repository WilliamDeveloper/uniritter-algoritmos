algoritmo "List_Ex_13de15"
// Fun��o :
// ===================================================
// 13) Escrever um algoritmo que permita o gerenciamento de
// reservas numa casa de espet�culos. Existem 30 mesas, cada
// uma com 5 lugares dispon�veis. O algoritmo deve permitir
// que o usu�rio escolha a mesa desejada (de 1 a 30) e indique
// a quantidade de lugares necess�rios. O algoritmo deve informar
// se a reserva foi ou n�o realizada. O algoritmo deve ser
// encerrado quando o usu�rio digitar o n�mero da mesa igual
// a zero (Adaptado de Lopes & Garcia, 2002).
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Se��o de Declara��es
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
