algoritmo "rev_72"
// Função :
// Autor :
// Data : 26/11/2012
// Seção de Declarações 
var
  i : inteiro
  frase : caracter

funcao conta(str : caracter) : inteiro
var
  i, result : inteiro
  espaco : logico
inicio
  result := 1
  espaco := falso
  
  para i de 1 ate compr(str) faca
    Se (copia(str, i, 1) = " ") Entao
      espaco := verdadeiro
    Senao
      Se (espaco = verdadeiro) Entao
        result := result + 1
        espaco := falso
      FimSe
    fimSe
    
  fimPara

  retorne result
fimFuncao

inicio
// Seção de Comandos
  escreva("Informe uma frase: ")
  leia(frase)
  
  escreva("A quantidade de palavras da frase lida é: ", conta(frase))

fimalgoritmo
