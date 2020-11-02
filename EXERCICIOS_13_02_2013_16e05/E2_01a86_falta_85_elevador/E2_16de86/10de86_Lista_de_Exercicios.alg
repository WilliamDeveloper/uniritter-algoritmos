algoritmo "List_Ex_10de86"
//arquivo "C:\Users\WILLIAM\Desktop\10_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//10. Uma locadora aluga seus filmes com uma taxa fixa por dia
//e cobra uma taxa adicional por cada dia de atraso.
//Fazer o algoritmo que leia a taxa fixa por dia,
//a taxa por dia de atraso, o número de dias em atraso,
//e calcule o valor total a ser pago por um cliente que atrasou 3
//dias na entrega de 4 filmes.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var
TD,TA,V1,V2,VALOR:REAL
DIAS,FILMES:INTEIRO

inicio
DIAS:=3
FILMES:=4

ESCREVAL ("INFORME A TAXA FIXA DO ALUGUEL: ")
LEIA (TD)
ESCREVAL ("INFORME A TAXA ADICIONAL: ")
LEIA (TA)
//ESCREVAL ("INFORME QUANTOS DIAS EM ATRASO : ")
//LEIA (DIAS)
//ESCREVAL ("INFORME QUANTOS FILMES: ")
//LEIA (FILMES)

   V1:=TD*FILMES
   V2:=TA*DIAS*FILMES
   VALOR:=V1+V2


ESCREVAL("O VALOR A SER PAGO SERA é R$: ",VALOR)


fimalgoritmo
