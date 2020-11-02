algoritmo "SALARIO"
// Função :
// Autor :
// Data : 13/10/2012
// Seção de Declarações
var

codigo, filhos : inteiro
horas, valorHora, salario : real

inicio


escreval("Informe o seu código: ")
leia(codigo)
escreval("Informe a quantidade de horas trabalhadas no mês: ")
leia(horas)
escreval("Informe o valor da sua hora: ")
leia(valorHora)
escreval("Informe a quantidade de filhos menor que 14 anos: ")
leia(filhos)
salario <- horas * valorHora + filhos * 15
escreval("O funcionário de código ", codigo,"recerá o salário de R$", salario)

// Seção de Comandos
fimalgoritmo
