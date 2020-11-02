algoritmo "List_Ex_12de15"
// usando leitura apartir do txt
//arquivo "C:\Users\WILLIAM\Desktop\ex12.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
// 12) Escrever um algoritmo que leia um vetor com 20 valores.
// Após a leitura calcular e escrever a soma de todos os valores
// do vetor.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var
v:vetor [1..20] de inteiro
i:inteiro
soma:inteiro
inicio

para i de 1 ate 20 faca
   escreva("Informe um valor: ")
   leia(v[i])
   soma:=soma+v[i] //acumula valores
fimpara
escreval("------------------------------------------------")
escreval("A soma de todos valores do vetor é igual a :",soma)

fimalgoritmo
