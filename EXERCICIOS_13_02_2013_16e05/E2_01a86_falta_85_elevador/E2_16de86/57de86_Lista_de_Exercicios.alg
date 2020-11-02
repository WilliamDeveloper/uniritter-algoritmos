algoritmo "List_Ex_57de86"
//arquivo "C:\Users\WILLIAM\Desktop\57_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//57. Escrever um algoritmo que lê cinco pares de valores A, B,
//todos inteiros e positivos, um par de cada vez e A < B.
//Escrever os inteiros pares de A até B, incluindo o A e o B
//se forem pares.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var

a,b,i,j:inteiro



inicio


para i de 1 ate 5 faca
   repita
      escreval("Informe o valor de A: ")
      leia(a)
      escreval("Informe o valor de B: ")
      leia(b)
   ate (a>0)E(a<b)

   para j de a ate b faca
      se (j mod 2 = 0) entao
         escreval(j)
      fimse
   fimpara


fimpara





fimalgoritmo
