algoritmo "SALARIO"
// Fun��o :
// Autor :
// Data : 13/10/2012
// Se��o de Declara��es
var

codigo, filhos : inteiro
horas, valorHora, salario : real

inicio


escreval("Informe o seu c�digo: ")
leia(codigo)
escreval("Informe a quantidade de horas trabalhadas no m�s: ")
leia(horas)
escreval("Informe o valor da sua hora: ")
leia(valorHora)
escreval("Informe a quantidade de filhos menor que 14 anos: ")
leia(filhos)
salario <- horas * valorHora + filhos * 15
escreval("O funcion�rio de c�digo ", codigo,"recer� o sal�rio de R$", salario)

// Se��o de Comandos
fimalgoritmo
