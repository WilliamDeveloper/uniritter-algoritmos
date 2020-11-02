algoritmo "List_Ex_06de15"
// usando leitura apartir do txt
//arquivo "C:\Users\WILLIAM\Desktop\ex06.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
// 6) Escrever um algoritmo que leia 10 nomes de clientes
// e 10 saldos bancários e imprima os nomes dos clientes
// que tiverem saldo inferior a R$100,00. São necessários dois
// vetores.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var
n:vetor[1..10] de caracter
s:vetor[1..10] de real
i,c:inteiro
inicio
c:=0
para i de 1 ate 10 faca
   escreva("Informe seu Nome: ")
   leia(n[i])
   escreva("Informe seu saldo: ")
   leia(s[i])
fimpara
escreval("-----------------------------------------------------")
para i de 1 ate 10 faca
   se(s[i]<100)entao
   c:=c+1
      se (c=1)entao
         escreval("os seguintes clientes possuem saldo inferior a 100 :")
      fimse
      escreval(n[i])
   fimse
fimpara
fimalgoritmo
