algoritmo "List_Ex_09de15"
// usando leitura apartir do txt
//arquivo "C:\Users\alu201220210\Desktop\ex09.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex09.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
// 9) Escrever um algoritmo que leia 100 números inteiros,
// distribua os números lidos em dois vetores, sendo um para
// números pares e outro para números ímpares. No final do
// algoritmo, escreva os vetores.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var
i,val:inteiro
impar:vetor[1..100] de inteiro
par:vetor[1..100] de inteiro
ci,cp:inteiro

inicio

ci:=0
cp:=0
para i de 1 ate 100 faca //arrumar 10 para 100
   escreva("Informe um valor : ")
   leia(val)
   se (val mod 2 =0)  entao
      cp:=cp+1
      par[cp]:=val
   senao
      ci:=ci+1
      impar[ci]:=val
   fimse
fimpara

Se (ci>0) ENTAO
   para i de 1 ate ci faca
      se(i=1)entao
         escreval("------------------------------------------------------")
         escreval("!!!!!!!!!!!!!!!!VETOR DE NUMEROS IMPARES!!!!!!!!!!!!!!")
         escreval("------------------------------------------------------")
      fimse
      escreval("impar[",i,"]=",impar[i])
   fimpara
Senao
   escreval("------------------------------------------------------")
   escreval("!!!!!!!!!!!VETOR NAO POSSSUI NUMEROS IMPARES!!!!!!!!!!")
   escreval("------------------------------------------------------")
Fimse

Se(cp>0) ENTAO
   para i de 1 ate cp faca
      se(i=1)entao
         escreval("------------------------------------------------------")
         escreval("!!!!!!!!!!!!!!!!VETOR DE NUMEROS PARES!!!!!!!!!!!!!!!!")
         escreval("------------------------------------------------------")
      fimse
      escreval("par[",i,"]=",par[i])
   fimpara
Senao
   escreval("------------------------------------------------------")
   escreval("!!!!!!!!!!!VETOR NAO POSSSUI NUMEROS PARES!!!!!!!!!!")
   escreval("------------------------------------------------------")
Fimse





fimalgoritmo
