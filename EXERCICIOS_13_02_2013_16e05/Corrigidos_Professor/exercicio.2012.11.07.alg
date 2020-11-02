algoritmo "Modulo"
// Função :
// Autor :
// Data : 07/11/2012
// Seção de Declarações 
var
  r, num, expo : inteiro

funcao raizQuad(numero : inteiro) : inteiro
var
  i, raiz : inteiro
inicio
  raiz <- -1
  
  para i de 1 ate numero faca
    Se (i * i) = numero entao
      raiz <- i;
    FimSe
  fimPara
  
  retorne raiz
fimFuncao

procedimento converteHora(segundo : inteiro)
var
  hora, min, seg : inteiro
Inicio
  seg <- segundo
  hora <- segundo div 3600
  segundo <- segundo mod 3600
  min <- segundo div 60
  segundo <- segundo mod 60
  
  escreva(seg, "s equivale(m) a ", hora, " hora(s), ", min, " minuto(s) e ", segundo, " segundos.")
fimProcedimento

funcao calculaExp(base, expoente: inteiro) : inteiro
var
  i, expo : inteiro
Inicio
  expo <- base
  
  para i de 1 ate expoente-1 faca
    expo <- expo * base
  fimPara
  
  retorne expo
fimFuncao

procedimento modulo(numero: inteiro)
var
  modu : inteiro
inicio
  Se numero < 0 entao
    modu <- numero * -1
  senao
    modu <- numero
  FimSe
  
  Escreval("O modulo de ", numero, " é: ", modu)
fimProcedimento

funcao fatorial(numero: inteiro) : inteiro
var
  acum, i : inteiro
inicio
  acum := 1
  
  para i de 1 ate numero faca
    acum := acum * i
  fimPara
  
  retorne acum
fimFuncao

funcao fat(numero : inteiro) : inteiro
var
  result : inteiro
inicio
  se (numero = 0) entao
    result := 1
  senao
    result := numero * fat(numero-1)
  fimSe
  
  retorne result
fimFuncao

inicio
// Seção de Comandos
  escreva("Informe um número: ")
  leia(num)
  
  r <- fat(num)
  escreval("O fatorial de ", num, " é: ", r)
  
  escreva("Informe um número: ")
  leia(num)
  
  modulo(num)
  
  escreva("Informe um número: ")
  leia(num)
  escreva("Informe um expoente: ")
  leia(expo)
  
  r <- calculaExp(num, expo)
  
  escreval(num, " elevado na ", expo, "a. potencia e: ", r)
 
  escreva("Informe um número: ")
  leia(num)
  
  r <- raizQuad(num)
  
  Se (r <> -1) Entao
    escreval("A raiz quadrada de ", num, " é: ", r)
  senao
    escreval(num, " nao possui raiz quadrada inteira!")
  FimSe
  
  escreva("Informe uma quantidade de segundos: ")
  leia(num)
  converteHora(num)
  
fimalgoritmo
