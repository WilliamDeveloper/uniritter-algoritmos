algoritmo "List_Ex_37de86"
//arquivo "C:\Users\WILLIAM\Desktop\37_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//37. Elaborar um algoritmo que, dada a idade de um nadador, classifique-o em uma das
//seguintes categorias (Berg; Figueiró, 1998, p. 57):
//Infantil A: 5-7 anos
//Infantil B: 8-10 anos
//Juvenil A: 11-13 anos
//Juvenil B: 14-17 anos
//Adulto: Maiores de 18 anos
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var

idade:inteiro

inicio

escreval("Informe Sua idade : ")
leia(idade)

enquanto (idade<0) faca
   escreval
   escreval("!!! IDADE INVALIDA !!!!!")
   escreval("Informe Sua idade : ")
   leia(idade)
fimenquanto

se ( idade>=0) E (idade<5 ) entao
   escreval("Você ainda não tem idade para ser um nadador!!..")
senao
   se ( idade>=5) E (idade<=7 ) entao
      escreval("Infantil A: 5-7 anos. ")
   senao
      se ( idade>=8) E (idade<=10 ) entao
         escreval("Infantil B: 8-10 anos. ")
      senao
         se ( idade>=11) E (idade<=13 ) entao
            escreval("Juvenil A: 11-13 anos. ")
         senao
            se ( idade>=14) E (idade<=17 ) entao
               escreval("Juvenil B: 14-17 anos. ")
            senao
               escreval("Adulto: Maiores de 18 anos. ")
            fimse
         fimse
      fimse
   fimse
fimse









fimalgoritmo
