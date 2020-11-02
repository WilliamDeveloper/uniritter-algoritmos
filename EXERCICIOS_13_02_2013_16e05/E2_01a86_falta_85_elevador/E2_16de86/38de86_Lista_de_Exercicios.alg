algoritmo "List_Ex_38de86"
//arquivo "C:\Users\WILLIAM\Desktop\38_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//38. Escrever um algoritmo que leia a idade de um eleitor
// e verifique se ele pode ou não votar.
//Se ele puder votar, informe se o seu voto é facultativo.
//Sabe-se que a partir dos 16 até os 18 anos o voto é facultativo,
// assim como para os maiores de 70 anos.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var

idade:inteiro


inicio

escreval("Informe sua idade : ")
leia(idade)

se (idade<16) entao
   escreval("!!!! VOCÊ AINDA NAO TEM IDADE PARA VOTAR !!!!")
senao
   se ((idade>=16) E (idade<=18)) OU (idade>70) entao
      escreval("!!!! VOCÊ JA PODE VOTAR, POREM SEU VOTO É FACULTATIVO !!!!")
   senao
      escreval("!!!! VOCÊ JA PODE VOTAR, SEU VOTO É OBRIGATÓRIO !!!!")
   fimse
fimse




fimalgoritmo
