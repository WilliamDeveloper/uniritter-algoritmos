algoritmo "Mes"
// Fun��o :
// Autor :
// Data : 13/09/2012
// Se��o de Declara��es 
var
  mes: inteiro
  resp : caracter
inicio
// Se��o de Comandos

  Repita
     Escreva ("Informe o m�s desejado: ")
     Leia (mes)
     
     Escolha (mes)
       caso 1
         escreval("janeiro")
       caso 2
         escreval("fevereiro")
       caso 3
         escreval("mar�o")
       caso 4
         escreval("abril")
       caso 5
         escreval("maio")
       caso 6
         escreval("junho")
       caso 7
         escreval("julho")
       caso 8
         escreval("agosto")
       caso 9
         escreval("setembro")
       caso 10
         escreval("outubro")
       caso 11
         escreval("novembro")
       caso 12
         escreval("dezembro")
     Outrocaso
       escreval ("M�s inv�lido.")
     FimEscolha
     
     escreva ("Deseja informar mais algum m�s? (S/N) ")
     leia (resp)
     escreval("")
   Ate resp = "N"

fimalgoritmo
