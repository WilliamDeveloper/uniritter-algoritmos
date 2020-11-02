algoritmo "List_Ex_26de86"
//arquivo "C:\Users\WILLIAM\Desktop\26_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//26. Uma loja vende seus produtos em 3 parcelas:
//uma entrada mais duas prestações. Escrever um algoritmo
//que leia o valor da compra e calcule o valor da entrada
//e das prestações,sabendo-se que as prestações devem ser sempre
// valores inteiros (adaptado de Evaristo; Crespo, 2003).
//Exemplos:
//Compra 1: R$270,00 Entrada + 2 Prestações de R$90,00
//Compra 2: R$325,50 Entrada R$ 109,50 + 2 Prestações de R$108,00
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var

valor,valori,entrada:real
prestacoes,p2:real

inicio
escreval("Informe o valor da compra : ")
leia(valor)

valori:=valor

prestacoes:= int(valor/3)
p2:=prestacoes*2

entrada:= valori-p2


escreval
escreval("-----------------------------------------------------------------")
escreval("Compra de R$",valori:5:2," Entrada R$",entrada:5:2," +2 Prestacoes de R$",prestacoes:5:2)

fimalgoritmo
