algoritmo "List_Ex_68de75"
//arquivo "C:\Users\WILLIAM\Desktop\68_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//68. Escreva um m�dulo de nome tipoTriangulo que receba 3
//par�metros representando os lados de um tri�ngulo e imprima
//o tipo dele (equil�tero, is�sceles ou escaleno).
//o comprimento de cada lado
//de um tri�ngulo � menor do que a soma
// do comprimento dos outros dois lados
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Se��o de Declara��es
var

x,y,z:real
r:caracter

FUNCAO triangulo(x,y,z:real):caracter
INICIO
se (x<y+z)E(y<x+z)E(z<x+y) entao  // 4 3 6 em qualquer ordem
   se (x=y)E(y=z)E(z=x) entao
      retorne("EQUILATERO")
   senao
      se(x=y)OU(y=z)OU(z=x) entao
         retorne("ISOSCELES")
      senao
         se (x<>y)E(y<>z)E(z<>x) entao
            retorne("ESCALENO")
         fimse
      fimse
   fimse
senao
   retorne("1")
fimse

FIMFUNCAO

inicio
escreval("informe os valores para x,y,z ..: ")
leia(x,y,z)
r:=triangulo(x,y,z)

se (r<>"1") entao
   escreval("!!! TRIANGULO ",r," !!!")

senao
   escreval("!!! OS VALORES de X Y Z NAO FORMAM UM TRIANGULO !!!")
fimse

fimalgoritmo
