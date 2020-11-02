algoritmo "FATORIAL"
// Função :
// Autor :
// Data : 13/10/2012
// Seção de Declarações
var

numero : inteiro
fat : inteiro
i   : inteiro

inicio


fat := 1
escreval("Informe um número: ")
leia(numero)

Se (numero = 0) Entao
   fat := 1
Senao
   para i de 1 ate numero passo 1 faca
      fat := fat * i
   FimPara
FimSe

escreval("O fatorial de ", numero, " é: ", fat)


fimalgoritmo
