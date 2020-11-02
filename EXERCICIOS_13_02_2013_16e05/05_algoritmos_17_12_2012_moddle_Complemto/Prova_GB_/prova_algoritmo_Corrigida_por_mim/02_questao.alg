algoritmo "Questao_02"
// Função :
// Autor :WILLIAM GOULART PACHECO
// Data : 28/11/2012
// Seção de Declarações
var
m:vetor[1..3,1..3] de inteiro
i,j,cont:inteiro
media,acum:real
inicio
// Seção de Comandos
acum:=0
cont:=0
para i de 1 ate 3 faca
   para j de 1 ate 3 faca
      escreva("informe um numero para M[",i,",",j,"] .: ")
      leia(m[i,j])
      acum:=acum+m[i,j]
      cont:=cont+1
   fimpara
fimpara

media:=acum/cont

para i de 1 ate 3 faca
   para j de 1 ate 3 faca
      se (m[i,j]=media) entao
         m[i,j]:=0
      senao
         se (m[i,j]>media) entao
            m[i,j]:=1
         senao
            se (m[i,j]<media) entao
               m[i,j]:=-1
            fimse
         fimse
      fimse
   fimpara
fimpara

escreval
escreval("--------------------------------------------")
escreval("             GERANDO MATRIZ")
escreval("--------------------------------------------")
escreval

para i de 1 ate 3 faca
   para j de 1 ate 3 faca
      escreva(m[i,j])
      se (j=3) entao
         escreval
      fimse
   fimpara
fimpara

fimalgoritmo
