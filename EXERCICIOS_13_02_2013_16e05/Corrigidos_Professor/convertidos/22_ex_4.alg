algoritmo "Ex_4"
// Fun��o : Algoritmo que calcula o sal�rio de um funcion�rio
// Autor : FHC
// Data : 13/09/2012
// Se��o de Declara��es 
var
  codigo, filhos : inteiro
  horas, valorHora, salario : real
inicio
// Se��o de Comandos 
  Escreva ("Informe o seu c�digo: ")
  Leia (codigo)
  Escreva("Informe a quantidade de horas trabalhadas no m�s: ")
  Leia(horas)
  Escreva("Informe o valor da sua hora: ")
  Leia(valorHora)
  Escreva("Informe a quantidade de filhos menor que 14 anos: ")
  Leia(filhos)
  salario <- horas * valorHora + filhos * 15
  Escreva("O funcion�rio de c�digo ", codigo, "receber� o sal�rio de R$", salario)
fimalgoritmo
