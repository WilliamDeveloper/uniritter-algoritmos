algoritmo "List_Ex_25de86"
//arquivo "C:\Users\WILLIAM\Desktop\25_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//25. O custo final ao consumidor de um carro novo � a soma
// do custo de f�brica com a percentagem do distribuidor
//e dos impostos (aplicados ao custo de f�brica). Supondo que
//a percentagem do distribuidor seja de 28% e os impostos de 45%,
//escrever um algoritmo que leia o custo de f�brica de um carro
//e escreva o custo final ao consumidor
//(Berg; Figueir�, 1998, p. 52).
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Se��o de Declara��es
var
custo,cf:real
distribuidor,impostos:real

inicio

distribuidor:=0.28
impostos:=0.45

escreval("Informe o custo de fabrica : ")
leia(custo)

cf:=custo+(custo*distribuidor)+(custo*impostos)

escreval("O custo final ao consumidor �: ",cf)



fimalgoritmo
