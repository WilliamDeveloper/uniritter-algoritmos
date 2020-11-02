algoritmo "List_Ex_33de86"
//arquivo "C:\Users\WILLIAM\Desktop\33_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//33. Sabendo-se que se a coordenada X de um ponto for igual
// a zero e a coordenada Y for diferente de zero o ponto está
// sobre o eixo dos Y, caso contrário sobre o eixo dos X.
//Escrever um algoritmo que imprima uma mensagem indicando
//onde se encontra o ponto no plano, a partir das coordenadas
// desse ponto no plano representadas, por X e Y.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var

x,y:inteiro

inicio
escreval("Informe a cordenada do ponto representado por X : ")
leia(x)
escreval("Informe a cordenada do ponto representado por y : ")
leia(y)

se (x=0) e (y<>0) entao
escreval("O ponto esta no eixo dos Y")
senao
escreval("O ponto esta no eixo dos X")
fimse

fimalgoritmo
