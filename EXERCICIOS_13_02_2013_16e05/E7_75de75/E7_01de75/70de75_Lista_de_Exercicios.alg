algoritmo "List_Ex_70de75"
//arquivo "C:\Users\WILLIAM\Desktop\70_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//70. Escrever um m�dulo chamado triplo que recebe um
//n�mero inteiro e retorna o triplo deste n�mero passado
// como par�metro.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Se��o de Declara��es
var
valor,triplo:real
FUNCAO triplon (numero:real):real
var
i:inteiro
acum:real
inicio
para i de 1 ate 3 faca
   se (i=1) entao
      acum:=1*numero
   senao
      acum:=acum*numero
   fimse
fimpara
retorne (acum)
FIMFUNCAO

inicio
escreva("Informe um valor ..: ")
leia(valor)
triplo:=triplon(valor)
escreval
escreval("------------------------------------")
escreval
escreval("O triplo de ",valor," � ..: ",triplo)

fimalgoritmo
