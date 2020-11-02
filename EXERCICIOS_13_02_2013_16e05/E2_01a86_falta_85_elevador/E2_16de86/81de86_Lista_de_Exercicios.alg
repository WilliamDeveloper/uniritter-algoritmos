algoritmo "List_Ex_81de86"
//arquivo "C:\Users\WILLIAM\Desktop\81_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//81. Escrever um algoritmo que calcule a soma de dois
//números enquanto esta soma for positiva.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var

a,b,soma:real

inicio

repita

   escreval
   escreval("-----------------------------------------")
   escreva("Informe um valor para A : ")
   leia(a)
   escreva("Informe um valor para B : ")
   leia(b)

   soma:=a+b
   escreval("A soma de",a," +",b," =",soma)

   se(soma<0) entao
      escreval
      escreval("!!!! A Soma deu Negativa !!!!")
      escreval
   fimse

ate (soma<0)




fimalgoritmo
