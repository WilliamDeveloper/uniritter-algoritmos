algoritmo "List_Ex_19de28"
//arquivo "C:\Users\WILLIAM\Desktop\19_28Exercicio.txt"
// Fun��o :
// Autor : WILLIAM GOULART
// Data : 22/10/2012
// Se��o de Declara��es 

//19. Crie uma atriz 3x3 , onde a primeira linha armazene 3 n�meros digitado pelo
//usu�rio, a segunda linha seja o quadrado somado a 5 da primeira e a terceira
//linha seja a subtra��o da segunda pela primeira.

//gabarito
//valores fornecidos 1 2 3
//resultado que deve ser obtido :
// 1 2 3       primeira linha numeros digitados
//6 9 14  quadrado somado a 5
//-5 -7 -11       subtracao da primeira com a segunda

var


i,k,j,l:inteiro
m:vetor[1..3,1..3] de inteiro


inicio

k:=1
l:=2

para i de 1 ate 3 faca
   para j de 1 ate 3 faca
      se (i=1) entao
         escreval("informe um valor :")
         leia(m[i,j])
      senao
         se (i=2) entao
            m[i,j]:= (m[k,j]*m[k,j])+5
            senao
            m[i,j]:=m[k,j]-m[l,j]
         fimse
      fimse

   fimpara
fimpara

para i de 1 ate 3 faca
   para j de 1 ate 3 faca
      se (j=1) entao
         escreval
      fimse
      escreva(m[i,j])
   fimpara
fimpara


fimalgoritmo
