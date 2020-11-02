algoritmo "List_Ex_39de86"
//arquivo "C:\Users\WILLIAM\Desktop\39_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//39. Escrever um algoritmo que lê três valores e encontre
// o maior dos valores lidos. Escrever o maior valor ao final.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var
maior,a,b,c:real

inicio

escreval("Informe um valor para A:")
leia(a)
escreval("Informe um valor para B:")
leia(b)
escreval("Informe um valor para C:")
leia(c)

se (a>b) E (a>b) entao
   maior:=a
senao
   se (b>a) E (b>c) entao
      maior:=b
   senao
      se (c>a) E ( c>b) entao
         maior:=c
      senao
         se (a=b) E (a<c)entao
            maior:=c
         senao
            se (a=b) E (a>c)entao
               maior:=a
            senao
               maior:=b
            fimse
         fimse
      fimse
   fimse
fimse


escreval("O Maior valor dentre os digitados é :",maior)



fimalgoritmo
