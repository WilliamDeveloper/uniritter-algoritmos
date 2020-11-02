algoritmo "List_Ex_73de86"
//arquivo "C:\Users\WILLIAM\Desktop\73_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//73. (Adaptado de Lopes & Garcia, 2002). Num campeonato
//de vôlei inscreveram-se 30 países. Sabendo-se que na
// lista oficial de cada país consta, além de outros dados,
// peso e idade de 12 jogadores, escrever um algoritmo que
// calcule e escreva:
//o peso médio de cada um dos times;
//a idade média de cada um dos times;
//o peso médio de todos os participantes (geral);
//a idade média de todos os participantes (geral).
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var

i,j,pais,idade,jogador:inteiro
peso,pmtd,imtd:real
apeso : vetor [1..30] de real // acumulador peso  pais geral
aidade : vetor [1..30] de real // acumulador idade  pais    geral
somaidade:real
somapeso:real

inicio

pais:=30
jogador:=12

para i de 1 ate pais faca
   escreval("================================")
   para j de 1 ate jogador faca

      escreval
      escreval("------------------------------")
      escreval("Informe o peso do jogador : ")
      leia(peso)
      escreval("Informe a idade do jogador : ")
      leia(idade)
      apeso[i]:=apeso[i]+peso
      aidade[i]:=aidade[i]+idade

      somaidade:=somaidade+idade
      somapeso:=somapeso+peso

   fimpara

fimpara


para i de 1 ate pais faca
   apeso[i]:=apeso[i]/jogador
   aidade[i]:=aidade[i]/jogador

fimpara

escreval
escreval("-------------------------------------------")

para i de 1 ate pais faca
   escreval("O peso medio do time",i," é : ",apeso[i]:3:2)
   escreval("A idade media do time",i," é : ",aidade[i]:3:0)
   escreval("-------------------------------------------")
fimpara

pmtd:=somapeso/(pais*jogador)
imtd:= somaidade/(pais*jogador)


escreval("O peso medio de todos os participantes(geral)",pmtd)
escreval("A idade media de todos os participantes(geral)",imtd)



fimalgoritmo
