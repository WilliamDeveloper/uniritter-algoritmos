algoritmo "List_Ex_77de86"
//arquivo "C:\Users\WILLIAM\Desktop\77_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//77. Escrever um algoritmo que l� um n�mero n�o determinado
//de valores para M, todos inteiros e positivos, um de cada vez.
// Verificar se o valor M � par ou �mpar, escrevendo a
//mensagem correspondente. Contar o n�mero de valores �mpares
//lidos e calcular a soma dos valores pares. No final,
// escrever o contador e a soma calculados.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Se��o de Declara��es
var

m:inteiro
impar,soma:inteiro

inicio

impar:=0
soma:=0

repita
   escreval("Informe o valor um Valor : ")
   leia(m)
   se (m>=0) entao

      se (m mod 2 = 0) entao
         soma:=soma+m
      senao
         impar:=impar+1
      fimse

   fimse

ate (m<0)

escreval
escreval("--------------------------------------")
escreval("O contador de numeros impar � :",impar)
escreval("A soma dos numeros pares � :",soma)


fimalgoritmo
