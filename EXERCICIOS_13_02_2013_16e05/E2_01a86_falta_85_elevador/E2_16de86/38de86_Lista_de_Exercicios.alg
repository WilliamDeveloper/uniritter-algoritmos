algoritmo "List_Ex_38de86"
//arquivo "C:\Users\WILLIAM\Desktop\38_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//38. Escrever um algoritmo que leia a idade de um eleitor
// e verifique se ele pode ou n�o votar.
//Se ele puder votar, informe se o seu voto � facultativo.
//Sabe-se que a partir dos 16 at� os 18 anos o voto � facultativo,
// assim como para os maiores de 70 anos.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Se��o de Declara��es
var

idade:inteiro


inicio

escreval("Informe sua idade : ")
leia(idade)

se (idade<16) entao
   escreval("!!!! VOC� AINDA NAO TEM IDADE PARA VOTAR !!!!")
senao
   se ((idade>=16) E (idade<=18)) OU (idade>70) entao
      escreval("!!!! VOC� JA PODE VOTAR, POREM SEU VOTO � FACULTATIVO !!!!")
   senao
      escreval("!!!! VOC� JA PODE VOTAR, SEU VOTO � OBRIGAT�RIO !!!!")
   fimse
fimse




fimalgoritmo
