algoritmo "List_Ex_86de86"
//arquivo "C:\Users\WILLIAM\Desktop\86_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//86. Foi feita uma pesquisa entre os habitantes de uma regi�o.
// Foram coletados os dados de idade, sexo (M/F) e sal�rio.
//Fazer um algoritmo que informe:
//a) a m�dia de sal�rio do grupo;
//b) maior e menor idade do grupo;
//c) quantidade de mulheres com sal�rio at� R$100,00.
//Encerrar a entrada de dados quando for digitada uma idade negativa
//(Berg; Figueir�, 1998, p. 85).
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Se��o de Declara��es
var

idade:inteiro
sexo:caracter
salario:real
soma:real
cont:inteiro
media:real
maior:real
menor:real
cf:inteiro

inicio

cont:=0
media:=0
cf:=0



repita

   escreval
   escreval("---------------------------")
   escreva("Informe a idade : ")
   leia(idade)
   
   se (idade>=0) entao
      escreva("Informe o sexo (M/F) : ")
      leia(sexo)
      escreva("Informe o salario : ")
      leia(salario)
      soma:=soma+salario
      cont:=cont+1

      se (salario<=100.00)E(sexo="F") entao
         cf:=cf+1
      fimse

      se (cont=1) entao
         maior:=idade
         menor:=idade
      senao
         se (idade>maior) entao
            maior:=idade
         fimse
         se (idade<menor) entao
            menor:=idade
         fimse
      fimse

   fimse

ate (idade<0)

media:=soma/cont

escreval
escreval("-----------------------")
escreval("A media de salario do grupo : ",media)
escreval("A maior idade do grupo � ",maior," .")
escreval("A menor idade do grupo � ",menor," .")
escreval("quantidade de mulheres com salario at� R$ 100,00 � ",cf," .")




fimalgoritmo
