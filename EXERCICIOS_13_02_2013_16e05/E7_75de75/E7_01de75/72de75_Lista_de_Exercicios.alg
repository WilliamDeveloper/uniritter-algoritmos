algoritmo "List_Ex_72de75"
//arquivo "C:\Users\WILLIAM\Desktop\72_75Exercicio.txt"
//arquivo "C:\Users\WILLIAM\Desktop\ex.txt"
// Função :
// ===================================================
//72. Escreva um módulo que receba como parâmetro um texto
//e retorne o número de palavras deste texto. As palavras do
//texto são separadas por espaço em branco, podendo haver
//um ou mais espaços entre as palavras.
// =====================================================
// Autor : WILLIAM GOULART PACHECO
// Data : 25/11/2012
// Seção de Declarações
var
i : inteiro
frase : caracter

FUNCAO conta(str : caracter) : inteiro
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
FIMFUNCAO

inicio
// Seção de Comandos
escreva("Informe uma frase: ")
leia(frase)

escreva("A quantidade de palavras da frase lida é: ", conta(frase))

fimalgoritmo
