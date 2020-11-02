algoritmo "List_Ex_30de75"
//arquivo "C:\Users\WILLIAM\Desktop\30_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//30. Faça um algoritmo para ler um vetor de 20 números.
//Após isto, deverá ser lido mais um número qualquer e
//verificar se esse número existe no vetor ou não.
//Se existir, o algoritmo deve gerar um novo vetor sem esse número.
//(Considere que não haverão números repetidos no vetor).
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Seção de Declarações
var
v:vetor[1..20] de inteiro
novov:vetor[1..20] de inteiro
i,j,busca,flag:inteiro

inicio
para i de 1 ate 20 faca
   escreva("Informe um numero para v[",i,"] .: ")
   leia(v[i])
fimpara
escreva("Informe um numero que deseja buscar no vetor .: ")
leia(busca)

flag:=0
para i de 1 ate 20 faca
   se( v[i]=busca) entao
      flag:=1
   fimse
fimpara

j:=1
se (flag=1) entao
   para i de 1 ate 20 faca
      se( v[i]<>busca) entao
         novov[j]:=v[i]
         j:=j+1
      fimse
   fimpara
   escreval
   escreval("--------------------------------------")
   escreval("       !!! NÚMERO ENCONTRADO !!!")
   escreval("--------------------------------------")
   escreval
   escreval("--------------------------------------")
   escreval(" GERANDO NOVO VETOR  ")
   escreval("--------------------------------------")
   escreval
   para i de 1 ate j-1 faca
      escreval("novov[",i,"] = ",novov[i])
   fimpara

senao
   escreval
   escreval("--------------------------------------")
   escreval(" !!! NÚMERO NÃO ENCONTRADO !!!")
   escreval("--------------------------------------")
   escreval
fimse



fimalgoritmo
