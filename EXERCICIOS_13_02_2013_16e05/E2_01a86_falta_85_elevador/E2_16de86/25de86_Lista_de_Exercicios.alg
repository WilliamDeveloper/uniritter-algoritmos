algoritmo "List_Ex_25de86"
//arquivo "C:\Users\WILLIAM\Desktop\25_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//25. O custo final ao consumidor de um carro novo é a soma
// do custo de fábrica com a percentagem do distribuidor
//e dos impostos (aplicados ao custo de fábrica). Supondo que
//a percentagem do distribuidor seja de 28% e os impostos de 45%,
//escrever um algoritmo que leia o custo de fábrica de um carro
//e escreva o custo final ao consumidor
//(Berg; Figueiró, 1998, p. 52).
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var
custo,cf:real
distribuidor,impostos:real

inicio

distribuidor:=0.28
impostos:=0.45

escreval("Informe o custo de fabrica : ")
leia(custo)

cf:=custo+(custo*distribuidor)+(custo*impostos)

escreval("O custo final ao consumidor é: ",cf)



fimalgoritmo
