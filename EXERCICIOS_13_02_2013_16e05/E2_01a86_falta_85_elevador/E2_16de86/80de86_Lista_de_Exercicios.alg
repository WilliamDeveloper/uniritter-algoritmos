algoritmo "List_Ex_80de86"
//arquivo "C:\Users\WILLIAM\Desktop\80_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//80. Para cada aluno de um determinado curso ler o n�mero
//de sua matr�cula e sua nota. Imprimir o n�mero do aluno
//e seu conceito, de acordo com a tabela abaixo:
//[0..5): fraco
//[5..7): regular
//[7..9): bom
//[9..10]: muito bom
//O algoritmo deve terminar quando for informado um n�mero
//de matr�cula negativo para o aluno.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Se��o de Declara��es
var

matricula:inteiro
nota:real
conceito:inteiro

inicio

repita
   escreval
   escreval("------------------------------------------------")
   escreva("Informe o numero de matricula do aluno : ")
   leia(matricula)

   se (matricula>=0) entao
      repita
         escreva("Informe a nota do aluno : ")
         leia(nota)
      ate (nota>=0)E(nota<=10)

      escolha (nota)
      caso 0 ate 4
         escreval("O Aluno recebeu conceito de FRACO")
      caso 5 ate 6
         escreval("O Aluno recebeu conceito de REGULAR")
      caso 7 ate 8
         escreval("O Aluno recebeu conceito de BOM")
      caso 9 ate 10
         escreval("O Aluno recebeu conceito de MUITO BOM")
      fimescolha

   fimse

ate (matricula<0)


fimalgoritmo
