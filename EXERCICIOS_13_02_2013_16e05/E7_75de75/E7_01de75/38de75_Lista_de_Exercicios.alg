algoritmo "List_Ex_38de75"
//arquivo "C:\Users\WILLIAM\Desktop\38_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//38. Leia uma matriz 20 x 20. Leia tamb�m um valor X.
// O programa dever� fazer uma busca desse valor na matriz e,
// ao final escrever a localiza��o (linha e coluna)
//ou uma mensagem de �n�o encontrado�.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Se��o de Declara��es
var
m:vetor[1..20,1..20] de inteiro
i,j,busca,posi,posj,flag:inteiro
inicio

para i de 1 ate 20 faca
   para j de 1 ate 20 faca
      escreva("Infome um numero para m[",i,",",j,"] .: ")
      leia(m[i,j])
   fimpara
fimpara

escreval("qual numero deseja buscar na matriz ?")
leia(busca)


para i de 1 ate 20 faca
   para j de 1 ate 20 faca

      se (m[i,j]=busca) entao
         posi:=i
         posj:=j
         flag:=1
      fimse
   fimpara
fimpara

se (flag=0) entao
   escreval("Valor nao encontrado")
senao
   escreval(busca," foi encontrado na linha ",posi, " e coluna ",posj)
fimse




fimalgoritmo
