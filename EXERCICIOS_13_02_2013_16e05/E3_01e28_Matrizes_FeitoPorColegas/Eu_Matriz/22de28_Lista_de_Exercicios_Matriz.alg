algoritmo "List_Ex_22de28"
//arquivo "C:\Users\WILLIAM\Desktop\22_28Exercicio.txt"
// Função :
// Autor : WILLIAM GOULART
// Data : 22/10/2012
// Seção de Declarações
//22. Escreva uma matriz com 5 linhas e 5 colunas e diga o menor número da
//diagonal secundária.
var
m: vetor [1..5,1..5] de real
v: vetor [1..5] de real
i,j,k: inteiro
men : real
inicio
k:=5
para i de 1 ate 5 faca
   para j de 1 ate 5 faca
      escreva("Informe um valor para m[", i,",", j,"] : ")
      leia(m[i,j])
      se (j=k) entao
         v[i]:=m[i,k]
         se (i=1) entao
            men:=v[i]
         senao
            se (v[i]<men) entao
               men:=v[i]
            fimse
         fimse
      fimse
   fimpara
   k:=k-1
fimpara
escreval
escreval("-------------------------------------------------------")
escreval

escreva("A matriz é: ")
escreval
para i de 1 ate 5 faca
   escreval
   para j de 1 ate 5 faca
      escreva (m[i,j]," ")
   fimpara
fimpara
escreval
escreval("-------------------------------------------------------")
escreval
escreval("O menor valor acima da diagonal secundaria é: ",men)
escreval
escreval("-------------------------------------------------------")
escreval
fimalgoritmo
