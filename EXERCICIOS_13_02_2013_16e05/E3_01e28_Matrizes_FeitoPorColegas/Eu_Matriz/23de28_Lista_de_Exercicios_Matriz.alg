algoritmo "List_Ex_23de28"
//arquivo "C:\Users\WILLIAM\Desktop\23_28Exercicio.txt"
// Função :
// Autor : WILLIAM GOULART
// Data : 22/10/2012
// Seção de Declarações
//23. Faça um algoritmo para ler uma matriz de 3x4 de números reais e depois
//exibir o elemento do canto superior esquerdo e do canto inferior direito.
var

m : vetor[1..3,1..4] de real
i,j: inteiro
abvt:caracter

inicio

para i de 1 ate 3 faca
   para j de 1 ate 4 faca
      escreva("Informe um número inteirom para M[", i, ",", j, "] : ")
      leia(m[i,j])
   fimpara
fimpara
escreval
escreval("--------------------------------------------------------")
escreval
para i de 1 ate 3 faca
   para j de 1 ate 4 faca
      escreva(m[i,j]:3)
   fimpara
   escreval("")
fimpara
escreval
escreval("--------------------------------------------------------")
escreval
escreval("")
para i de 1 ate 3 faca
   para j de 1 ate 4 faca
      se (i=1)e(j=1) OU (i=3)e(j=4) entao
         se (i=1) entao
            abvt:="O elemento do canto superior esquerdo de"
         senao
            abvt:="O elemento do canto inferior direito de"
         fimse
         escreval(abvt," M[",i,",",j,"] é ",m[i,j])
      fimse
   fimpara
fimpara
fimalgoritmo
