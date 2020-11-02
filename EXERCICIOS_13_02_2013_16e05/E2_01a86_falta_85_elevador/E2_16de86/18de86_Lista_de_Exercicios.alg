algoritmo "List_Ex_18de86"
//arquivo "C:\Users\WILLIAM\Desktop\18_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//18. Escrever um algoritmo que lê um valor em reais
//e calcula qual o menor número possível de notas
//de 100, 50, 10, 5 e 1 em que o valor lido pode ser decomposto.
// Escrever o valor lido e a relação de notas necessárias.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var
n100,n50,n10,n5,n1:inteiro
valor,vi:inteiro


inicio

escreval("Informe o valor que deseja sacar")
leia(valor)

vi:=valor

n100:= valor div 100
valor:=valor mod 100

n50:= valor div 50
valor:=valor mod 50

n10:= valor div 10
valor:=valor mod 10

n5:= valor div 5
valor:=valor mod 5

n1:= valor div 1
valor:=valor mod 1

escreval
escreval("--------------------------------")
escreval("Valor Solicitado R$: ",vi)
escreval("Notas de R$ 100,00 : ",n100)
escreval("Notas de R$ 50,00 : ",n50)
escreval("Notas de R$ 10,00 : ",n10)
escreval("Notas de R$ 5,00 : ",n5)
escreval("Notas de R$ 1,00 : ",n1)



fimalgoritmo
