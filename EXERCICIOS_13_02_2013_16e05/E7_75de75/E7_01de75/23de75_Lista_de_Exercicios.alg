algoritmo "List_Ex_23de75"
//arquivo "C:\Users\WILLIAM\Desktop\23_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//23. Ler um vetor Q de 20 posi��es (aceitar somente n�meros positivos).
// Escrever a seguir o valor do maior elemento de Q e
//a respectiva posi��o que ele ocupa no vetor.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Se��o de Declara��es
var
q:vetor[1..20] de inteiro
maior,vpos,i:inteiro

inicio


para i de 1 ate 20 faca
   repita
      escreva("Informe um numero para Q[",i,"] .: ")
      leia(q[i])
   ate q[i]>0
   se (i=1) entao
      maior:=q[i]
      vpos:=i
   fimse
   se (q[i]>maior) entao
      maior:=q[i]
      vpos:=i
   fimse

fimpara


escreval("O maior elemento do vetor Q � ",maior," e ele ocupa a posicao ",vpos)

fimalgoritmo
