algoritmo "Exercicio_32"
// Função :
// Autor :
// Data : 13/10/2012
// Seção de Declarações
//
//	32. Anacleto tem 1,50 metro e cresce 2 contimetros por ano,
//enquanto Felisberto tem 1,10 metro e cresce 3 centimetro por ano.
//Construa um algoritmo que calcule e imprima quantos anos serao
//necessarios para que felisberto seja maior que anacleto.

var

A,F,anacleto,felisberto:real
cont:inteiro

Inicio
A:=0.02
F:=0.03
cont:=0
anacleto:=1.50
felisberto:=1.10

Enquanto (anacleto>felisberto) faca
   anacleto:=anacleto+A
   felisberto:=felisberto+F
   cont:=cont+1
   Escreval("Anos=",cont," Felisberto=",felisberto:3:2," Anacleto=",anacleto:3:2)
FimEnquanto

escreval("Em",cont," anos Felisberto Tera mais idade que anacleto")


fimalgoritmo
