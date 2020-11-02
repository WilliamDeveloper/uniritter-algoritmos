algoritmo "bolha"
// Função : Ler 1000 valores inteiros, ordená-los de forma crescente e imprimir o vetor ordenado
// Autor : Fernando H. Cardoso
// Data : 24/09/2012
// Seção de Declarações 
var
  vet : vetor[1..1000] de inteiro
  i : inteiro
  j : inteiro
  aux : inteiro
  tam : inteiro
inicio
// Seção de Comandos
  tam <- 1000

  para i de 1 ate tam faca
    escreva("Informe um valor inteiro: ")
    leia (vet[i])
  fimPara
  
  para i de 1 ate tam-1 faca
    para j de i ate tam faca
      se (vet[i] > vet[j]) entao
        aux <- vet[i]
        vet[i] <- vet[j]
        vet[j] <- aux
      fimSe
    fimPara
  fimPara
  
  para i de 1 ate tam faca
    escreval(vet[i])
  fimPara
fimalgoritmo
