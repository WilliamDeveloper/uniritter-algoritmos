algoritmo "List_Ex_17de86"
//arquivo "C:\Users\WILLIAM\Desktop\17_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//17. Escrever um algoritmo que lê 3 valores A, B e C
//e calcula (adaptado de Berg; Figueiró,1998):
//área do triângulo que tem A por base e B por altura;
//a área do círculo de raio C;
//a área do trapézio que tem A e B por bases e C por altura;
//a área do quadrado de lado B;
//a área do retângulo de lados A e B;
//a área da superfície de um cubo que tem C por aresta.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var
a,b,c:real
at,ac,trap,aq,ar,as:real
vpi:real

inicio

vpi:=3.14

escreval("Informe um valor para A: ")
leia(a)
escreval("Informe um valor para B: ")
leia(b)
escreval("Informe um valor para C: ")
leia(c)


at:= a*b/2       //area do triangulo
ac:= vpi*exp(c,2)     //area do circulo
trap:= ((a+b)/2)*c    //area do trapezio
aq:= exp(b,2)        //area do quadrado
ar:= a*b             //area do retangulo
as:= 6*exp(c,2)     //area da superficie

escreval("A área do triangulo que tem A=",a," por base e B=",b," por Altura é : ",at)
escreval("A área do circulo de raio C=",c," é : ",ac)
escreval("A área do trapézio que tem A=",a," e B=",b," por bases e C=",c," por altura é : ",trap)
escreval("A área do quadrado de lado B=",b," é: ",aq)
escreval("A área do retangulo de lados A=",a," e B=",b," é: ",ar)
escreval("A área da superficie de um cubo que tem C=",c," por Aresta é : ",as)



fimalgoritmo
