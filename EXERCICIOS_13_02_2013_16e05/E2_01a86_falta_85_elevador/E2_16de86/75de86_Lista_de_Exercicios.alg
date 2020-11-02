algoritmo "List_Ex_75de86"
//arquivo "C:\Users\WILLIAM\Desktop\75_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//75. (Adaptado de Ascencio & Campos, 2002). Uma companhia
// de teatro quer iniciar uma turnê de espetáculos. A direção
// calcula que a R$5,00 o ingresso, serão vendidos 120 ingressos e
//que as despesas serão de R$200,00. Diminuindo-se R$0,50 no
//preço dos ingressos esperase que as vendas aumentem
//em 26 ingressos. Escrever um algoritmo que mostre uma
//tabela de valores de lucros esperados em função do preço
//do ingresso, variando este preço de R$5,00 a R$1,00,
//de R$0,50 em R$0,50. Escrever, também, o lucro máximo
//esperado, o preço do ingresso e a quantidade de ingressos
// vendidos para a obtenção desse lucro.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var

ingresso:real
ningresso:inteiro
aningresso:inteiro
reducao:real
despesas:real
udespesa:Real
lucro:real
entrada:real
i,l:inteiro
j,k:real


inicio

despesas:=200.00
ingresso:=5.00
ningresso:=120
aningresso:=26
reducao:=0.50

udespesa:= despesas/ningresso
entrada:=ingresso*ningresso
lucro:= entrada-despesas

escreval("....[  LUCRO  ]...[INGRESSO]......[NUMERO_DE_INGRESSO]")

enquanto (ingresso>=1.00) faca

   escreval (".....R$",lucro:7:2,"......R$",ingresso:5:2,"..............",ningresso,".........")

   se (ingresso=5.00) entao
      j:=lucro
      k:=ingresso
      l:=ningresso
   senao
      se (lucro>j) entao
         j:=lucro
         k:=ingresso
         l:=ningresso
      fimse
   fimse

   ingresso:=ingresso-reducao
   ningresso:=ningresso+aningresso
   entrada:=ingresso*ningresso
   despesas:=udespesa*ningresso
   lucro:= entrada-despesas

fimenquanto

escreval
escreval("---------------------------------------------")
escreval("O lucro maximo esperado é R$",j:3:2)
escreval("O preço do ingresso desse lucro é R$",k:3:2)
escreval("A quantidade de ingressos vendidos para este lucro é:",l)



fimalgoritmo
