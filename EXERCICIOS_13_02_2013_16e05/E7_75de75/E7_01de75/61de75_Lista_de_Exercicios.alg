algoritmo "List_Ex_61de75"
//arquivo "C:\Users\WILLIAM\Desktop\61_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//61. Elabore um algoritmo que leia tr�s n�meros e imprima
//o maior deles, utilizando um m�dulo que avaliar� o maior entre
//dois n�meros somente. Nenhuma instru��o condicional (se) pode
// existir no algoritmo principal.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Se��o de Declara��es
var

a,b,c,maior,fmaior:real
i:inteiro

FUNCAO achaMaior(a,b,c:real):real

inicio
fmaior:=a

se (b>fmaior) entao
   fmaior:=b
fimse

se (c>fmaior) entao
   fmaior:=c
fimse

retorne (fmaior)
FIMFUNCAO

inicio

escreval("Informe um valor para A B C .: ")
leia(a,b,c)

maior:=achaMaior(a,b,c)
escreval("O maior numero � .: ",maior)

fimalgoritmo
