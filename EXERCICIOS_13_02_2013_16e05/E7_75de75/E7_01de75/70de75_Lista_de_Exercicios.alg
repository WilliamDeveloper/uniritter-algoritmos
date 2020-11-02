algoritmo "List_Ex_70de75"
//arquivo "C:\Users\WILLIAM\Desktop\70_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//70. Escrever um módulo chamado triplo que recebe um
//número inteiro e retorna o triplo deste número passado
// como parâmetro.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Seção de Declarações
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
escreval("O triplo de ",valor," é ..: ",triplo)

fimalgoritmo
