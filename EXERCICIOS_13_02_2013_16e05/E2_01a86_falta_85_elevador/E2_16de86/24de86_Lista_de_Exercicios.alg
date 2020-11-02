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
   se( a < b ) e ( b < c ) entao
      //ordem crescente
      escreval (a,b,c)
   senao
      se( a < c ) e ( c < b ) entao
         //ordem crescente
         escreval (a,c,b)
      senao
         se( b < c ) e ( c < a ) entao
            //ordem crescente
            escreval (b,c,a)
         senao
            se( b < a ) e ( a < c ) entao
               //ordem crescente
               escreval (b,a,c)
            senao
               se( c < b ) e ( b < a ) entao
                  //ordem crescente
                  escreval (c,b,a)
               senao
                  se( c < a ) e ( a < b ) entao
                     //ordem crescente
                     escreval (c,a,b)
                  senao
                     se (a = b) e (b<c) entao
                        //ordem crescente
                        escreval (a,b,c)
                     senao
                        se (a=c) E (c<b) entao
                           //ordem crescente
                           escreval(a,c,b)
                        senao
                           se (a=c) E (b<c) entao
                              //ordem crescente
                              escreval(b,a,c)
                           senao
                              se (b=c) e (c<a) entao
                                 //ordem crescente
                                 escreval(b,c,a)
                              senao
                                 se (b=c) e (a<c) entao
                                    //ordem crescente
                                    escreval(a,b,c)
                                 fimse
                              fimse
                           fimse
                        fimse
                     fimse
                  fimse
               fimse
            fimse
         fimse
      fimse
   fimse
fimse

fimalgoritmo
