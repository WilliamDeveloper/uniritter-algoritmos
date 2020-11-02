algoritmo "List_Ex_75de75"
//arquivo "C:\Users\WILLIAM\Desktop\75_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//75. Escreva um módulo recursivo para calcular o n-ésimo
//termo da série de Fibonacci. A série de Fibonacci é uma
// sequência definida pela fórmula abaixo:
//
//F(n) = 0, se n = 0
//F(n) = 1, se n = 1
//F(n) = F(n-1) + F(n-2) para os demais valores de n
//Exemplo: F(10) = 55
//
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Seção de Declarações
var
termo,resultado:inteiro
FUNCAO fibonaci(numero:inteiro):inteiro
var
result:inteiro
inicio

se (numero = 0) entao
   result:=numero
senao
   se (numero = 1) entao
      result:=numero
   senao
      result:=fibonaci(numero-1)+fibonaci(numero-2)
   fimse
fimse

retorne(result)
FIMFUNCAO

inicio

escreval("Informe um numero entre de 0 a 20 para adivinhar o fibonaci ..: ")
leia(termo)
resultado:=fibonaci(termo)
escreval
escreval("------------------------------------------------------------------")
escreval("O ",termo," termo da serie fibonaci é .: ", resultado)

fimalgoritmo
