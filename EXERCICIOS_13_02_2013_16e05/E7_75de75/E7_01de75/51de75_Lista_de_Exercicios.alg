algoritmo "List_Ex_51de75"
//arquivo "C:\Users\WILLIAM\Desktop\51_75Exercicio.txt"
//arquivo "C:\Users\alu201220210\Desktop\ex.txt"
// Função :
// ===================================================
//51. Um provedor de acesso a internet mantém o seguinte cadastro
// de clientes: código, email, número de horas de acesso e possui página
// (S-sim ou N-não). Elaborar um algoritmo que calcule e
//mostre um relatório contendo o valor a pagar por cada cliente,
//sabendo-se que as primeiras 20 horas de acesso é R$35,00
//e as horas excedentes tem o custo de R$2,50/h.
//Para os clientes que tem página, adicionar R$40,00.
//Inserir um conjunto de no máximo 500 registros.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Seção de Declarações
//NAO FOI POSSIVEL  CRIAR REGISTRO NEM UTILIZAR O LIMITE DE 500 DEVIDO A RESTRICAO DO VISUALG
//
//TIPO CONTA=REGISTRO
//   CODIGO:INTEIRO
//   EMAIL:CARACTER
//   PAGINA:CARACTER
//   HORAS:INTEIRO
//   APAGAR:REAL
// FIMREGISTRO
//
//
//
var
codigo,email,pagina:vetor[1..10] de caracter
horas:vetor[1..10] de inteiro
apagar:vetor[1..10] de real
valor,aux:real
i,cont:inteiro
resp:caracter


inicio

i:=0
cont:=0
repita
   cont:=cont+1
   i:=i+1
   escreval
   escreval("--------------------------------------------")
   escreva("Informe o codigo do Cliente[",i,"] .: ")
   leia(codigo[i])
   escreva("Informe o email do Cliente[",i,"] .: ")
   leia(email[i])

   repita
      escreva("Informe se o Cliente[",i,"] possui pagina (S/N) .: ")
      leia(pagina[i])
   ate (pagina[i]="S")OU(pagina[i]="N")

   escreva("Informe quantas horas o Cliente[",i,"] acessou .: ")
   leia(horas[i])


   valor:=35.00

   se (horas[i]>20) entao
      aux:=(horas[i]-20)*2.50
      valor:=valor+aux
   fimse

   se (pagina[i]="S") entao
      valor:=valor+40.00
   fimse
   apagar[i]:=valor

   escreval
   escreval("--------------------------------------------")
   repita
      escreva("Deseja continuar (S/N) .: ")
      leia(resp)
   ate (resp="S")ou(resp="N")
ate (i=10)OU(resp="N")

escreval
escreval("--------------------------------------------")
escreval

para i de 1 ate cont faca
   escreval("Valor a pagar do Cliente[",i,"].: ",apagar[i]:3:2)
fimpara


fimalgoritmo
