algoritmo "List_Ex_05de15"
// usando leitura apartir do txt
//arquivo "C:\Users\WILLIAM\Desktop\ex05.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
// 5) Escrever um algoritmo que lê um vetor N de 20 posições.
// Trocar o 1º elemento com o último, o 2º com o penúltimo,
// o 3º com o antepenúltimo e assim sucessivamente, até
// trocar o 10º elemento com o 11º. Escrever o vetor N modificado.
// (Observação: as trocas devem ser realizadas no próprio vetor,
// não utilizar vetores auxiliares).
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var
i,cont,cont2,aux:inteiro
v:vetor[1..20] de inteiro
inicio
cont:=0
cont2:=20
para i de 1 ate 20 faca
   escreva("Informe um numero: ")
   leia(v[i])
fimpara
//metade de 20 senao volta a ser do jeito ke era ao ser digitado
para i de 1 ate 10 faca
   aux:=v[i]
   v[i]:=v[cont2]
   v[cont2]:=aux
   cont2:=(cont2-1)
fimpara
escreval("----------------------------------------")
para i de 1 ate 20 faca
   escreval("Vetor[",i,"] = ",v[i])
fimpara

fimalgoritmo
