algoritmo "List_Ex_66de75"
//arquivo "C:\Users\WILLIAM\Desktop\66_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//66. Escreva um m�dulo que a partir de uma palavra recebida,
//exiba as letras que estejam nas posi��es �mpares.
//Exemplo: para a palavra Borboleta, exibir Broea.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Se��o de Declara��es
var
palavra1,palavra2,palavra3:caracter
i,tamanho:inteiro

inicio
leia(palavra1)
tamanho:=compr(palavra1)


para i de 1 ate tamanho faca
   se (i mod 2 <> 0 ) entao
      palavra2:=copia(palavra1,i,1)
      palavra3:=palavra3+palavra2
   fimse
fimpara

escreval
escreval("----------------------------------------------")
escreval("As posi�oes impares da palavra  ",palavra1,"Gerou .: ",palavra3)

fimalgoritmo
