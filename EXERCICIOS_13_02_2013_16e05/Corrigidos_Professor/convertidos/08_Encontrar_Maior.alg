algoritmo "MAIOR"
// Função :
// Autor :
// Data : 13/10/2012
// Seção de Declarações
var

A, B, C: inteiro

inicio


Escreval("Informe o valor de A: ")
leia(A)
Escreval("Informe o valor de B: ")
leia(B)
Escreval("Informe o valor de C: ")
leia(C)

Se (A > B) E (B > C) Entao
   Escreval(A, " ", B, " ", C)
FimSe

Se (A > B) E (C > B) Entao
   Escreval(A, " ", C, " ", B)
FimSe

Se (B > A) E (A > C) Entao
   Escreval(B, " ", A, " ", C)
FimSe

Se (B > A) E (C > A) Entao
   Escreval(B, " ", C, " ", A)
FimSe

Se (C > B) E (B > A) Entao
   Escreval(C, " ", B, " ", A)
FimSe

Se (C > B) E (A > B) Entao
   Escreval(C, " ", A, " ", B)
FimSe




fimalgoritmo
