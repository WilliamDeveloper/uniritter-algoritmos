algoritmo "List_Ex_20de86"
//arquivo "C:\Users\WILLIAM\Desktop\20_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//20. (Adaptado de Lopes & Garcia, 2002).
//Escrever um algoritmo que calcule o número de
//litros de combustível gastos em uma viagem, sabendo-se que
// o carro faz 12Km com um litro. Deverão ser lidos o tempo
//gasto na viagem e a velocidade média.
//Aplicar as seguintes fórmulas:
//- Distância = tempo X velocidade
//- Litros gastos = Distância / 12
//No final escrever os valores da velocidade média,
//tempo gasto na viagem, distância percorrida e a quantidade
//de litros de combustível utilizada.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
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
escreval("A velocidade media é : ",vm)
escreval("O tempo gasto foi : ",tg)
escreval("A distancia percorrida : ",d)
escreval("A quantidade de litros de combustivel utilizada foi :  ",litros," litros")


fimalgoritmo
