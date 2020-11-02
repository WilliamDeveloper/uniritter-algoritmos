algoritmo "Raizes"
// Função :
// Autor :
// Data : 13/10/2012
// Seção de Declarações
var

A, B, C: real
x1, x2, delta: real

inicio



escreval("Informe o valor de A: ")
leia(A)
escreval("Informe o valor de B: ")
leia(B)
escreval("Informe o valor de C: ")
leia(C)
delta <- exp(B,2) - 4 * A * C

x1 := -B + exp(delta,1/2) / 2 * A
x2 <- -B - exp(delta,1/2) / 2 * A
escreval("As raízes da equação informada são: ", x1, " e ", x2, ".")

fimalgoritmo
