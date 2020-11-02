algoritmo "distancia"
// Função :
// Autor :
// Data : 13/10/2012
// Seção de Declarações
var

x1, y1, x2, y2, d: real

inicio


Escreval("Informe a coordenada X do ponto 1: ")
leia(x1)
Escreval("Informe a coordenada Y do ponto 1: ")
leia(y1)
Escreval("Informe a coordenada X do ponto 2: ")
leia(x2)
Escreval("Informe a coordenada Y do ponto 2: ")
leia(y2)
d <- exp(exp(x2-x1, 2) + exp(y2-y1,2),1/2)
Escreval("A distância entre os pontos informados é: ", d)



fimalgoritmo
