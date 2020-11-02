algoritmo "List_Ex_48de86"
//arquivo "C:\Users\WILLIAM\Desktop\48_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//48. Escrever um algoritmo que leia 25 valores inteiros,
// positivos, determine o maior valor, o menor valor e calcule
//  a média dos números lidos. Imprimir os resultados.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var

valor,media,maior,acumulador,menor:real
cl,i:inteiro



inicio

cl:=0



para i de 1 ate 25 faca

   repita
      escreval("Informe um valor : ")
      leia(valor)
   ate (valor>0)
   acumulador:=acumulador+valor
   
   se (i=1) entao
      maior:=valor
      menor:=valor
   senao
      se (valor>maior) entao
         maior:=valor
      fimse

      se (valor<menor) entao
         menor:=valor
      fimse
   fimse

   cl:=cl+1
   
fimpara

media:=acumulador/cl

escreval
escreval("O menor valor entre os numeros digitados é : ",menor)
escreval("O maior valor entre os numeros digitados é : ",maior)
escreval("A media dos numeros digitados é : ",media)

fimalgoritmo
