algoritmo "List_Ex_05de15"
// usando leitura apartir do txt
//arquivo "C:\Users\WILLIAM\Desktop\ex05.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
// 5) Escrever um algoritmo que l� um vetor N de 20 posi��es.
// Trocar o 1� elemento com o �ltimo, o 2� com o pen�ltimo,
// o 3� com o antepen�ltimo e assim sucessivamente, at�
// trocar o 10� elemento com o 11�. Escrever o vetor N modificado.
// (Observa��o: as trocas devem ser realizadas no pr�prio vetor,
// n�o utilizar vetores auxiliares).
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Se��o de Declara��es
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
