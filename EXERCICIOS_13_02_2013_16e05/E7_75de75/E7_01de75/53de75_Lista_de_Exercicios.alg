algoritmo "List_Ex_53de75"
//arquivo "C:\Users\WILLIAM\Desktop\53_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//53. Construir um algoritmo que cadastre todos os volumes 
//de cada uma das áreas em 3 vetores distintos.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Seção de Declarações
//
// tipo dados=registro
//   codigo:caracter
//   doacao:caracter
//   nomeobra:caracter
//   nomeautor:Caracter
//   editora:caracter
//  fimregistro
//var
//area:dados


var
codigo1,doacao1,nomeobra1,nomeautor1,editora1,area1:vetor[1..10] de caracter
codigo2,doacao2,nomeobra2,nomeautor2,editora2,area2:vetor[1..10] de caracter
codigo3,doacao3,nomeobra3,nomeautor3,editora3,area3:vetor[1..10] de caracter
area,resp:caracter
i,j,k,cont:inteiro


inicio

i:=1
j:=1
k:=1
cont:=0
repita

   repita
      escreval(" Informe a area desejada .:      ")
      escreval(" CIENCIAS / HUMANAS / BIOLOGICAS ")
      leia(area)
   ate (area="CIENCIAS")ou(area="HUMANAS")ou(area="BIOLOGICAS")

   se (area="ciencias") entao
      area1[i]:="CIENCIAS"
      escreva("Informe o Codigo .: ")
      leia(codigo1[i])
      repita
         escreva("Deseja fazer doacao (S/N) .: ")
         leia(doacao1[i])
      ate (doacao1[i]="S")OU(doacao1[i]="N")
      escreva("Informe o nome da Obra .: ")
      leia(nomeobra1[i])
      escreva("Informe o nome do Autor .: ")
      leia(nomeautor1[i])
      escreva("Informe o nome da editora .: ")
      leia(editora1[i])
      i:=i+1
   senao
      se (area="humanas") entao
         area2[j]:="HUMANAS"
         escreva("Informe o Codigo .: ")
         leia(codigo2[j])
         repita
            escreva("Deseja fazer doacao (S/N) .: ")
            leia(doacao2[j])
         ate (doacao2[j]="S")OU(doacao2[j]="N")
         escreva("Informe o nome da Obra .: ")
         leia(nomeobra2[j])
         escreva("Informe o nome do Autor .: ")
         leia(nomeautor2[j])
         escreva("Informe o nome da editora .: ")
         leia(editora2[j])
         j:=j+1
      senao
         se (area="biologicas") entao
            area3[k]:="BIOLOGICAS"
            escreva("Informe o Codigo .: ")
            leia(codigo3[k])
            repita
               escreva("Deseja fazer doacao (S/N) .: ")
               leia(doacao3[k])
            ate (doacao3[k]="S")OU(doacao3[k]="N")
            escreva("Informe o nome da Obra .: ")
            leia(nomeobra3[k])
            escreva("Informe o nome do Autor .: ")
            leia(nomeautor3[k])
            escreva("Informe o nome da editora .: ")
            leia(editora3[k])
            k:=k+1
         fimse
      fimse
   fimse
   repita
      escreva("Deseja Continuar (S/N) .: ")
      leia(resp)
   ate (resp="S")ou(resp="N")

ate (resp="N")OU(i=10)

escreval
escreval("------------------------------------------")
escreval
para cont de 1  ate i-1 faca
   escreval(codigo1[cont])
   escreval(doacao1[cont])
   escreval(nomeobra1[cont])
   escreval(nomeautor1[cont])
   escreval(editora1[cont])
   escreval(area1[cont])
   escreval("------------------------------------------")
fimpara
escreval
para cont de 1  ate j-1 faca
   escreval(codigo2[cont])
   escreval(doacao2[cont])
   escreval(nomeobra2[cont])
   escreval(nomeautor2[cont])
   escreval(editora2[cont])
   escreval(area2[cont])
   escreval("------------------------------------------")
fimpara
escreval
para cont de 1  ate k-1 faca
   escreval(codigo3[cont])
   escreval(doacao3[cont])
   escreval(nomeobra3[cont])
   escreval(nomeautor3[cont])
   escreval(editora3[cont])
   escreval(area3[cont])
   escreval("------------------------------------------")
fimpara


fimalgoritmo
