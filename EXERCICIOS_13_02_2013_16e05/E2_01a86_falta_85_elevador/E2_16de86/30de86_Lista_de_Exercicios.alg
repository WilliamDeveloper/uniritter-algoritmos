algoritmo "List_Ex_30de86"
//arquivo "C:\Users\WILLIAM\Desktop\30_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//30. Escrever um algoritmo que lê um caracter e testa se é vogal.
//Se for vogal escrever o caracter lido e a mensagem correspondente,
//caso contrário escrever "não é vogal".
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var

letra:caracter

inicio
escreval("Informe uma letra: ")
leia(letra)

escolha (letra)
caso "a","e","i","o","u"
   escreval ("O caracter digitado [",letra,"] é uma vogal.")
outrocaso
   escreval ("O caracter digitado [",letra,"] NÂO é uma vogal.")
fimescolha


fimalgoritmo
