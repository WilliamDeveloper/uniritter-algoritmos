algoritmo "List_Ex_40de86"
//arquivo "C:\Users\WILLIAM\Desktop\40_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//40. Escrever um algoritmo que leia o destino de um passageiro
//(conforme tabela abaixo), se a viagem inclui retorno (ida e volta)
// e calcule o preço da passagem a ser adquirida
//(Adaptado de Lopes & Garcia, 2002):
//Destino Ida Ida e Volta
//Região Norte R$500,00 R$900,00
//Região Nordeste R$350,00 R$650,00
//Região Centro-Oeste R$350,00 R$600,00
//Região Sul R$300,00 R$550,00
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var

destino:inteiro
viagem:real
flag,flag2:inteiro
passagem:inteiro

inicio

flag:=0
flag2:=0

repita

   se (flag=1) entao
      escreval("================")
      escreval("NUMERO INVALIDO")
      escreval("================")
   fimse

   escreval
   escreval("-----------------------------------")
   escreval("1- Norte")
   escreval("2- Nordeste")
   escreval("3- Centro-Oeste")
   escreval("4- Sul")
   escreval
   escreval("Informe um numero de 1 a 4 : ")
   leia(destino)
   flag:=1

ate (destino>=1) E (destino<=4)

repita

   se (flag2=1) entao
      escreval("================")
      escreval("NUMERO INVALIDO")
      escreval("================")
   fimse

   escreval
   escreval("-----------------------------------")
   escreval("Informe 1 ou 2 : ")
   escreval("1- Ida")
   escreval("2- Ida e Volta")
   leia(passagem)
   flag2:=1

ate (passagem>=1) E (passagem<=2)

escolha(destino)

caso 1
   se ( passagem=1 ) entao
      viagem:=500.00
   senao
      viagem:=900.00
   fimse
caso 2
   se ( passagem=1 ) entao
      viagem:=350.00
   senao
      viagem:=650.00
   fimse
caso 3
   se ( passagem=1 ) entao
      viagem:=350.00
   senao
      viagem:=600.00
   fimse
caso 4
   se ( passagem=1 ) entao
      viagem:=300.00
   senao
      viagem:=550.00
   fimse

fimescolha


escreval
escreval("=================================================")
escreval("O preço da passagem a ser adquirida é R$",viagem:5:2)


fimalgoritmo
