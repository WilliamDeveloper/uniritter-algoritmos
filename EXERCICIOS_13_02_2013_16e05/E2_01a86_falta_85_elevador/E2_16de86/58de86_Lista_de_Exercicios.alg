algoritmo "List_Ex_58de86"
//arquivo "C:\Users\WILLIAM\Desktop\58_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//58. Escrever um algoritmo que lê 10 números quaisquer
//e conte quantos números são negativos e quantos positivos,
// escrevendo a soma no final.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var

cn,cp,i:inteiro
soma,sp,sn,valor:real


inicio

cp:=0
cn:=0
sp:=0
sn:=0

para i de 1 ate 10 faca
   escreval("Informe um valor : ")
   leia(valor)

   se (valor>=0) entao
      cp:=cp+1
      sp:=sp+valor
   senao
      cn:=cn+1
      sn:=sn+valor
   fimse
fimpara

soma:=sp+sn
escreval("dos numero digitados ",cp," sao numeros positivos.")
escreval("dos numero digitados ",cn," sao numeros negativos.")
escreval("A soma destes numero é igual a ",soma)

fimalgoritmo
