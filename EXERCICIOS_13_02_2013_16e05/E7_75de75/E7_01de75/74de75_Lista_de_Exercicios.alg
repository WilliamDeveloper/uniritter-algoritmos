algoritmo "List_Ex_74de75"
//arquivo "C:\Users\WILLIAM\Desktop\74_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//74. Escrever um m�dulo recursivo para calcular a soma
// dos n primeiros n�meros positivos.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Se��o de Declara��es
var
resultado,n:inteiro

FUNCAO somaN(numero: inteiro) : inteiro
var
soma : inteiro
inicio
Se (numero = 1) Entao
      soma:=1
Senao
   soma:= numero + somaN(numero-1)
FimSe

retorne soma
FIMFUNCAO

inicio
escreval
escreval("----------------------------------------------------")
escreval(" PROGRAMA QUE CALCULA A SOMA DO N PRIMEIROS NUMEROS ")
escreval("----------------------------------------------------")
escreval
escreval("Informe um numero ..: ")
leia(n)

se (n>0) entao
   resultado:=somaN(n)

   escreval
   escreval("--------------------------------------------------")
   escreval("A soma dos ",n," primeiro numero � ..: ",resultado)
senao
   escreval
   escreval("-------------------------------------")
   escreval("O numero digitado nao � positivo")
   escreval
fimse

fimalgoritmo
