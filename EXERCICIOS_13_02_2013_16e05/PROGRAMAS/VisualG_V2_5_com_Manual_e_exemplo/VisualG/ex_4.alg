algoritmo "Ex_4"
// Função : Algoritmo que calcula o salário de um funcionário
// Autor : FHC
// Data : 13/09/2012
// Seção de Declarações 
var
  codigo, filhos : inteiro
  horas, valorHora, salario : real
inicio
// Seção de Comandos 
  Escreva ("Informe o seu código: ")
  Leia (codigo)
  Escreva("Informe a quantidade de horas trabalhadas no mês: ")
  Leia(horas)
  Escreva("Informe o valor da sua hora: ")
  Leia(valorHora)
  Escreva("Informe a quantidade de filhos menor que 14 anos: ")
  Leia(filhos)
  salario <- horas * valorHora + filhos * 15
  Escreva("O funcionário de código ", codigo, "receberá o salário de R$", salario)
fimalgoritmo
