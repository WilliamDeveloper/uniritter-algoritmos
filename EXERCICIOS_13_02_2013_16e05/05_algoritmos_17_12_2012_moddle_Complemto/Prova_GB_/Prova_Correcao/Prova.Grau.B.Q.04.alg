 algoritmo "GrauB_Q04"
// Função :
// Autor :
// Data : 28/11/2012
// Seção de Declarações 

procedimento raizes(a, b, c : inteiro; var x1, x2: real)
var
  d : real
inicio
  d := b * b - 4 * a * c
  d := raizq(d)
  
  x1 := (-b + d) / 2 * a
  x2 := (-b - d) / 2 * a
fimProcedimento

var
  a, b, c : inteiro
  x1, x2 : real
inicio
// Seção de Comandos 
  escreva("Valor de a: ")
  leia(a)
  escreva("Valor de b: ")
  leia(b)
  escreva("Valor de c: ")
  leia(c)
  
  raizes(a, b, c, x1, x2)
  
  escreval("As raízes da equação ", a, "x2 + ", b, " x + ", c)
  escreval("x1: ", x1)
  escreval("x2: ", x2)
fimalgoritmo
