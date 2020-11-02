algoritmo "Votacao"
// Função :
// Autor :
// Data : 13/10/2012
// Seção de Declarações
var

voto : inteiro
cand1, cand2, cand3, cand4, nulo, branco : inteiro
total : inteiro

inicio

cand1  := 0
cand2  := 0
cand3  := 0
cand4  := 0
nulo   := 0
branco := 0

Repita
   Escreval("1 - Candidato 1")
   Escreval("2 - Candidato 2")
   Escreval("3 - Candidato 3")
   Escreval("4 - Candidato 4")
   Escreval("5 - Nulo")
   Escreval("6 - Branco")
   Escreval("0 - Sair")

   Repita
      Escreval("Informe seu voto: ")
      Leia(voto)
   Ate (voto >= 0) E (voto <= 6)

   Escolha (voto)
   caso 1
      cand1  := cand1  + 1
   caso 2
      cand2  := cand2  + 1
   caso 3
      cand3  := cand3  + 1
   caso 4
      cand4  := cand4  + 1
   caso 5
      nulo   := nulo   + 1
   caso 6
      branco := branco + 1
   FimEscolha

Ate (voto = 0)

total:= (cand1 + cand2 + cand3 + cand4 + nulo + branco)

Escreval("Candidato 1: ", cand1, " votos - " , cand1/total*100, "%")
Escreval("Candidato 2: ", cand2, " votos - " , cand2/total*100, "%")
Escreval("Candidato 3: ", cand3, " votos - " , cand3/total*100, "%")
Escreval("Candidato 4: ", cand4, " votos - " , cand4/total*100, "%")
Escreval("Votos Nulo : ", nulo,  " votos - " , nulo/total*100, "%")
Escreval("Voto Branco: ", branco, " votos - ", branco/total*100, "%")





fimalgoritmo
