algoritmo "List_Ex_17de86"
//arquivo "C:\Users\WILLIAM\Desktop\17_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//17. Escrever um algoritmo que l� 3 valores A, B e C
//e calcula (adaptado de Berg; Figueir�,1998):
//�rea do tri�ngulo que tem A por base e B por altura;
//a �rea do c�rculo de raio C;
//a �rea do trap�zio que tem A e B por bases e C por altura;
//a �rea do quadrado de lado B;
//a �rea do ret�ngulo de lados A e B;
//a �rea da superf�cie de um cubo que tem C por aresta.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Se��o de Declara��es
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

escreval("A �rea do triangulo que tem A=",a," por base e B=",b," por Altura � : ",at)
escreval("A �rea do circulo de raio C=",c," � : ",ac)
escreval("A �rea do trap�zio que tem A=",a," e B=",b," por bases e C=",c," por altura � : ",trap)
escreval("A �rea do quadrado de lado B=",b," �: ",aq)
escreval("A �rea do retangulo de lados A=",a," e B=",b," �: ",ar)
escreval("A �rea da superficie de um cubo que tem C=",c," por Aresta � : ",as)



fimalgoritmo
