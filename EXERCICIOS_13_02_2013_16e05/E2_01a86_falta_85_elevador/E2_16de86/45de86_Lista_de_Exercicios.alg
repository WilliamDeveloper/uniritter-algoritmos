algoritmo "List_Ex_45de86"
//arquivo "C:\Users\WILLIAM\Desktop\45_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//45. Escrever um algoritmo que lê 10 valores, um de cada vez,
//e conta quantos deles estão em cada um dos
//intervalos: [0..25],(25..50],(50..75],(75..100].
//No final imprima estes resultados com a mensagem adequada.
// (O colchete significa intervalo fechado e os
//parênteses, intervalo aberto).
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var

valor:real
ca,cb,cc,cd,ce,i:inteiro

inicio

ca:=0
cb:=0
cc:=0
cd:=0
ce:=0
para i de 1 ate 10 faca
   escreval("Informe um Valor : ")
   leia(valor)

   se (valor>=0)E(valor<=25) entao
      ca:=ca+1
   senao
      se (valor>25)E(valor<=50) entao
         cb:=cb+1
      senao
         se (valor>50)E(valor<=75) entao
            cc:=cc+1
         senao
            se (valor>75)E(valor<=100) entao
               cd:=cd+1
            senao
               ce:=ce+1
            fimse
         fimse
      fimse
   fimse
fimpara


escreval("Foi encontrado",ca," Valores em no Intervalo[0..25]")
escreval("Foi encontrado",cb," Valores em no Intervalo(25..50]")
escreval("Foi encontrado",cc," Valores em no Intervalo)(50..75]")
escreval("Foi encontrado",cd," Valores em no Intervalo(75..100]")
escreval("Foi encontrado",ce," Valores fora do Intervalo de [0..100]")


fimescolha



fimalgoritmo
