algoritmo "List_Ex_64de75"
//arquivo "C:\Users\WILLIAM\Desktop\64_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//64. Escreva um m�dulo que a partir de uma palavra recebida,
//exiba-a ao contr�rio e totalmente em letras min�sculas.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Se��o de Declara��es
var
palavra1,palavra2,palavra3:caracter
p,tamanho,i:inteiro
inicio
escreva("Informe uma palavra .: ",palavra1)
leia(palavra1)
tamanho:=compr(palavra1)
para i de tamanho ate 1 passo -1 faca
   palavra2:=copia(palavra1,i,1)
   palavra3:=palavra3+palavra2
fimpara

palavra3:=minusc(palavra3)
escreval
escreval("---------------------------------------------------")
escreval("A palavra ",palavra1," se tornou ",palavra3)


fimalgoritmo
