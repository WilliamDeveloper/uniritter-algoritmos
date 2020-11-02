//Exemplo 2 elabore uma matriz 3X3 que some as linhas  e conte quantos numeros maiores que 10 o usuario digitoou.

algoritmo "semnome"
// Função :
// Autor :
// Data : 17/10/2012
// Seção de Declarações
var
i,j,cont : inteiro
m: vetor [1..3,1..3] de inteiro
soma:inteiro
mult:inteiro


inicio

i:=0
j:=0
cont:=0
soma:=0
para i de 1 ate 3 faca
   para j de 1 ate 3 faca

      escreval("digite um numero")
      leia(m[i,j])
      se (m[i,j]>10) entao
      cont:= cont + 1
                  fimse
   fimpara
fimpara
para i de 1 ate 3 faca
   para j de 1 ate 3 faca
      se (i=1)ou(i=2)ou(i=3) entao
           soma:= soma + m[i,j]


      fimse
   fimpara
fimpara

escreval(" a soma das linhas",soma)
escreval(" quantos numeros maiors que 10 o usuario digitou?",cont)


// Seção de Comandos
fimalgoritmo
