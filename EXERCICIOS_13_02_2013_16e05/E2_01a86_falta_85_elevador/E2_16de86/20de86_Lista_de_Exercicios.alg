algoritmo "List_Ex_20de86"
//arquivo "C:\Users\WILLIAM\Desktop\20_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//20. (Adaptado de Lopes & Garcia, 2002).
//Escrever um algoritmo que calcule o n�mero de
//litros de combust�vel gastos em uma viagem, sabendo-se que
// o carro faz 12Km com um litro. Dever�o ser lidos o tempo
//gasto na viagem e a velocidade m�dia.
//Aplicar as seguintes f�rmulas:
//- Dist�ncia = tempo X velocidade
//- Litros gastos = Dist�ncia / 12
//No final escrever os valores da velocidade m�dia,
//tempo gasto na viagem, dist�ncia percorrida e a quantidade
//de litros de combust�vel utilizada.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Se��o de Declara��es
var

d,vm,tg,litros:real
kpl:inteiro  //kilometro por litro

inicio

kpl:=12

escreval("Informe o tempo gasto na viagem : ")
leia(tg)
escreval("Informe a Velocidade Media : ")
leia(vm)



d:=tg*vm
litros:=d/kpl


escreval
escreval("------------------------------------------------------------")
escreval("A velocidade media � : ",vm)
escreval("O tempo gasto foi : ",tg)
escreval("A distancia percorrida : ",d)
escreval("A quantidade de litros de combustivel utilizada foi :  ",litros," litros")


fimalgoritmo
