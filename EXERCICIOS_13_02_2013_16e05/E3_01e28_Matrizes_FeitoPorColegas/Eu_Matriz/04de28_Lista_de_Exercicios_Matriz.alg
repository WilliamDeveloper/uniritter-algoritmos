algoritmo "List_Ex_04de28"
//arquivo "C:\Users\WILLIAM\Desktop\04_28Exercicio.txt"
// Função :
// Autor : WILLIAM GOULART
// Data : 22/10/2012
// Seção de Declarações
//4. Faça programa que leia uma matriz 2x2 e a mesma receba do usuário a sua
//idade, compare os valores digitados com os valores mínimos para os
//brinquedos e conte quantos usuários estão aptos para os seguintes
//brinquedos:
//• roda gigante = idade mínima 10
//• carrossel = idade mínima 6
//• pedalinho = idade mínima 8
var
m : vetor[1..2,1..2] de real
i,j,rod,car,ped:inteiro
inicio
rod:=0
car:=0
ped:=0

para i de 1 ate 2 faca
   para j de 1 ate 2 faca
      escreva("Informe sua idade : ")
      leia(m[i,j])

      Se m[i,j] >= 10 Entao
         rod:= rod + 1
      senao
         se (m[i,j] >= 6) e (m[i,j] < 8) Entao
            car:= car + 1
         senao
            se (m[i,j] >= 8) e (m[i,j] < 10) Entao
               ped:= ped + 1
            fimse
         fimse
      FimSe
   fimpara
fimpara



escreval("O numero de usuarios que tem idade para andar na roda gigante: ", rod)
escreval("O numero de usuarios que tem idade para andar no carrocel: ", car)
escreval("O numero de usuarios que tem idade para andar no pedalinho: ", ped)
fimalgoritmo
