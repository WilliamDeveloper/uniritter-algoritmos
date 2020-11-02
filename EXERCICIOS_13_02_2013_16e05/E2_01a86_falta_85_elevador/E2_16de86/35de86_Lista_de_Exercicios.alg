algoritmo "List_Ex_35de86"
//arquivo "C:\Users\WILLIAM\Desktop\35_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//35. A partir de valores A, B e C se A > B + C esses valores
// não formam um triângulo. Fazer um algoritmo para
//ler 3 valores e determinar se eles formam um triângulo.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var
a,b,c:real

inicio
escreval("Informe um valor para A : ")
leia(a)
escreval("Informe um valor para B : ")
leia(b)
escreval("Informe um valor para C : ")
leia(c)

se (a>b+c) entao
   escreval("OS VALORES NAO FORMAM UM TRIANGULO.")
senao
   escreval("OS VALORES FORMAM UM TRIANGULO.")
fimse


fimalgoritmo
