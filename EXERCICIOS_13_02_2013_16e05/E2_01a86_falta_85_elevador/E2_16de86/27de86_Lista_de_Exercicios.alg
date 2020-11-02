algoritmo "List_Ex_27de86"
//arquivo "C:\Users\WILLIAM\Desktop\27_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//27. (Adaptado de Ascencio & Campos, 2002) Pedro comprou um saco
// de ração com peso em quilos. Pedro possui dois gatos para
//os quais fornece a quantidade de ração em gramas.
//Escrever um algoritmo que leia o peso do saco de ração
//e a quantidade de ração fornecida para cada gato.
//Calcular e escrever quanto restará de ração no saco
// quando se passarem cinco dias.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var
somag,d5,g1,g2,racao,racaog,resultado:real

inicio
escreval("Informe quantidade de racao fornecida para o gato 1: ")
leia(g1)
escreval("Informe quantidade de racao fornecida para o gato 2: ")
leia(g2)
escreval("Informe quanto peso do saco de racao  em quilos : ")
leia(racao)

racaog:=racao*1000

somag:=g1+g2
d5:=somag*5

resultado:=racaog-d5







escreval
escreval("----------------------------------------------------")
escreval("em cinco dias restara no saco de racao ",resultado," gramas")



fimalgoritmo
