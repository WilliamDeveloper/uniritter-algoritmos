algoritmo "List_Ex_30de86"
//arquivo "C:\Users\WILLIAM\Desktop\30_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//30. Escrever um algoritmo que l� um caracter e testa se � vogal.
//Se for vogal escrever o caracter lido e a mensagem correspondente,
//caso contr�rio escrever "n�o � vogal".
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Se��o de Declara��es
var

letra:caracter

inicio
escreval("Informe uma letra: ")
leia(letra)

escolha (letra)
caso "a","e","i","o","u"
   escreval ("O caracter digitado [",letra,"] � uma vogal.")
outrocaso
   escreval ("O caracter digitado [",letra,"] N�O � uma vogal.")
fimescolha


fimalgoritmo
