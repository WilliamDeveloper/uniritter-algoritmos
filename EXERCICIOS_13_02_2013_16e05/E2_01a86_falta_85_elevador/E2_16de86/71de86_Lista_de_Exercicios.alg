algoritmo "List_Ex_71de86"
//arquivo "C:\Users\WILLIAM\Desktop\71_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//71. Uma rainha requisitou os servi�os de um monge e informou
// que pagaria qualquer pre�o. O monge, necessitando de alimentos,
// solicitou que o pagamento fosse efetuado em gr�os de
//trigo, dispostos num tabuleiro de xadrez, de tal forma que
// o primeiro quadro contivesse apenas 1 gr�o e, cada quadro
//subseq�ente, o dobro de gr�os do quadro anterior. Escrever
//um algoritmo que calcule o n�mero de gr�os que o monge esperava
//receber (adaptado de Forbellone; Ebersp�cher, 2000).
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Se��o de Declara��es
//18.446.744.073.709.551.615 de gr�os de trigo
var

// DEVIDO A UM PADRAO OS NUMEROS EXTENSOS SAO AREDONDADOS..
// SEGUE A MESMA EXPLICACAO PARA EXCEL..
// support.microsoft.com/kb/269370/pt-br


xadrez:real
i,tam:inteiro
trigo:real

inicio

xadrez:=0
tam:=64
trigo:=1

escreval
escreval("==================================")
escreval("!!!!!!!! GERANDO RESPOSTA !!!!!!!!")
escreval("==================================")
escreval
para i de 1 ate tam faca
   se (i=1) entao
      trigo:=exp(trigo,0)
   senao
      trigo:=trigo*2
   fimse

   xadrez:=xadrez+trigo
   escreval("O quadro de xadrez[",i,"] possui ",trigo:20," Graos de Trigo")

fimpara
escreval
escreval("No total a rainha pagara ",xadrez:20," graos ao monge")

fimalgoritmo
