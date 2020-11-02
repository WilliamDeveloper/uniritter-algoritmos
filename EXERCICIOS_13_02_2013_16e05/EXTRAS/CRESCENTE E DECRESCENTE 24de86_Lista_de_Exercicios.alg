algoritmo "List_Ex_24de86"
//arquivo "C:\Users\WILLIAM\Desktop\24_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//24. Escrever um algoritmo que lê 3 valores e os escreve em ordem crescente.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var
A,B,C:INTEIRO
TAM,aux,i:inteiro

inicio



escreval("Informe um valor para A : ")
leia(a)
escreval("Informe um valor para B : ")
leia(b)
escreval("Informe um valor para C : ")
leia(c)

se ( a = b ) e ( b = c ) entao
   escreval ("Todos são iguais")
   escreval(a,b,c)
senao
   se( a > b ) e ( b > c ) entao
      //ordem decrescente
      escreval (a,b,c)
      //ordem crescente
      escreval (c,b,a)
   senao
      se( a > c ) e ( c > b ) entao
         //ordem decrescente
         escreval (a,c,b)
         //ordem crescente
         escreval (b,c,a)

      senao
         se( b > c ) e ( c > a ) entao
            //ordem decrescente
            escreval (b,c,a)
            //ordem crescente
            escreval (a,c,b)

         senao
            se( b > a ) e ( a > c ) entao
               //ordem decrescente
               escreval (b,a,c)
               //ordem crescente
               escreval (c,a,b)
            senao
               se( c > b ) e ( b > a ) entao
                  //ordem decrescente
                  escreval (c,b,a)
                  //ordem crescente
                  escreval (a,b,c)

               senao
                  se( c > a ) e ( a > b ) entao
                     //ordem decrescente
                     escreval (c,a,b)
                     //ordem crescente
                     escreval (b,a,c)
                  fimse
               fimse
            fimse
         fimse
      fimse
   fimse
fimse

fimalgoritmo
