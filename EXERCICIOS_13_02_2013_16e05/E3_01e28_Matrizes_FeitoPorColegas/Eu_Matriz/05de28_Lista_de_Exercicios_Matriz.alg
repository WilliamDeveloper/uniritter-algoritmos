algoritmo "List_Ex_05de28"
//arquivo "C:\Users\WILLIAM\Desktop\05_28Exercicio.txt"
// Fun��o :
// Autor : WILLIAM GOULART
// Data : 22/10/2012
// Se��o de Declara��es
//5. Fa�a um programa que leia 4 c�digos de um setor e grade em uma matriz,
//ap�s pe�a ao usu�rio para digitar um c�digo a ser procurado na matriz e no
//final imprima a posi��o que o mesmo se encontra.
var
m : vetor [1..2, 1..2] de inteiro
i,j,x,a,b : inteiro

inicio
a:=0
b:=0
Para i de 1 ate 2 faca
   Para j de 1 ate 2 faca
      escreva("Informe um codigo de usuario para a matriz: ")
      leia(m[i,j])
   FimPara
FimPara
escreva("Informe um codigo de usuario para ser localizado: ")
leia(x)

Para i de 1 ate 2 faca
   Para j de 1 ate 2 faca
      Se (m[i,j] = x) Entao
         a:= i;
         b:= j;
      fimse
   FimPara
FimPara
escreval
escreval("----------------------------------------------------------------")
escreval("O codigo foi localizado na poisicao da Linha", a ," e coluna ", b)
escreval("----------------------------------------------------------------")
escreval
fimalgoritmo
