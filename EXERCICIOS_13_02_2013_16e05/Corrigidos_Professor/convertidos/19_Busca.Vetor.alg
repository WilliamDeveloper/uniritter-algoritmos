algoritmo "busca_vetor"
// Função :
// Autor : Fernando H. Cardoso
// Data : 24/09/2012
// Seção de Declarações 
var
  vet : vetor[1..1000] de inteiro
  i : inteiro
  cont : inteiro
  nro : inteiro
  tam : inteiro
  achou : logico
inicio
// Seção de Comandos
  tam <- 1000

  para i de 1 ate tam faca
    escreva("Informe um valor inteiro: ")
    leia (vet[i])
  fimPara
  
  escreva("Informe o valor a ser buscado: ")
  leia (nro)
  
  cont <- 1
  achou <- falso
  
  enquanto achou = falso OU cont <= tam faca
    Se (vet[cont] = nro) Entao
      achou = verdadeiro
    Senao
      cont <- cont + 1
    FimSe
  fimEnquanto
  
  Se achou = verdadeiro
    Escreva ("O número ", nro, " encontra-se na posicao ", cont);
  Senao
    Escreva ("O número ", nro, " não foi encontrado no vetor");
  FimSe
  
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
