algoritmo "List_Ex_07de86"
//arquivo "C:\Users\WILLIAM\Desktop\07_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Fun��o :
// ===================================================
//7. Ler a medida do lado de um quadrado
//a) Calcular seu per�metro e armazen�-lo na vari�vel P
//b) Calcular sua �rea e armazen�-la na vari�vel A
//c) Calcular sua diagonal e armazen�-la na vari�vel D
//d) Imprimir a mensagem "dados do quadrado" e ,
//nas linhas subsequentes ,cada valor calculado(P, A e D)
// com sua respectiva mensagem.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Se��o de Declara��es
var
VALOR,P,A,D:REAL

inicio

ESCREVAL("A MEDIA DO LADO DE UM QUADRADO: ")
LEIA(VALOR)
P:=VALOR*4 //PERIMETRO
A:=VALOR^2 //AREA DE UM QUADRADO
D:=VALOR* EXP(2,1/2) //RAIZ QUADRADA COM FORMULA DA POTENCIACAO

ESCREVAL
ESCREVAL("DADOS DO QUADRADO:")
ESCREVAL
ESCREVAL("PERIMETRO= ",P)
ESCREVAL("AREA DO QUADRADO= ",A)
ESCREVAL("DIAGONAL= ",D)


fimalgoritmo
