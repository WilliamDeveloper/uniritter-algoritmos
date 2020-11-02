algoritmo "EXP"
// Função :
// Autor :
// Data : 13/10/2012
// Seção de Declarações
var

base, expoente, pote: inteiro
cont : inteiro




inicio

escreval("Informe a base" )
Leia(base)
escreval("Informe o expoente" )
Leia(expoente)

cont := 1
pote  := 1

Enquanto (cont <= expoente) faca
   pote:=pote*base
   cont:= cont + 1
FimEnquanto

escreval(base," elevado na ", expoente,"  é igual a ", pote)

fimalgoritmo
