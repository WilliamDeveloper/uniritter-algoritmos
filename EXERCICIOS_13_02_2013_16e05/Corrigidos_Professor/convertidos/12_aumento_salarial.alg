algoritmo "AumentoSalarial"
// Função :
// Autor :
// Data : 13/10/2012
// Seção de Declarações
var


nome    : caracter
categ   : caracter
salario : real

inicio

repita

Escreval("Informe seu nome: ")
Leia(nome)
Escreval("Informe seu categoria: ")
Leia(categ)
Escreval("Informe seu salario: ")
Leia(salario)

Escolha (categ)
caso "A","C","F","G","H"
   salario:= salario*1.1
caso "B","D","E","I","J","T"
   salario:= salario*1.16
caso "K","R"
   salario:= salario*1.25
caso "L","M","N","O","P","Q","R","S"
   salario:= salario*1.35
caso "U","V","X","Y","W","Z"
   salario:= salario*1.5
FimEscolha

Escreval(nome, " seu novo salário será: ", salario)

ate (salario<0)

fimalgoritmo
