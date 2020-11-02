algoritmo "List_Ex_19de86"
//arquivo "C:\Users\WILLIAM\Desktop\19_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//19. (Adaptado de Lopes & Garcia, 2002).
//Sabendo-se que 100 quilowatts de energia custam
//um sétimo do salário mínimo, escrever um algoritmo que receba
//o valor do salário mínimo e a quantidade de quilowatts
//que foi gasta numa residência. Calcular e imprimir:
//o valor em reais de cada quilowatt;
//o valor em reais a ser pago referente à conta mensal;
//o valor a ser pago aplicando-se um desconto de 10%.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var
salario,kw100,kw1,total,desconto:real
quantidade:inteiro


inicio

escreval("Informe o valor do sario minimo : ")
leia(salario)
escreval("Informe a quantidade de quilowatts que foi gasta na residencia : ")
leia(quantidade)


kw100:=salario/7
kw1:=((kw100*1)/100)

total:=kw1*quantidade

desconto:=total-(total*0.10)

escreval
escreval("-----------------------------------------------------------")
escreval("O valor pago por cada quilowatts é : R$ ",kw1)
escreval("O valor a ser pago referente a conta mensao é : R$ ",total)
escreval("O valor a ser pago aplicando 10% de desconto : R$ ",desconto)


fimalgoritmo
