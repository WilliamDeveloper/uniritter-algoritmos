algoritmo "List_Ex_14de15"
//usando leitura apartir do txt
//arquivo "C:\Users\WILLIAM\Desktop\ex14.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
// 14) Em um concurso público foram aprovados 50 candidatos.
// Escrever um algoritmo que armazene os nomes dos candidatos
// aprovados em um vetor e, num segundo vetor, a nota obtida
// no concurso. Ordenar os vetores de acordo com a nota obtida
// (em ordem decrescente). Escrever os dois vetores no final,
// apresentando os nomes dos candidatos na ordem de chamada
// para ocuparem as vagas disponibilizadas no concurso.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 23/09/2012
// Seção de Declarações
var
nome:vetor[1..50] de caracter
nota:vetor[1..50] de real
i,j:inteiro
tam:inteiro
aux:real
naux:caracter
inicio
tam:=50
para i de 1 ate tam  faca
   escreva("Informe o nome do codidato: ")
   leia(nome[i])
   escreva("Informe a nota do codidato: ")
   leia(nota[i])
fimpara

para i de 1 ate tam-1 faca
   para j de i ate tam faca
      se(nota[i]<nota[j])entao
         aux:=nota[i]
         naux:=nome[i]
         nota[i]:=nota[j]
         nome[i]:=nome[j]
         nota[j]:=aux
         nome[j]:=naux
      fimse
   fimpara
fimpara

escreval("------------------------------------------")
para i de 1 ate tam faca
   escreval(i,"- ",nome[i],", recebeu nota = ",nota[i])
fimpara

fimalgoritmo
