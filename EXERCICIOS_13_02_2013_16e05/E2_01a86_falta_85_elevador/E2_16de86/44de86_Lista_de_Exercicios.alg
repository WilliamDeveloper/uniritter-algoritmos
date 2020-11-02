algoritmo "List_Ex_44de86"
//arquivo "C:\Users\WILLIAM\Desktop\44_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//44. (Adaptado de Lopes & Garcia, 2002). Sabendo-se que
//somente os municípios com mais de 20.000 eleitores têm
// segundo turno para prefeito, caso o primeiro colocado não tenha
//mais do que 50% dos votos, escrever um algoritmo que leia
//a quantidade de eleitores de um município, o número de
//votos do candidato mais votado e informe se haverá ou não
//segundo turno.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var

qe:inteiro //quantidade de eleitores
nv:inteiro //numero de votos
tam:inteiro //limite de eleitores
p:real //percentual
pst:real //percentual segundo turno

inicio
tam:=20000
pst:=50.00
escreval("Informe a quantidade de eleitores: ")
leia(qe)
escreval("Informe o numero de votos do candidato mais votado: ")
leia(nv)

p:=nv*100/qe

escreval
escreval("O municipio possui",qe," eleitores ")
escreval("O candidato mais votado teve ",p:3:2," % dos votos a seu favor. LOGO : ")
escreval

se (qe>tam) entao
   se(p<=pst) entao
      escreval("!!!! HAVERA SEGUNDO TURNO !!!! ")
   senao
      escreval("!!!! NAO HAVERA SEGUNDO TURNO !!!! ")
   fimse
senao
   escreval("!!!! NAO HAVERA SEGUNDO TURNO !!!! ")
fimse







fimalgoritmo
