algoritmo "Exerc_02"
// Função :
// Autor :
// Data : 18/09/2012
// Seção de Declarações 
var
  n : vetor [1..20] de inteiro
  i : inteiro
  aux : inteiro
inicio
// Seção de Comandos

  Para i de 1 ate 20 faca
    escreva("Informe um número: ")
    leia(n[i])
  FimPara

  Para i de 1 ate 10 faca
    aux <- n[i]
    n[i] <- n[21-i]
    n[21-i] <- aux
  FimPara
  
  Para i de 1 ate 20 faca
    escreval("N[",i,"] = ", n[i])
  FimPara
fimalgoritmo
