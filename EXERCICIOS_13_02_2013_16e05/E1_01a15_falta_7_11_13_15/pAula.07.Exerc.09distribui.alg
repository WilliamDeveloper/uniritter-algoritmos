algoritmo "distribui"
arquivo "C:\Users\alu201220210\Desktop\ex01.txt" // usando leitura apartir do txt
// Fun��o : Algoritmo que l� 100 valores e os distribui em dois vetores, um para pares e outro para �mpares
// Autor : Fernando H. Cardoso
// Data : 26/09/2012
// Se��o de Declara��es 
var
  v : vetor [1..10] de inteiro
  par: vetor [1..10] de inteiro
  impar: vetor [1..10] de inteiro
  i : inteiro
  contP : inteiro
  contI : inteiro
  tam : inteiro
inicio
// Se��o de Comandos 
  tam := 10
  contP := 0
  contI := 0
  
  para i de 1 ate tam faca
    escreva("Informe um valor: ")
    leia(v[i])
  fimPara
  
  para i de 1 ate tam faca
    se (v[i] mod 2) = 0 entao
      contP := contP + 1
      par[contP] := v[i]
    senao
      contI := contI + 1
      impar[contI] := v[i]
    fimSe
  fimPara
  
  Se (contP > 0) entao
    escreval("N�meros pares do vetor")
    
    para i de 1 ate contP faca
      escreval(par[i])
    fimPara
  Senao
    escreval("O vetor n�o possui n�meros pares")
  FimSe
  
  Se (contI > 0) entao
    escreval("N�meros �mpares do vetor")

    para i de 1 ate contI faca
      escreval(impar[i])
    fimPara
  Senao
    escreval("O vetor n�o possui n�meros �mpares")
  FimSe
fimalgoritmo
