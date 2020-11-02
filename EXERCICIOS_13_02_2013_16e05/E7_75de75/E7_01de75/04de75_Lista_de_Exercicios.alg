algoritmo "List_Ex_04de75"
//arquivo "C:\Users\WILLIAM\Desktop\04_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//4. Escreva um algoritmo que leia um vetor de 20 posições e mostre- o.
// Em seguida, troque o primeiro elemento com o último,
//o segundo com o penúltimo, o terceiro com o antepenúltimo,
// e assim sucessivamente. Mostre o novo vetor depois da troca.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Seção de Declarações
var
v:vetor[1..20] de inteiro
i,aux:inteiro

inicio

para i de 1 ate 20 faca
   escreva("Informe um numero para v[",i,"] .: ")
   leia(v[i])
fimpara

escreval
escreval("--------------------------------")
escreval("          GERANDO V")
escreval("--------------------------------")
escreval
para i de 1 ate 20 faca
   escreval(v[i])
fimpara

para i de 1 ate 10 faca
   aux:=v[i]
   v[i]:=v[21-i]
   v[21-i]:=aux
fimpara

escreval
escreval("--------------------------------")
escreval("        GERANDO V TROCADO")
escreval("--------------------------------")
escreval

para i de 1 ate 20 faca
   escreval(v[i])
fimpara


fimalgoritmo
