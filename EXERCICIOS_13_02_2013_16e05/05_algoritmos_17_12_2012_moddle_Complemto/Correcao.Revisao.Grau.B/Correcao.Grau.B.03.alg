algoritmo "rev_gb_3"
// Função :
// Autor :
// Data : 26/11/2012
// Seção de Declarações 
var
  nro, i, j, iPar, iImpar : inteiro
  vPar : vetor [1..5] de inteiro
  vImpar : vetor [1..5] de inteiro
inicio
// Seção de Comandos 
  iPar := 1
  iImpar := 1
  para i de 1 ate 30 faca
    escreva("Informe um valor diferente de zero: ")
    leia(nro)
    
    Se (nro mod 2) = 0 Entao
      Se (iPar = 6) Entao
        para j de 1 ate 5 faca
          escreval("vPar[", j, "] = ", vPar[j])
          vPar[j] := 0
        fimPara
        
        iPar := 1
      FimSe
      
      vPar[iPar] := nro
      iPar := iPar + 1
    Senao
      Se (iImpar = 6) Entao
        para j de 1 ate 5 faca
          escreval("vImpar[", j, "] = ", vImpar[j])
          vImpar[j] := 0
        fimPara

        iImpar := 1
      FimSe
    
      vImpar[iImpar] := nro
      iImpar := iImpar + 1
    FimSe
  fimPara
  
  para j de 1 ate 5 faca
    Se (vPar[j] <> 0) Entao
      escreval("vPar[", j, "] = ", vPar[j])
    FimSe
  fimPara
  
  para j de 1 ate 5 faca
    Se (vImpar[j] <> 0) Entao
      escreval("vImpar[", j, "] = ", vImpar[j])
    FimSe
  fimPara
fimalgoritmo
