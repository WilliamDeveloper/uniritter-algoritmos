algoritmo "MaiorEncadeado"
// Função :
// Autor :
// Data : 13/10/2012
// Seção de Declarações
var

A, B, C: inteiro

inicio


escreval("Informe o valor de A: ")
leia(A)
escreval("Informe o valor de B: ")
Leia(B)
escreval("Informe o valor de C: ")
Leia(C)

Se (A > B) E (B > C) Entao
   escreval(A, " ", B, " ", C)
Senao
   Se (A > B) E (C > B) Entao
      escreval(A, " ", C, " ", B)
   Senao
      Se (B > A) E (A > C) Entao
         escreval(B, " ", A, " ", C)
      Senao
         Se (B > A) E (C > A) Entao
            escreval(B, " ", C, " ", A)
         Senao
            Se (C > B) E (B > A) Entao
               escreval(C, " ", B, " ", A)
            Senao
               Se (C > B) E (A > B) Entao
                  escreval(C, " ", A, " ", B)
               FimSe
            FimSe
         FimSe
      FimSe
   FimSe
FimSe



fimalgoritmo
