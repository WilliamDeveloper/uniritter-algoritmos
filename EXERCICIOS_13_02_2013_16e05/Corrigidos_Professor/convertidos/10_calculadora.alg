algoritmo "Calculadora"
// Função :
// Autor :
// Data : 13/10/2012
// Seção de Declarações
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
Escreval("Informe a operação:")
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

            Escreval("Operação não reconhecida!")
            opValida := falso

         FimSe
      FimSe
   FimSe
FimSe

Se (opValida = Verdadeiro) Entao
   Escreval(num1, operacao, num2, " = ", resultado)
FimSe

fimalgoritmo
