algoritmo "List_Ex_11de15"
//arquivo "C:\Users\WILLIAM\Desktop\ex11.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex9.txt"
// Função :
// ===================================================
// 11) Escrever um algoritmo que leia 2 vetores X(10) e Y(10) e os escreva.
// Criar, a seguir:
// - um vetor contendo a união de X com Y (todos os elementos de X e os
// elementos de Y que não estejam em X);
// - um vetor contendo a diferença entre X e Y (todos os elementos
// de X que não existam em Y);
// - um vetor contendo o produto entre X e Y (multiplicação de
// cada elemento de X com o elemento de mesma posição em Y);
// - um vetor contendo a intersecção entre X e Y (valores que
// aparecem nos dois vetores).
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var
x:vetor[1..10] de inteiro
y:vetor[1..10] de inteiro
u:vetor[1..20] de inteiro
d:vetor[1..10] de inteiro
p:vetor[1..10] de inteiro
intersec:vetor[1..10] de inteiro
i,j,k,cr,df,contx,conty:inteiro
ci:inteiro
jatem:inteiro
tam:inteiro

inicio
TAM:=10
ci:=0
contx:=0
conty:=0
k:=0
cr:=0
ci:=0
df:=0

//leitura do vetor x
para i de 1 ate TAM faca
   escreva("Informe um valor para x[",i,"]: ")
   leia(x[i])
   contx:=contx+1
fimpara

//leitura do vetor y
para i de 1 ate TAM faca
   escreva("Informe um valor para y[",i,"]: ")
   leia(y[i])
   conty:=conty+1
fimpara

//união de X com Y  (contanto que y nao estejam em X)
para i de 1 ate TAM faca
   u[i]:=x[i]
   k:=k+1
fimpara

para i de 1 ate TAM faca
   para j de 1 ate TAM faca
      se(j=1)entao
         cr:=0
      fimse
      se ( y[i]=x[j] ) entao
         cr:=cr+1
      fimse
      se (j=tam) E (cr=0) entao
         k:=k+1
         u[k]:=y[i]
      fimse
   fimpara
fimpara

//diferença entre X e Y(todos os elementos x que nao existam em y)
para i de 1 ate tam faca
   para j de 1 ate tam faca
      se(j=1)entao
         cr:=0
      fimse
      se (x[i]=y[j]) entao
         cr:=cr+1
      fimse
      se (j=tam) E (cr=0) entao
         df:=df+1
         d[df]:=x[i]-y[i]
      fimse
   fimpara
fimpara

//produto de x e y(multiplicar elementos de mesma posicao)
para i de 1 ate TAM faca
   p[i]:=x[i]*y[i]
fimpara

//interseccao de x e y(valores que aparecem nos dois)
para i de 1 ate TAM faca
   para j de 1 ate TAM faca

      se ( x[i]=y[j]) entao
         ci:=ci+1
         intersec[ci]:=x[i]
      fimse


   fimpara
fimpara


//respostas
para i de 1 ate k faca
   se (i=1)entao
      escreval("-------------------------------------------------------")
      escreval("!!!!!!!!!!!!!!!!!!!GERANDO VETOR u!!!!!!!!!!!!!!!!!!!!!")
      escreval("-------------------------------------------------------")
   fimse
   escreval(" u[",i,"]= ",u[i])
fimpara

//respostas
para i de 1 ate df faca
   se (i=1)entao
      escreval("-------------------------------------------------------")
      escreval("!!!!!!!!!!!!!!!!!!!GERANDO VETOR d!!!!!!!!!!!!!!!!!!!!!")
      escreval("-------------------------------------------------------")
   fimse
   escreval(" d[",i,"]= ",d[i])
fimpara

//respostas
para i de 1 ate TAM faca
   se (i=1)entao
      escreval("-------------------------------------------------------")
      escreval("!!!!!!!!!!!!!!!!!!!GERANDO VETOR p!!!!!!!!!!!!!!!!!!!!!")
      escreval("-------------------------------------------------------")
   fimse
   escreval("p[",i,"]= ",p[i])
fimpara

//respostas
para i de 1 ate ci faca
   se (i=1)entao
      escreval("-------------------------------------------------------")
      escreval("!!!!!!!!!!!!!!!GERANDO VETOR intersec!!!!!!!!!!!!!!!!!!")
      escreval("-------------------------------------------------------")
   fimse
   escreval("intersec[",i,"]= ",intersec[i])
fimpara


fimalgoritmo
