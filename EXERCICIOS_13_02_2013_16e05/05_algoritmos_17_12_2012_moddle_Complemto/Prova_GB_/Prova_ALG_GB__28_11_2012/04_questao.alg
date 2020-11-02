algoritmo "Questao_04"
// Função :
// Autor :WILLIAM GOULART PACHECO
// Data : 28/11/2012
// Seção de Declarações
var

a,b,c:real
x1,x2:real

PROCEDIMENTO bascara(var a,b,c,x1,x2:real)

var
delta:real

INICIO


delta:=(b*b)-4*a*c

x1:=(-b+radq(delta))/(2*a)
x2:=(-b-radq(delta))/(2*a)


se (delta=0) entao
   escreval("======================================================")
   escreval("DELTA IGUAL A ZERO , TEMOS 2 RAIZES IGUAIS")
   escreval("x1 eh igual a ",x1," e x2 eh igual ",x2)
   escreval("======================================================")

senao
   se (delta>0) entao
      escreval("======================================================")
      escreval("DELTA POSITIVO")
      escreval("x1 eh igual a ",x1," e x2 eh igual ",x2)
      escreval("======================================================")

   senao
      se(delta<0) entao
         escreval("======================================================")
         escreval("DELTA NEGATIVO")
         escreval("NAO EXISTEM RAIZES REAIS")
         escreval("======================================================")
      fimse
   fimse
fimse
FIMPROCEDIMENTO


inicio
// Seção de Comandos
escreva("Informe o valor de A .: ")
leia(a)
escreva("Informe o valor de B .: ")
leia(b)
escreva("Informe o valor de C .: ")
leia(c)
bascara(a,b,c,x1,x2)



fimalgoritmo
