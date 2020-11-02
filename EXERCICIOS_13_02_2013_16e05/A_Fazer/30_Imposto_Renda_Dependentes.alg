algoritmo "IMPOSTO_RENDA_DEPENDENTES"
// Função :
// Autor :
// Data : 13/10/2012
// Seção de Declarações
// 30.Calcule o imposto  de renda de um grupo de dez contribuintes,
//considerando que os dados de cada contribuinte , numero do CPF,
//numero de dependentes e renda mensal sao valores forncecidos pelo usuario.
//Para cada contribuinte sera feito um desconto de 5% do salario minimo por dependente.
//Os valores da aliquota para calculo do imposto sao:
//-------------------------------------------------------------------
//Renda liquida     		      Aliquota
//ate 2 salarios minimos	      Isento
//2 a 3 salarios minimos	      5%
//3 a 5 salarios minimos	      10%
//5 a 7 salarios minimos	      15%
//Acima de 7 salarios minimos	      20%
//------------------------------------------------------------------
//observe que deve ser fornecido o valor atual do salario minimo
//para que o algoritmo calcule os valores corretamente.
var


rl,rm,ir,salario,SALM:real
ndep,cont:inteiro
cpf:caracter

Inicio

SALM:=622.00
cont:=0
ir:=0.0
Enquanto (cont<10) faca

   escreval("informe seu CPF:")
   Leia(cpf)
   escreval("Informe seu salario:")
   leia(rm)
   escreval("Informe o numero de dependentes:")
   leia(ndep)
   rl:=rm/SALM

   Se (rl>=0.0)E(rl<=2.0) entao
      escreval("Isento")
   Senao
      Se (rl>2.0)E(rl<=3.0) entao

         ir:=ndep*0.05*SALM
         salario:=rm-ir

      Senao
         Se (rl>3.0)E(rl<=5.0) entao

            ir:=ndep*0.10*SALM
            salario:=rm-ir

         Senao
            Se (rl>5.0)E(rl<=7.0) entao

               ir:=ndep*0.15*SALM
               salario:=rm-ir

            Senao
               Se (rl>7.0) entao

                  ir:=ndep*0.20*SALM
                  salario:=rm-ir

               FimSe
            FimSe
         FimSe
      FimSe
      escreval("O contribuinte do CPF : ",cpf)
      escreval("o salario de: R$ ",rm," menos O Imposto de Renda de: R$ ",ir)
      escreval("gerou salario de R$: ",salario)
   FimSe


   ir:=0.0
   escreval("---------------------------------------------")
   cont:=cont+1
FimEnquanto


fimalgoritmo
