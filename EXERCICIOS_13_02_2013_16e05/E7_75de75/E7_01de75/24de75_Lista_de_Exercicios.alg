algoritmo "List_Ex_24de75"
//arquivo "C:\Users\WILLIAM\Desktop\24_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//24. O mesmo exerc�cio anterior, mas agora deve escrever 
//o menor elemento do vetor e a respectiva posi��o dele nesse vetor.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Se��o de Declara��es
var
q:vetor[1..20] de inteiro
menor,vpos,i:inteiro

inicio


para i de 1 ate 20 faca
   repita
      escreva("Informe um numero para Q[",i,"] .: ")
      leia(q[i])
   ate q[i]>0
   se (i=1) entao
      menor:=q[i]
      vpos:=i
   fimse
   se (q[i]<menor) entao
      menor:=q[i]
      vpos:=i
   fimse

fimpara


escreval("O menor elemento do vetor Q � ",menor," e ele ocupa a posicao ",vpos)

fimalgoritmo
