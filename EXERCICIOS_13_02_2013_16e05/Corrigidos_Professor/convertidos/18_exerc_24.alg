algoritmo "exerc_24"
// Fun��o :
// Autor :
// Data : 13/10/2012
// Se��o de Declara��es
var

altura, maiorAltura, menorAltura, acumF : real
sexo : caracter
cont, contM, contF ,TAM: inteiro
percM, percF : real


inicio

TAM := 50

cont  := 0
contM := 0
contF := 0
acumF := 0

Enquanto (cont <= TAM) Faca
   Escreval("Informe o sexo: (M/F)")
   Leia(sexo)
   Escreval("Informe a altura")
   Leia(altura)

   Se (sexo = "F") Entao

      acumF := acumF + altura
      contF := contF + 1

      Senao
      contM := contM + 1
   FimSe

   Se (cont = 1) Entao

      maiorAltura := altura
      menorAltura := altura

      Senao

      Se (altura > maiorAltura) Entao
         maiorAltura := altura
      FimSe

      Se (altura < menorAltura) Entao
         menorAltura := altura
      FimSe

   FimSe

   cont := cont + 1
FimEnquanto

percF := contF / TAM * 100
percM := contM / TAM * 100

escreval("A maior altura lida foi: ", maiorAltura)
escreval("A menor altura lida foi: ", menorAltura)
escreval("A m�dia de altura das mulheres foi: ", acumF/contF)
escreval("O n�mero de homens �: ", contM)
escreval("A diferen�a do percentual de homens para o de mulheres �: ", percM-percF)




fimalgoritmo
