algoritmo "List_Ex_34de75"
//arquivo "C:\Users\WILLIAM\Desktop\34_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//34. Leia uma matriz 10 x 10 e escreva a localiza��o
//(linha e a coluna) do maior valor.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Se��o de Declara��es
var
m:vetor[1..10,1..10] de inteiro
i,j,maior,posi,posj:inteiro
inicio
para i de 1 ate 10 faca
   para j de 1 ate 10 faca
      escreva("Informe um numero de para m[",i,",",j,"] .: ")
      leia(m[i,j])
      se (i=1)E(j=1) entao
         maior:=m[i,j]
         posi:=i
         posj:=j
      fimse
      se (m[i,j]>maior) entao
         maior:=m[i,j]
         posi:=i
         posj:=j
      fimse
   fimpara
fimpara

escreval
escreval("----------------------------------------------------------------")
escreval("O maior elemento da matriz 10x10 � ",maior)
escreval("... e se encontra na linha ",posi," e coluna ",posj)
escreval("----------------------------------------------------------------")
escreval

fimalgoritmo
