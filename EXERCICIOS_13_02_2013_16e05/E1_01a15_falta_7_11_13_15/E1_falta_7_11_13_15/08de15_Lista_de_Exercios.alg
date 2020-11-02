algoritmo "List_Ex_08de15"
// usando leitura apartir do txt
//arquivo "C:\Users\WILLIAM\Desktop\ex08.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
// 8) Escrever um algoritmo que leia nome e nota de um aluno
// para uma turma de 20 alunos. Ao final, imprima a média das
// notas da turma, o nome do aluno que obteve a nota mais alta
// e o nome do aluno que obteve a nota mais baixa.
// São necessários dois vetores para realizar este exercício.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var
nome:vetor[1..20] de caracter
nota:vetor[1..20] de real
vmai:vetor[1..20] de real
vmei:vetor[1..20] de real
inomema:vetor[1..20] de caracter
inomeme:vetor[1..20] de caracter
i,contalum:inteiro
maior,menor:real
pmenor:caracter
pmaior:caracter
acum:real
media:real
cmaior,cmenor:inteiro
ppmenor:inteiro
ppmaior:inteiro

inicio
cmaior:=0
cmenor:=0
acum:=0
contalum:=0
para i de 1 ate 20 faca
   escreva("Informe o Nome do aluno : ")
   leia(nome[i])
   escreva("Informe a Nota do aluno : ")
   leia(nota[i])
   se(i=1)entao
      maior:=nota[i]
      pmaior:=nome[i]
      menor:=nota[i]
      pmenor:=nome[i]
      ppmenor:=i
      ppmaior:=i
   fimse
   se(nota[i]>maior)entao
      maior:=nota[i]
      pmaior:=nome[i]
      ppmaior:=i
   fimse
   se(nota[i]<menor)entao
      menor:=nota[i]
      pmenor:=nome[i]
      ppmenor:=i
   fimse


   acum:=acum+nota[i]
   contalum:=contalum+1
fimpara
//caso se for igual
para i de 1 ate 20 faca

   se((nota[i]=maior) e (i<>ppmaior))entao
      cmaior:=cmaior+1
      vmai[cmaior]:=nota[i]
      inomema[cmaior]:=nome[i]
   fimse
   se((nota[i]=menor) e (i<>ppmenor))entao
      cmenor:=cmenor+1
      vmei[cmenor]:=nota[i]
      inomeme[cmenor]:=nome[i]
   fimse
fimpara
//calculo
media:=acum/contalum
//resposta
escreval("-----------------------------------------------------")
escreval("A media da turma é: ",media)
//resposta condicionada para MAIOR
escreval("-----------------------------------------------------")
se(cmaior=0)entao
   escreval(pmaior," foi o aluno que recebeu a Maior nota")
senao
   para i de 1 ate cmaior faca
      se(i=1)entao
         escreval("Houve um empate!!!")
         escreval("Mais de um aluno recebeu a Maior Nota e sao :")
         escreval("- ",pmaior)
      fimse
      escreval("- ",inomema[i])
   fimpara
fimse
escreval("-----------------------------------------------------")
//resposta condicionada para Menor
se(cmenor=0)entao
   escreval(pmenor," foi o aluno que recebeu a Menor nota")
senao
   para i de 1 ate cmenor faca
      se(i=1)entao
         escreval("Houve um empate!!!")
         escreval("Mais de um aluno recebeu a Menor Nota e sao :")
         escreval("- ",pmenor)
      fimse
      escreval("- ",inomeme[i])
   fimpara
fimse

fimalgoritmo
