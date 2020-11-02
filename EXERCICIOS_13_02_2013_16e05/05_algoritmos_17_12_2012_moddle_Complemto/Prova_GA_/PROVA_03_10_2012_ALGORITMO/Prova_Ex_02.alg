algoritmo "Prova_Ex_02"
// Função : Acumalador de valores.
// Autor : WILLIAM GOULART PACHECO
// Data : 03/10/2012
// Seção de Declarações
var
vlr:inteiro
cont:inteiro
acum:inteiro
resp:caracter

inicio


repita
   escreval("Informe um valor: ")
   leia(vlr)
   acum:=acum+vlr
   cont:=cont+1

ate (vlr<0)
escreval("--------------------------------")
escreval("o Contador ficou em : ",cont," e o acumulador ficou em :" ,acum)


fimalgoritmo
