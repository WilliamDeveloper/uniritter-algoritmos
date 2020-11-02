algoritmo "List_Ex_76de86"
//arquivo "C:\Users\WILLIAM\Desktop\76_86Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//76. Realizar o teste de mesa do algoritmo abaixo.
//Ao final do teste de mesa, escrever o valor
//final das variáveis A, B e C:
//Algoritmo Teste_de_Mesa
//Variaveis
//Numérico A, B, C, Contador
//Inicio
//A:=1
//B:=2
//C:=3
//Para Contador de 1 ate 3 Faca
//Enquanto (A <> 2)
//B := B+2
//C := C+B+A
//A := A+1
//Fim_Enquanto
//A := 1
//FimPara
//Se (B>5) Então
//B:=0
//Senao
//C:=0
//Fim_Se
//Fim
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações

//76.realizar teste

//a	b	c	cont
//1	2	3	1
//2	4	8	2
//1	6	15	3
//2	8	24	4
//1	0
//2
//1


var

A,B,C,Contador:inteiro

inicio

A:=1
B:=2
C:=3
escreval(a,b,c,contador) //1
Para Contador de 1 ate 3 Faca
   Enquanto (A <> 2)  faca
      escreval(a,b,c,contador)//2
      B := B+2
      escreval(a,b,c,contador)//3
      C := C+B+A
      escreval(a,b,c,contador)//4
      A := A+1
      escreval(a,b,c,contador)//5
   FimEnquanto
   A := 1
   escreval(a,b,c,contador)//6
FimPara
escreval(a,b,c,contador)
Se (B>5) entao
   B:=0
   escreval(a,b,c,contador)
Senao
   C:=0
   escreval(a,b,c,contador)
FimSe

fimalgoritmo
