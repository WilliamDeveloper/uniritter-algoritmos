algoritmo "List_Ex_56de86"
//arquivo "C:\Users\WILLIAM\Desktop\56_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//56. Escrever um algoritmo que lê e imprime uma série
//de 15 números quaisquer. Contar quantos deles são menores
//que 50. No final imprimir a mensagem "menores que 50" e a
//quantidade de valores menores.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
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
