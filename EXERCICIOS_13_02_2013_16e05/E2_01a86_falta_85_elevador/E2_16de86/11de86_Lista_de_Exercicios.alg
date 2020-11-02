algoritmo "List_Ex_11de86"
//arquivo "C:\Users\WILLIAM\Desktop\11_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//11. Escrever um algoritmo que calcule o valor de venda
//de um tipo de carro popular sabendose que esse custo inclui
// o custo de compra, os 20% de lucro, o percentual de impostos
//(45%) mais 8% relacionados à publicidade de lançamento.
//Imprimir o custo final.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var
CC,CF,V1,V2,V3:REAL
TL,TI,TP:REAL

inicio
TL:=0.20 //TAXA LUCRO
TI:=0.45 //TAXA IMPOSTO
TP:=0.08  //TAXA DE PUBLICIDADE DE LANCAMENTO

ESCREVAL("INFORME O PREÇO DE CUSTO DO CARRO : ")
LEIA(CC)

V1:= CC*TL
V2:=CC*TI
V3:=CC*TP
CF:=CC+V1+V2+V3

ESCREVAL("O CUSTO FINAL é: ",CF)

fimalgoritmo
