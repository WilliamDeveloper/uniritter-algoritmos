algoritmo "Prova_Ex_03"
// Função : encontrar x y z
// Autor : WILLIAM GOULART PACHECO
// Data : 03/10/2012
// Seção de Declarações
var

x,y,z:inteiro
i:inteiro
r:inteiro
inicio
x:=0
y:=0
z:=0

para i de 0 ate 100 faca

   se (3*x + 2*y + 7*z = 5 ) entao
      escreval("X vale:",x," Y Vale :",y," Z Vale:",z)
   senao
      x:=i
      se  (3*x + 2*y + 7*z <> 5)entao
         y:=i
      senao
         z:=i
      fimse

   fimse

fimpara




fimalgoritmo
