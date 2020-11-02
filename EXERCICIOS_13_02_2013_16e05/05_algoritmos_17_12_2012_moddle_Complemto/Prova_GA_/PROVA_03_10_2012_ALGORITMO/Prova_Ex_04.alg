algoritmo "Prova_Ex_03"
// Função : ler idade
// Autor : WILLIAM GOULART PACHECO
// Data : 03/10/2012
// Seção de Declarações
var
idade:inteiro
Fdias:inteiro
Fano:inteiro
anos:real
meses:real
dias:real
zdias:real

inicio

Fano:=365
Fdias:=30

escreval("Informe quantos dias voce de vida voce tem:")
leia(dias)
zdias:=dias
anos:= int(dias / Fano)
meses:=int(anos / 12)
dias:= int(meses / Fdias)

escreval("A pessoas tem ",anos," anos ",meses," meses ",dias," dias" )



fimalgoritmo
