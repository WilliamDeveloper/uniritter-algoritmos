algoritmo "List_Ex_21de86"
//arquivo "C:\Users\WILLIAM\Desktop\21_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//21. Escrever um algoritmo que leia a idade de uma pessoa
//expressa em dias e mostre-a expressa em anos, meses e dias
//(Berg; Figueiró, 1998, p. 51).
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var

dia,mes,ano:inteiro
vida,vidai:inteiro
vano,vdia:inteiro

inicio
vano:=365
vdia:=30

escreval("informe quantos dias voce tem de vida : ")
leia(vida)

vidai:=vida

ano:=vida div vano
vida:=vida mod vano

mes:=vida div vdia
dia:=vida mod vdia

escreval
escreval("------------------------------------------")
escreval("A pessoa com ",vidai," dias de vida possui: ")
escreval(Ano," ANOS,",mes," MESES e ",dia," DIAS.")


fimalgoritmo
