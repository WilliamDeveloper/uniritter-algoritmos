algoritmo "Calculadora"
// Fun��o :
// Autor :
// Data : 13/10/2012
// Se��o de Declara��es
var

num1, num2 : inteiro
resultado : real
operacao : caracter
opValida : Logico


inicio


opValida := Verdadeiro;

Escreval("Informe um valor:")
Leia(num1)
Escreval("Informe outro valor:")
Leia(num2)
Escreval("Informe a opera��o:")
Leia(operacao)

Se (operacao = "+") entao
   resultado := num1 + num2
   Senao
   Se (operacao = "-") Entao
      resultado := num1 - num2
      Senao
      Se (operacao = "*") Entao
         resultado := num1 * num2
         Senao
         Se (operacao = "/") Entao
            resultado := num1 / num2
            Senao

            Escreval("Opera��o n�o reconhecida!")
            opValida := falso

         FimSe
      FimSe
   FimSe
FimSe

Se (opValida = Verdadeiro) Entao
   Escreval(num1, operacao, num2, " = ", resultado)
FimSe

fimalgoritmo
