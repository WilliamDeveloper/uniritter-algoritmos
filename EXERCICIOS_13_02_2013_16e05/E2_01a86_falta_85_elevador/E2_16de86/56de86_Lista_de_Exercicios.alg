algoritmo "List_Ex_56de86"
//arquivo "C:\Users\WILLIAM\Desktop\56_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//56. Escrever um algoritmo que l� e imprime uma s�rie
//de 15 n�meros quaisquer. Contar quantos deles s�o menores
//que 50. No final imprimir a mensagem "menores que 50" e a
//quantidade de valores menores.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Se��o de Declara��es
var

i,cont:inteiro
numero:real



inicio

cont:=0

para i de 1 ate 15 faca

   escreval("Informe um valor")
   leia(numero)

   se   (numero<50) entao
      cont:=cont+1
   fimse

fimpara

escreval
escreval("------------------------")
escreval("MENORES QUE 50 : ",cont)


fimalgoritmo
